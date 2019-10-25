all: $(patsubst examples/%.scss,examples/%.css,$(wildcard examples/*.scss))

examples/%.css: examples/%.scss *.scss
	sassc -t compressed -I . $< $@
