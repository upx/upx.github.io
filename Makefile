# minify 2.12.8 - https://github.com/tdewolff/minify

MINIFY = minify-2.12.8

all: css/cayman-upx-min.css
all: css/fonts-min.css
all: css/modern-normalize-min.css
all: css/normalize-min.css

css/%-min.css: css/%.css $(MAKEFILE_LIST)
	$(MINIFY) -o $@ $<

clean: .PHONY ; rm -f css/*-min.css

.PHONY: PHONY
