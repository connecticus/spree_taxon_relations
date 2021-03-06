SpreeTaxonRelations
===================

Adds ability to copy products between Taxons.

Installation
------------

Add spree_taxon_relations to your Gemfile:

```ruby
gem 'spree_taxon_relations', github: 'webgradus/spree_taxon_relations'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rake spree_taxon_relations:install:migrations
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_taxon_relations/factories'
```

Copyright (c) 2013 [name of extension creator], released under the New BSD License
