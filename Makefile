# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=-a
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

.PHONY: html gh-pages

html: Makefile
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" "$(SPHINXOPTS)" 
	if [ ! -e docs ] ; then mkdir docs ; fi


publish: html
	git checkout gh-pages
	rm -rf docs
	cp build/html docs -r
	touch docs/.nojekyll
	git add docs
	git commit -am "Update docs"
	git push && git checkout main
