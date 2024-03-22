recipes.html:
	for d in */.; do \
		$(MAKE) recipe.html -C $$d; \
	done