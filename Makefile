.PHONY: dist

VERSION=$(shell git describe --tags --abbrev=0)

dist:
	pyinstaller -y  --clean --add-binary ./diff-highlight:. openshift-diff
	GZIP=-9 tar -C dist -zcvf openshift-diff-${VERSION}-linux-x86_64.tar.gz openshift-diff

