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
	echo "Build html documenation."
	@git submodule update ipasuite
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" "$(SPHINXOPTS)" 
	@if [ ! -e docs ] ; then mkdir docs ; fi


publish: html
	echo "Publish html documentation online."
	@git checkout gh-pages
	@rm -rf docs
	cp build/html docs -r
	touch docs/.nojekyll
	@git add docs
	@if ! ( git commit -m "Update docs" && git push ) ; then echo "Publishing failed." ; fi
	@git checkout main
