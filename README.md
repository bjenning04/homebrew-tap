# Homebrew Options Tap

This repository contains Homebrew (AKA, Brew) “formulae” that includes all options, which Homebrew project maintainers [removed][] as of Homebrew version 2.0.

For the moment, this repository consists of a single formula: FFmpeg

## Installation

If the formula has already been installed from homebrew-core, you will first need to uninstall it:

    brew uninstall ffmpeg

Then install via:

    brew tap bjenning04/tap
    brew tap-pin bjenning04/tap
    brew install ffmpeg

Alternatively, you can install the formula by naming it explicitly:

    brew install bjenning04/tap/ffmpeg


[removed]: https://github.com/Homebrew/homebrew-core/issues/31510
