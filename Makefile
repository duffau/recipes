index.html:
	pandoc index.md -o .index.html --css ./static/simple.css --standalone


recipes.html:
	$(MAKE) recipe.html -C ./ragu-bianco
