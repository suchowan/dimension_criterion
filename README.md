# When Should a Quantity Have Its Own Dimension?

### Uniqueness of Natural Units as a Design Criterion

Takashi Suga — independent researcher, Japan

For a specified kind of quantity, a pure number identifies the quantity without
a separately communicated reference convention only when the kind possesses a
**unique natural unit** — a focal point on which independent parties would
converge without prior communication. If it has one, an independent dimension is
optional (C1). Where two or more comparably natural candidates exist, a distinct
dimension is recommended (C2): it makes distinctions between kinds testable
within equations (D), while the choice between units of the same kind is still
recorded by unit labels or named, dimensioned constants — the displaced
candidates of the system (N).

The criterion adjudicates the amount of substance, the plane and solid angles,
and the baseless logarithm within a single framework. The paper proposes **no
change to the SI**; it examines the Universal Unit System (UUS) / Harmonic
System, which made the opposite design choice, as an existence proof.

| | |
|---|---|
| **The paper — English (canonical)** | [manuscript.pdf](manuscript.pdf) |
| **The paper — Japanese translation (日本語版)** | [manuscript_ja.md](manuscript_ja.md) |
| Sources and build scripts | [`src/`](src/) |
| Figures | [`fig/`](fig/) |

The English version is canonical; where the two differ, the English governs.

## Citing

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22991635.svg)](https://doi.org/10.5281/zenodo.22991635)

## Building

```sh
cd src
./build.sh          # → build/paper.docx   (English; convert to PDF in Word)
./build_ja_md.sh    # → ../manuscript_ja.md (Japanese, GitHub-facing)
```

`build.sh` translates the `<sub>`/`<sup>` markup into pandoc's native syntax —
pandoc's docx writer silently drops raw HTML, which would lose every subscript.
`build_ja_md.sh` performs the reverse kind of adaptation for GitHub: explicit
`<img width>` in place of pandoc's `{width=}` attribute, and captions as
visible paragraphs rather than alt text.

## License

CC BY 4.0 — © 2026 Takashi Suga (須賀 隆)

