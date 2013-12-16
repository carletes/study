all: init
	cabal build --jobs

check: all
	cabal test

bench: all
	cabal bench

init:
	cabal sandbox init
	cabal install \
		--only-dependencies \
		--enable-tests \
		--enable-benchmarks \
		--jobs
	cabal configure \
		--enable-tests \
		--enable-benchmarks

clean:
	-git clean -dfx
