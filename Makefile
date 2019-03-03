default: release

release:
	swift build -c release
	mkdir -p bin
	cp .build/release/Flock bin/

build:
	swift build
	mkdir -p bin
	cp .build/debug/flock bin/

clean:
	swift package clean
	rm -rf .build
	rm -rf bin
	rm -rf Packages