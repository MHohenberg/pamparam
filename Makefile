emacs ?= emacs
BEMACS = $(emacs) -batch -l elpa.el

all: test

test:
	$(BEMACS) -batch -l targets/compile.el -l pamparam.el -l pam-test.el -f ert-run-tests-batch-and-exit

compile:
	$(BEMACS) -batch -l targets/compile.el

plain:
	$(emacs) --version
	$(emacs) -Q -l elpa.el -l pamparam.el doc/sets/capitals/capitals.org

update:
	$(emacs) -batch -l targets/install-deps.el

clean:
	rm -f *.elc

.PHONY: all compile clean test
