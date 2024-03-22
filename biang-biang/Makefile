.PHONY:recipe.pdf

recipe.pdf:
	pandoc --bibliography=refs.bib recipe.md -o recipe.pdf


recipe.html:
	pandoc recipe.md -o .recipe.html --css ../static/simple.css --standalone
