.PHONY: dist

dist:
	pyinstaller -y  --clean --add-binary ./diff-highlight:. openshift-diff
	GZIP=-9 tar -C dist -zcvf openshift-diff-v1.0.1-linux-x86_64.tar.gz openshift-diff

