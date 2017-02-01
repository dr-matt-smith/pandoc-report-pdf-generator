OUTPUT_DIR = ./_OUTPUT_WEBSITE

CSSDIR  = $(OUTPUT_DIR)/css
CSSFILE = $(CSSDIR)/main.css

all:  $(OUTPUT_DIR) $(addprefix $(OUTPUT_DIR)/, $(addsuffix .html, $(basename $(wildcard *.md))))

$(OUTPUT_DIR)/%.html: %.md
	pandoc -s -f markdown -t html5 --template "_layout" -c "css/main.css" -o "$@" "$<"

