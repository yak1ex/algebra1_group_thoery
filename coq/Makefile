COQMFFLAGS := -Q . GROUP  -arg "-w -omega-is-deprecated,-implicit-core-hint-db"

ALLVFILES := group21.v group23.v group24.v group25.v group26.v group28.v EnsembleFun.v Cardinal.v CycleGroup.v

all: build proofs.svg

build: Makefile.coq
	$(MAKE) -f Makefile.coq

clean::
	if [ -e Makefile.coq ]; then $(MAKE) -f Makefile.coq cleanall; fi
	$(RM) $(wildcard Makefile.coq Makefile.coq.conf) 

Makefile.coq:
	coq_makefile $(COQMFFLAGS) -o Makefile.coq $(ALLVFILES)

-include Makefile.coq

.PHONY: build clean

proofs.svg: proofs.dot
	dot -T svg $^ > $@
