ASSETS_FOLDER := assets

make:
	envsubst < $(ASSETS_FOLDER)/header.md > $(EJ)/$(EJ).md.header
	cd $(EJ) && cat $(EJ).md.header "$(EJ).md" | pandoc --template="../$(ASSETS_FOLDER)/eisvogel.tex" --listings -o "$(EJ).pdf"
	rm $(EJ)/$(EJ).md.header

latex:
	envsubst < $(ASSETS_FOLDER)/header.md > $(EJ)/$(EJ).md.header
	cd $(EJ) && cat $(EJ).md.header "$(EJ).md" | pandoc --template="../$(ASSETS_FOLDER)/eisvogel.tex" --listings -o "$(EJ).pdf"
	rm $(EJ)/$(EJ).md.header

all:
	cd $(ASSETS_FOLDER) && bash all.sh

new:
	mkdir $(EJ)
	cat $(ASSETS_FOLDER)/template.md > $(EJ)/$(EJ).md

book:
	cd $(ASSETS_FOLDER) && bash merge.sh