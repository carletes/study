all: init
	cabal build --jobs

check: all
	cabal test

doc: init
	cabal haddock \
		--all \
		--hyperlink-source

bench: all
	cabal bench

init:
	cabal sandbox init
	cabal install \
		--only-dependencies \
		--enable-tests \
		--enable-benchmarks \
		--enable-documentation \
		--jobs
	cabal configure \
		--enable-tests \
		--enable-benchmarks

clean:
	-git clean -dfx
