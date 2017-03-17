# clean-css 4.0.9 -- https://github.com/jakubpawlowicz/clean-css
#   npm install clean-css-cli

CLEANCSS ?= $(HOME)/code/nodejs/node_modules/clean-css-cli/bin/cleancss
CLEANCSS_FLAGS += --skip-advanced
#CLEANCSS_FLAGS += --keep-line-breaks

ifneq ($(wildcard $(CLEANCSS)),)

all: css/normalize-min.css
all: css/cayman-upx-min.css

css/%-min.css: css/%.css $(MAKEFILE_LIST)
	$(CLEANCSS) $(CLEANCSS_FLAGS) -o $@ $<

clean:: ; rm -f css/*-min.css

endif
