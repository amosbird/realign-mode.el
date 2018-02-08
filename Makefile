CASK = cask
EMACS = emacs
CASKEMACS = $(CASK) exec $(EMACS)

LOAD = -l realign-mode.el

all: compile

cask:
	$(shell EMACS=$(EMACS) $(CASK))

compile:
	$(CASKEMACS) -Q $(LOAD) realign-mode.el

clean:
	rm -f *.elc
