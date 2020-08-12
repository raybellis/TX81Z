F9DASM	= f9dasm
A09	= a09
TARGETS = lo.out hi.out

all:	${TARGETS}

lo.out:	lo.asm
	$(A09) -B${@} -L ${<}
	md5 ${@}
	@echo "MD5 (expect) = fae5fb25c93bf465beb0e34b2042d65b"

hi.out:	hi.asm
	$(A09) -B${@} -L ${<}
	md5 ${@}
	@echo "MD5 (expect) = b25437df98ea86d82648537eedef7538"

clean:
	$(RM) ${TARGETS} ${TARGETS:.out=.lst}
