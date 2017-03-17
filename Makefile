# clean-css 4.0.9 -- https://github.com/jakubpawlowicz/clean-css-cli
#   npm install clean-css-cli

CLEANCSS ?= $(HOME)/code/nodejs/node_modules/clean-css-cli/bin/cleancss
CLEANCSS_FLAGS += -O1
CLEANCSS_FLAGS += --compatibility ie7

ifneq ($(wildcard $(CLEANCSS)),)

all: css/normalize-min.css
all: css/cayman-upx-min.css

css/%-min.css: css/%.css $(MAKEFILE_LIST)
	$(CLEANCSS) $(CLEANCSS_FLAGS) -o $@ $<

clean:: ; rm -f css/*-min.css

endif
