ASSETS_FOLDER := assets

all:
	cd $(EJ) && pandoc --template="../$(ASSETS_FOLDER)/eisvogel.tex" "$(EJ).md" -o "$(EJ).pdf"

latex:
	cd $(EJ) && pandoc --template="../$(ASSETS_FOLDER)/eisvogel.tex" "$(EJ).md" -o "$(EJ).tex"

new:
	mkdir $(EJ)
	ASSETS_FOLDER=$(ASSETS_FOLDER) envsubst < $(ASSETS_FOLDER)/template.md > $(EJ)/$(EJ).md

book:
	