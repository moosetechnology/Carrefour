# Carrefour

[![Moose version](https://img.shields.io/badge/Moose-11-%23aac9ff.svg)](https://github.com/moosetechnology/Moose)
[![CI](https://github.com/moosetechnology/Carrefour/actions/workflows/test-moose11.yml/badge.svg?branch=v4)](https://github.com/moosetechnology/Carrefour/actions/workflows/test-moose11.yml)
[![Coverage Status](https://coveralls.io/repos/github/moosetechnology/Carrefour/badge.svg?branch=v5)](https://coveralls.io/github/moosetechnology/Carrefour?branch=v5)

Binding between Famix and FAST

## Installation

The last stable version is

```st
Metacello new
  githubUser: 'moosetechnology' project: 'Carrefour' commitish: 'v5' path: 'src';
  baseline: 'Carrefour';
  load
```

## Developers

### Update tests

To update the tests, you will need to rerun [VerveineJ](https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ
) on the testing resources.
This command should produce the .mse file.

```sh
cd testing
& 'D:\Path\To\VerveineJ\verveinej.bat' -format json -o testing.json -anchor assoc -autocp './src' './src'
```
