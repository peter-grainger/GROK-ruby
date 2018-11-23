# GROK-ruby

Incremental hands on learning of ruby from zero knowledge to dangerous.

Use the lessons and code together, it's the easiest way to concrete your knowledge.  Most of the code found in the lessons are in this repo.  This page is also a website hosted at <https://grok.now.sh> and a repo hosted at <https://github.com/peter-grainger/GROK-ruby>.  Checkout the code and follow along, hack about with the examples break the test, fix them again and try the challenges.

The lessons also have links to other sites that give more insight.  All sections have a `tl;dr` section.

## Lessons

- [Objects and variables](./objects-variables)
- [Classes](./classes)
- [Exceptions](./exceptions)
- [Flow control](./flow-control)
- [Iterators and blocks](./iterators-blocks)
- [Methods](./methods)
- [More on Blocks](./blocks)

## Run the examples

Run any of the examples by using the keyword `ruby` followed by the file name.  e.g.

```shell
ruby examples/variables.rb
```

## Prerequisites

- Ruby v2.5+
- Bundler

## Getting Started

Clone this repository

```bash
git clone git@github.com:peter-grainger/GROK-ruby.git
```

Change directory into folder

```bash
cd GROK-ruby
```

Install gem dependencies

```bash
bundle install --binstubs
```

## Contributing

If you want to add an example or correct something in the docs then you might want to build the html files to see if it works correctly.

To build the html files install the `code_in_docs` gem run the build script

WARNING: this will also deploy to now.sh make sure you don't put anything in there that you want to keep secret.

```bash
gem install code_in_docs
./build-docs.sh
```