#!/bin/sh
# Build the GitHub-facing Japanese edition:  ../manuscript_ja.md
#   merges meta_ja.yaml + manuscript_ja.md + references_ja.md and rewrites
#   the parts that pandoc-flavoured Markdown and GitHub disagree about.
#   usage (from src/):  ./build_ja_md.sh
set -e
OUT=../manuscript_ja.md

# --- 0. metadata ----------------------------------------------------------
#     read from meta_ja.yaml so the name and date live in exactly one place
TITLE=$(sed -n 's/^title: *"\(.*\)"/\1/p'    meta_ja.yaml)
SUB=$(  sed -n 's/^subtitle: *"\(.*\)"/\1/p' meta_ja.yaml)
NAME=$( sed -n 's/^author: *"\([^^]*\)\^\[.*/\1/p' meta_ja.yaml)
DATE=$( sed -n 's/^date: *"\(.*\)"/\1/p'     meta_ja.yaml)

# --- 1. title block -------------------------------------------------------
#     GitHub renders YAML front matter as a table, so emit plain Markdown.
cat > "$OUT" <<HEAD
# $TITLE

## $SUB

$NAME — 独立研究者、日本
E-mail: suchowan@box.email.ne.jp
$DATE

> 本稿は英語版 *When Should a Quantity Have Its Own Dimension? — Uniqueness of
> Natural Units as a Design Criterion* (v1.0) の日本語版である。相違がある場合は
> 英語版を正本とする。→ [manuscript.pdf](manuscript.pdf)

---

HEAD

# --- 1b. table of contents ----------------------------------------------
#     toc_ja.md is generated with github-slugger (GitHub's own slug rule:
#     it strips 、。—— and the like, lowercases, and turns spaces into
#     hyphens — not reproducible in sh), so it is kept as a committed file.
#     The consistency check below fails loudly if the headings drift from it.
HEADINGS=$(grep -cE '^(##|###) ' manuscript_ja.md)
HEADINGS=$((HEADINGS - 1 + 1))          # less the subtitle, plus 参照文献
TOCLINKS=$(grep -cE '^ *- \[' toc_ja.md)
if [ "$HEADINGS" -ne "$TOCLINKS" ]; then
  echo "build_ja_md.sh: toc_ja.md is out of date" >&2
  echo "  headings in sources: $HEADINGS / entries in toc_ja.md: $TOCLINKS" >&2
  echo "  regenerate it before building (see README)" >&2
  exit 1
fi
cat toc_ja.md >> "$OUT"
printf '\n---\n\n' >> "$OUT"

# --- 2. body --------------------------------------------------------------
#     (a) drop the title/subtitle headings supplied above
#     (b) ![cap](../fig/X.png) → <img width> + a caption paragraph, and
#         ../fig/ → fig/ because the output sits one level up from src/
#         (GitHub ignores {width=} and never displays alt text)
#     (c) (a)/(b)/(c) sub-labels → (1)/(2)/(3): some fonts ligate "(c)" into ©
sed -e '1{/^# /d;}' -e '2{/^## /d;}' manuscript_ja.md \
  | sed -E 's#^!\[\*\*(図 [0-9]+\.)\*\* ([^]]*)\]\((\.\./)?fig/([^)]*)\)#<img src="fig/\4" width="480">\n\n***\1** \2*#' \
  | sed -e 's#^\*\*(a) #**(1) #' \
        -e 's#^\*\*(b) #**(2) #' \
        -e 's#^\*\*(c) #**(3) #' \
        -e 's#6\.1(c)#6.1(3)#g' \
  >> "$OUT"

# --- 3. references --------------------------------------------------------
printf '\n---\n\n' >> "$OUT"
sed -n '/^## 参照文献$/,$p' references_ja.md >> "$OUT"

echo "built: $OUT"
