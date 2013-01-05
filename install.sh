#!/bin/bash

pushd `brew --prefix`
git stash
git pull http://github.com/reid/homebrew.git
brew install mspdebug llvm-msp430
git stash pop
popd

open MSP430LPCDC\ 1.0.3b.pkg

# Now you're ready

mspdebug --usb-list
