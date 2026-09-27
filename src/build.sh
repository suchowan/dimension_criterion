#!/bin/sh
# Build the canonical .docx from the Markdown sources.
#   usage: ./build.sh   →  build/paper.docx
set -e
mkdir -p build

# 1. body: drop the title/subtitle headings (metadata supplies them),
#    then translate HTML sub/sup into pandoc's native syntax.
sed -e '1{/^# When Should a Quantity/d;}' \
    -e '/^## Uniqueness of Natural Units as a Design Criterion$/d' manuscript.md \
  | sed -E 's#<sub>([^<>]*)</sub>#~\1~#g; s#<sup>([^<>]*)</sup>#^\1^#g' \
  > build/body.md

# 2. references: keep only from the "## References" heading onward,
#    and drop the working "Figures" appendix.
sed -n '/^## References$/,/^## Figures/p' references.md \
  | sed '/^---$/d; /^## Figures/,$d' \
  | sed -E 's#<sub>([^<>]*)</sub>#~\1~#g; s#<sup>([^<>]*)</sup>#^\1^#g' \
  > build/refs.md

cat meta.yaml build/body.md build/refs.md > build/paper.md
# reference.docx tightens the spacing of the Title/Subtitle/Author/Date styles
# so that the whole Abstract fits on page 1 — the adjustment that used to be made
# by hand in Word after every build.  Absence of the file is an error, not a
# silent fall-back to pandoc's defaults.
pandoc build/paper.md -o build/paper.docx --reference-doc=reference.docx
echo "built: build/paper.docx"
