.PHONY: build
OUT:=./build
SRC:=./src
build:
	rm -rf $(OUT)
	mkdir -p $(OUT)
	protoc\
	 --plugin='protoc-gen-ts=./node_modules/.bin/protoc-gen-ts'\
	 --js_out=import_style=commonjs,binary:$(OUT)\
	 --ts_out=$(OUT)\
	 --proto_path=$(SRC)\
	 $(SRC)/*.proto

