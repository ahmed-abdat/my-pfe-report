# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a French Master's thesis (PFE - Projet de Fin d'Études) in LaTeX for the Master EEA program at Faculté des Sciences de Bizerte. The thesis focuses on "Système de Détection d'Anomalies pour Moteurs Industriels basé sur l'Intelligence Artificielle Embarquée" - implementing TinyML on ESP32 for industrial motor anomaly detection.

## Build Commands

```bash
# Complete compilation with bibliography (use for final builds)
make all

# Quick compilation without bibliography (use during writing)
make quick

# Clean auxiliary files
make clean

# View the generated PDF
make view

# Get document statistics
make stats

# Final output: rapport_pfe_abdat_ahmed.pdf
```

## Document Architecture

### Core Structure
- **main.tex**: Master document with all package configurations and custom commands
- **chapitres/**: Modular chapter files (introduction, 3 chapters, conclusion)
- **annexes/**: Technical appendices (source code, specifications)
- **bibliographie.bib**: IEEEtran-style bibliography with 44+ references
- **images/**: All figures, diagrams, and technical illustrations

### LaTeX Configuration
- Document class: `book`, 12pt, A4, oneside
- Language: French (babel)
- Key packages: hyperref, listings (C++ highlighting), tikz, pgfplots, booktabs
- Custom colors: FSB Blue (#013875)
- Professional chapter styling with colored boxes

## Writing Standards

### French Academic Conventions
- Use "nous" form consistently
- Maintain formal register throughout
- French technical terms preferred (e.g., "apprentissage automatique" not "machine learning")
- Citations: Author-year format with page numbers for quotes
- Explicit section transitions required

### Chapter Pattern
Each chapter must follow:
1. Context introduction with industry relevance
2. Literature-backed theoretical foundation
3. Detailed technical methodology
4. Experimental validation with metrics
5. Synthesis and transition

### Technical Content Presentation
- Code blocks: Use `\lstlisting` with C++ language setting
- Figures: Always center, use 0.8\textwidth, provide descriptive captions
- Tables: Use booktabs package, include units, align decimals
- Equations: Number all important formulas, define all variables

## Key Technical Details

### Performance Targets (Chapter 2)
- Latency: <10ms
- Cost: <50€
- Accuracy: >90%
- Battery life: >100 hours

### Achieved Results (Chapter 3)
- Accuracy: 92.5%
- Latency: 4.5ms
- Total cost: 47.50€
- Battery life: 105 hours
- Installation time: 20 minutes

### Bibliography Requirements
- Prioritize recent sources (2020-2025)
- Include ISO/IEEE standards for technical credibility
- Balance academic papers with industry reports
- Always include DOI when available

## Development Workflow

### Making Changes
1. Edit chapter files in `chapitres/` directory
2. Update bibliography.bib for new references
3. Run `make quick` for rapid preview
4. Run `make all` before final submission
5. Use `make clean` to resolve compilation issues

### Adding Content
- New chapters: Create in `chapitres/`, include in main.tex
- Figures: Place in `images/`, use meaningful names
- Code: Use separate listings for >20 lines
- Tables: Consider landscape orientation for wide tables

## Critical Conventions

### Figure/Table Labeling
- Figures: `fig:chapter_description` (e.g., fig:conception_architecture)
- Tables: `tab:chapter_description` (e.g., tab:resultats_performance)
- Equations: `eq:chapter_description`
- Sections: `sec:chapter_title`

### Citation Style
```latex
% Single author
\cite{Author2024}

% Multiple sources
\cite{Author2023, Another2024}

% With page number
\cite[p.~45]{Author2024}
```

### Cross-References
```latex
% Always use:
Figure~\ref{fig:label}
Tableau~\ref{tab:label}
Section~\ref{sec:label}
Chapitre~\ref{chap:label}
```

## Quality Checklist

Before compilation:
- [ ] All citations have bibliography entries
- [ ] All figures/tables are referenced in text
- [ ] French spelling and grammar verified
- [ ] Technical terms consistently used
- [ ] Code listings properly formatted
- [ ] Page margins maintained (2.5cm)

## Specific File Purposes

- **introduction.tex**: Industry 4.0 context, SME challenges, thesis structure
- **chapitre1_etat_art.tex**: Maintenance evolution, vibration analysis, TinyML concepts
- **chapitre2_conception.tex**: System architecture, K-means algorithm, ESP32 optimization
- **chapitre3_realisation.tex**: Implementation, experimental validation at FSB lab
- **conclusion.tex**: Contributions summary, limitations, perspectives
- **code_source.tex**: Complete C++ implementation for ESP32
- **fiches_techniques.tex**: Component specifications, BOM, schematics

## Important Context

This thesis demonstrates the first documented K-means TinyML implementation for industrial vibration analysis, achieving 99% cost reduction compared to commercial solutions while maintaining >90% accuracy. The experimental validation was conducted on a Leroy Somer motor at FSB laboratory facilities.

The project successfully addresses the gap between Industry 4.0 capabilities and SME accessibility, providing a democratized predictive maintenance solution requiring no cloud connectivity and minimal technical expertise for deployment.