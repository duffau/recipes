index.html:
	pandoc index.md -o .index.html --css ./static/simple.css --standalone


recipes.html:
	for d in */.; do \
		if [ "$$d" != "static/." ]; then \
			$(MAKE) recipe.html -C $$d; \
		fi; \
	done
