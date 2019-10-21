all: $(patsubst examples/%/style.scss,examples/%/compiled.css,$(wildcard examples/*/style.scss))

examples/%/compiled.css: examples/%/style.scss *.scss
	sassc -t compressed -I . $< $@
