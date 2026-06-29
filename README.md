# LELEC2330 — Intrinsic Properties of Semiconductors (I)

Open lecture notes for **LELEC2330 – Opto-electronic and Power Devices**
(master in electrical engineering, UCLouvain).
Author: **Prof. Laurent A. Francis**, UCLouvain (ICTEAM).

These notes are a written, prose companion to the lecture slides on the
*intrinsic properties of semiconductors*: crystal structure, the quantum
description of a single electron, and the emergence of energy bands — tied
throughout to two guiding devices, the **solar cell** and the **LED**.

## Contents

- [`notes/LELEC2330_Intrinsic_Properties_I.md`](notes/LELEC2330_Intrinsic_Properties_I.md)
  — the full notes, organised in four parts:
  0. Introduction — electrons, the periodic table, and silicon
  1. Crystalline structures
  2. Quantum description of a single particle (Schrödinger equation)
  3. Band structure (dispersion *E*(*k*), Brillouin zones, direct vs. indirect gap)

  A quick-reference **equation sheet** and a **glossary** close the document.

## Reading the notes

The notes are written in **Markdown with LaTeX math**. GitHub renders the
equations natively in the web view — just open the `.md` file. For a local
PDF, any Markdown engine with math support works, e.g.:

```bash
pandoc notes/LELEC2330_Intrinsic_Properties_I.md -o notes.pdf --pdf-engine=xelatex
```

## Scope and a note on figures

To keep the repository clean of third-party copyright, **no textbook figures
or slide images are included**. Bibliographic pointers (Neamen; Böer & Pohl)
are given in the text so readers can consult the original sources.

## References

- D. A. Neamen, *Semiconductor Physics and Devices: Basic Principles*, 4th ed.,
  McGraw-Hill, 2012. ISBN 978-0-07-352958-5.
- K. W. Böer & U. W. Pohl, *Semiconductor Physics*, Springer, 2018.
  https://doi.org/10.1007/978-3-319-69150-3

## License

© Laurent A. Francis, UCLouvain. Released under
[**CC BY-SA 4.0**](LICENSE) — share and adapt with attribution, under the same
license. Third-party figures and images are excluded and remain under their
respective copyrights.

If you reuse these notes, please cite:
*L. A. Francis, “LELEC2330 — Intrinsic Properties of Semiconductors (I): Lecture
Notes”, UCLouvain, 2025.*
