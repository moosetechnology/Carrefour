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

## Use

Carrefour links entities in a FAST model to entities in a Famix model.
It is composed of 2 parts:
- Carrefour meta-model
- Binder

Steps:
1. Generate the FAST model of a Famix entity (eg. a FamixMethod)
2. Bind the nodes in the FAST model to entities in the Famix model with method `#bindFASTModel`

### Carrefour meta-model

Does not do much, "import" entities from *language dependent* Famix meta-model and *language dependent* FAST meta-model and adds relations between them.

### Generating the FAST model

Done by a *language dependent* parser.
Each FamixEntity should know how to do it by implementing `#getFASTModel`

### Binding

Done by visiting the FAST model (an AST).
Again needs a *language dependent* visitor.

For Java, there are 2 methods:
- `#bindFastModel:fromFamixMethodEntity:` that visit root *method* of the FAST model
- `#bindFastModel:fromFamixClassEntity:` that visit root *class* of the FAST model


## Developers

### Update tests

To update the tests, you will need to rerun [VerveineJ](https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ
) on the testing resources.
This command should produce the .mse file.

```sh
cd testing
& 'D:\Path\To\VerveineJ\verveinej.bat' -format json -o testing.json -anchor assoc -autocp './src' './src'
```
