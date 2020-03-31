##
# Makefile for Verilog using Icarus
#
# @author Rafael Lima
##

###############################################################################
# Variables
###############################################################################

# Compiler Options
CC := iverilog
CC_FLAGS :=

# Files
SRC := $(wildcard src/*.v)
OBJ := $(SRC:.v=.vvp)

###############################################################################
# Rules
###############################################################################

# Compile all verilog source
.PHONY: ALL
ALL: $(OBJ)

# Compile and Generate simulation file
src/%.vvp: src/%.v
	$(CC) -o $@ $<

# Print help for all commands
.PHONY: help
help:
	@echo "Use: make [OPTION]\n\nOPTIONS"
	@sed Makefile -n -e "N;s/^# \(.*\)\n.PHONY:\(.*\)/ \2:\1/p;D" | column -ts:
	@echo ""

# Remove Generated Files
.PHONY: clear
clean:
	rm -vrf $(OBJ)


