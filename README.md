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
- Binder with two main steps involved:
  1. Generate the FAST model of a Famix entity (eg. a FamixMethod) with  `#getFASTModel`
  2. Bind the nodes in the FAST model to entities in the Famix model with `bindFASTModel:`

### Carrefour meta-model

Represents relations between Famix entities and FAST entities.

The relations are typically between:
- FamixMethod and FASTBehaviouralEntity
- FamixStructuralEntity and FASTVariableDeclarator, FASTExpression, or FASTAssignement
- FamixInvocation and FASTFunctionCall or FASTMessageSend
Note: *class names are only indicative, they do not really exist in any Famix or FAST meta-model*

### Generating the FAST model

Done by a *language dependent* parser.
Each concerned FamixEntity should know how to do it by implementing `#getFASTModel`.
For example in Java, this method is implemented by `FamixJavaMethod` and all the main "structured types" (`FamixJavaClass`, `FamixJavaEnum`, `FamixJavaException`). 

### Binding

Done by visiting the FAST model (an AST) and looking for corresponding Famix entities to each FAST entity.
It is implemented in `bindFASTModel:`

## Developers

### Update tests

To update the tests, you will need to rerun [VerveineJ](https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ
) on the testing resources.
This command should produce the .mse file.

```sh
cd testing
& 'D:\Path\To\VerveineJ\verveinej.bat' -format json -o testing.json -anchor assoc -autocp './src' './src'
```
