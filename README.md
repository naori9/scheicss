# scheicss

A CSS preprocessor in Guile Scheme

## What?
We've all found ourselves arbitrarily deciding that it would be rather cool to
be able to create procedurally generated CSS stylesheets in Lisp. So: 

Scheicss allows you to write CSS in Scheme (Guile), so you (maybe)
never have to touch actual CSS again :D

## Why?
Having decided to create a website ([www.aoikoi.com](https://www.aoikoi.com)),
I proceeded to then not do that, and instead waste several hours
of my life researching the best ways to create static webpages, before deciding
to waste a few more writing a CSS preprocessor for scheme :)

## Usage
- Include `scheicss.scm` in the source file '`(include "/path/to/scheicss.scm")`
- Use `generate-css` to create a string, or use `write-style` to write to a file.
`generate-css` takes zero or more strings, whereas `write-style` takes
the file name as the first parameter, followed by zero or more strings
- See Examples for syntax
- See [mess](mess) for scripts used to generate the generator

### Examples
See [example.scm](example.scm), which generates [example.css](example.css)

## Features
### Supported:
- HTML tags
- CSS attributes
- IDs
- Classes
- Pseudo-elements
- Pseudo-classes

### Not supported
- `part()`
- `slotted()`
- pseudo-class functions, such as `not()`
- selectors
- combinators
- at-rules, such as `@media`

Although unsupported, they can still all be used with `make-element`, or by passing
strings of CSS in (though at that point you're literally just writing CSS)

## Comparison

### Similar preprocessors
- [clay](http://fvisser.nl/clay/): A CSS preprocessor in Haskell. Clay has way more polish and features. On the other hand, scheicss has Lisp and a cooler name. 
- [css-lite](https://github.com/paddymul/css-lite): Similar kind of thing with Common Lisp. Uses optional arguments instead of defining every possible tag and property as functions (because what kind of psychopath would choose to do that?)

### Other preprocessors
- [less](https://lesscss.org/)
- [sass](https://sass-lang.com/)
- [stylus](https://stylus-lang.com/)
- [postcss](https://postcss.org/)

### Practical benefits over CSS
- TBD