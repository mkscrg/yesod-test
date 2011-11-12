yesod-test
==========

A bare bones yesod app for performance testing. Stolen almost verbatim from
<https://github.com/yesodweb/benchmarks/blob/master/pong/yesod.hs>.

Test by building and running `yesod-test`:

    cabal-dev install && cabal-dev/bin/yesod-test

and calling `httperf`:

    httperf --hog --num-conns 1000 --num-calls 1000 --port 3000 --server localhost

Results
-------

yesod-core-0.9.3.3, warp-0.4.5, GHC 7.2.1, (MacBookPro8,2, 2.3GHz i7, 8GB RAM) -- 1309 req/s
