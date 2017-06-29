.PHONY: buildpack
buildpack:
	./make-buildpack.sh

.PHONY: clean
clean:
	rm opa
	rm *.zip
