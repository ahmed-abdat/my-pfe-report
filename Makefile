# Makefile pour compilation du rapport PFE LaTeX
# Ahmed Abdellahi Abdat - Master EEA - FSB 2024-2025

# Nom du document principal (sans extension)
MAIN = main

# Compilateur LaTeX
LATEX = pdflatex
BIBTEX = bibtex

# Options de compilation
LATEX_OPTIONS = -interaction=nonstopmode -file-line-error

# Fichiers sources
TEX_FILES = $(wildcard *.tex) $(wildcard chapitres/*.tex) $(wildcard annexes/*.tex)
BIB_FILES = bibliographie.bib

# Fichier de sortie
OUTPUT = rapport_pfe_abdat_ahmed
OUTPUT_PDF = $(OUTPUT).pdf

# Règle par défaut
all: $(OUTPUT_PDF)

# Compilation complète avec bibliographie
$(OUTPUT_PDF): $(TEX_FILES) $(BIB_FILES)
	@echo "Première compilation LaTeX..."
	$(LATEX) $(LATEX_OPTIONS) -jobname=$(OUTPUT) $(MAIN).tex
	@echo "Génération de la bibliographie..."
	-$(BIBTEX) $(OUTPUT)
	@echo "Deuxième compilation LaTeX..."
	$(LATEX) $(LATEX_OPTIONS) -jobname=$(OUTPUT) $(MAIN).tex
	@echo "Troisième compilation LaTeX (références croisées)..."
	$(LATEX) $(LATEX_OPTIONS) -jobname=$(OUTPUT) $(MAIN).tex
	@echo "Compilation terminée ! Fichier généré : $(OUTPUT_PDF)"

# Compilation rapide (sans bibliographie)
quick:
	@echo "Compilation rapide..."
	$(LATEX) $(LATEX_OPTIONS) -jobname=$(OUTPUT) $(MAIN).tex
	@echo "Compilation rapide terminée ! Fichier généré : $(OUTPUT_PDF)"

# Nettoyage des fichiers temporaires
clean:
	@echo "Nettoyage des fichiers temporaires..."
	@rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.synctex.gz *.mtc* *.maf
	@rm -f chapitres/*.aux annexes/*.aux
	@rm -f $(MAIN).pdf $(OUTPUT).aux $(OUTPUT).log $(OUTPUT).out $(OUTPUT).toc
	@echo "Nettoyage terminé."

# Nettoyage complet (y compris le PDF final)
cleanall: clean
	@echo "Suppression du PDF final..."
	@rm -f $(OUTPUT_PDF)
	@echo "Nettoyage complet terminé."

# Visualisation du PDF
view: $(OUTPUT_PDF)
	@echo "Ouverture du PDF..."
	@xdg-open $(OUTPUT_PDF) 2>/dev/null || open $(OUTPUT_PDF) 2>/dev/null || echo "Impossible d'ouvrir le PDF automatiquement"

# Vérification de la structure
check:
	@echo "Vérification de la structure du projet..."
	@echo "Fichiers TEX trouvés :"
	@ls -la *.tex chapitres/*.tex annexes/*.tex 2>/dev/null || echo "Certains fichiers manquent"
	@echo ""
	@echo "Fichier BIB :"
	@ls -la $(BIB_FILES) 2>/dev/null || echo "Fichier bibliographie manquant"
	@echo ""
	@echo "Répertoire images :"
	@ls -la images/ 2>/dev/null || echo "Répertoire images manquant"

# Statistiques du document
stats: $(OUTPUT_PDF)
	@echo "Statistiques du document :"
	@echo -n "Nombre de pages : "
	@pdfinfo $(OUTPUT_PDF) | grep Pages | sed 's/[^0-9]*//'
	@echo -n "Nombre de mots (approximatif) : "
	@pdftotext $(OUTPUT_PDF) - | wc -w
	@echo -n "Taille du fichier : "
	@du -h $(OUTPUT_PDF) | cut -f1

# Aide
help:
	@echo "Utilisation du Makefile :"
	@echo "  make          - Compilation complète avec bibliographie"
	@echo "  make quick    - Compilation rapide sans bibliographie"
	@echo "  make clean    - Nettoyage des fichiers temporaires"
	@echo "  make cleanall - Nettoyage complet (y compris PDF)"
	@echo "  make view     - Ouvrir le PDF généré"
	@echo "  make check    - Vérifier la structure du projet"
	@echo "  make stats    - Afficher les statistiques du document"
	@echo "  make help     - Afficher cette aide"

.PHONY: all quick clean cleanall view check stats help