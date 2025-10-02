# Repository Guidelines

## Project Structure & Module Organization

- Main entrypoint: `main.tex`. Final PDF: `rapport_pfe_abdat_ahmed.pdf`.
- Chapters: `chapitres/*.tex` (e.g., `introduction.tex`, `chapitre1_etat_art.tex`, `chapitre2_conception.tex`, `chapitre3_realisation.tex`, `conclusion.tex`).
- Annexes: `annexes/*.tex` (e.g., `code_source.tex`, `fiches_techniques.tex`).
- Figures: `images/` (subfolders allowed). Reference with `\includegraphics{images/...}`.
- Bibliography: `bibliographie.bib`.
- Automation: `Makefile`. Context aids: `.claude/agents/`, `pfe-context/` (not included in the final PDF).

## Build, Test, and Development Commands

- `make` or `make all` — full build with BibTeX; outputs `rapport_pfe_abdat_ahmed.pdf`.
- `make quick` — fast single pass (no bibliography).
- `make view` — open the generated PDF.
- `make clean` / `make cleanall` — remove intermediates / remove also the final PDF.
- `make check` — list key sources and assets to verify structure.
- `make stats` — page and word count (requires `pdfinfo` and `pdftotext`).
  Prerequisites: TeX Live/MiKTeX, `pdflatex`, `bibtex`, and `make`.

## Coding Style & Naming Conventions

- Indent 2 spaces; no tabs. Keep lines ≤ 100 chars.
- Labels: `sec:`, `fig:`, `tab:`, `eq:` (e.g., `\label{fig:esp32-arch}`).
- Citations: `\cite{key}` with lowercase, hyphenated keys in `bibliographie.bib`.
- Images: lowercase-hyphen names under `images/` (e.g., `images/conception/system-arch.png`).
- Use `\ref{}`/`\autoref{}`; avoid hard-coded numbers. Comments start with `% TODO:` or `% NOTE:`.

## Testing Guidelines

- Build must succeed with `make` and have no unresolved warnings (undefined references/citations, severe over/underfull boxes).
- Verify figure paths are relative and files exist under `images/`.
- Use `make stats` to detect unintended page-count shifts.

## Commit & Pull Request Guidelines

- Use Conventional Commits: `feat:`, `fix:`, `docs:`, `refactor:`, `chore:`.
- Keep commits focused per chapter/section; prefer small, reviewable diffs.
- PRs must include: clear summary, impacted files (e.g., `chapitres/...`), screenshots of layout changes when relevant, and a short build log snippet (last lines of `make`).

## Assets & Binary Policy

- Do not commit intermediates; `.gitignore` covers LaTeX artifacts. Only commit `rapport_pfe_abdat_ahmed.pdf` for releases.
- Large binaries in `pfe-context/` are not tracked; avoid referencing them in LaTeX.
