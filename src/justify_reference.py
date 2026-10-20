#!/usr/bin/env python3
"""justify_reference.py -- make the body paragraphs of a pandoc reference.docx justified

usage: python3 justify_reference.py reference.docx [out.docx] [--hyphenate]

Sets the alignment of the paragraph styles pandoc uses for running text to
"justify" (両端揃え). Headings, captions, tables and the title block are left
as they are. --hyphenate also turns on Word's automatic hyphenation, which
keeps justified English lines from opening wide gaps (Japanese is unaffected).
"""
import sys
from docx import Document
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.oxml.ns import qn
from docx.oxml import OxmlElement

STYLES = ["Body Text", "First Paragraph", "Compact", "Block Text",
          "Footnote Text", "Abstract", "Bibliography"]

def main(argv):
    args = [a for a in argv if not a.startswith("--")]
    if not args:
        print(__doc__); return 1
    src = args[0]; out = args[1] if len(args) > 1 else src
    doc = Document(src)
    names = {s.name for s in doc.styles}
    done = []
    for name in STYLES:
        if name in names:
            doc.styles[name].paragraph_format.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
            done.append(name)
    if "--hyphenate" in argv:
        st = doc.settings.element
        for el in st.findall(qn("w:autoHyphenation")):
            st.remove(el)
        h = OxmlElement("w:autoHyphenation"); h.set(qn("w:val"), "true")
        st.insert(0, h)
    doc.save(out)
    print("justified:", ", ".join(done), "->", out)
    return 0

if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
