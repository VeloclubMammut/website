HUGO_VERSION := 0.88.1
DOCKER := docker
all:
	$(DOCKER) run --rm -ti -v $(CURDIR):/site -w /site -p 1313:1313 philipbalinov/hugo-docker:$(HUGO_VERSION) server --bind=0.0.0.0 -w -v --logLevel=debug -b http://localhost:1313 -DEF | grep --color -iE '(WARN|ERR)'

