# NAME

Test::CleanNamespaces - Check for uncleaned imports

# VERSION

version 0.04

# SYNOPSIS

    use strict;
    use warnings;
    use Test::CleanNamespaces;

    all_namespaces_clean;

# DESCRIPTION

This module lets you check your module's namespaces for imported functions you
might have forgotten to remove with [namespace::autoclean](http://search.cpan.org/perldoc?namespace::autoclean) or
[namespace::clean](http://search.cpan.org/perldoc?namespace::clean) and are therefor available to be called as methods, which
usually isn't want you want.

# FUNCTIONS

All functions are exported by default.

## namespaces\_clean

    namespaces_clean('YourModule', 'AnotherModule');

Tests every specified namespace for uncleaned imports. If the module couldn't
be loaded it will be skipped.

## all\_namespaces\_clean

    all_namespaces_clean;

Runs `namespaces_clean` for all modules in your distribution.

# METHODS

The exported functions are constructed using the the following methods. This is
what you want to override if you're subclassing this module..

## build\_namespaces\_clean

    my $coderef = Test::CleanNamespaces->build_namespaces_clean;

Returns a coderef that will be exported as `namespaces_clean`.

## build\_all\_namespaces\_clean

    my $coderef = Test::CleanNamespaces->build_namespaces_clean;

Returns a coderef that will be exported as `all_namespaces_clean`. It will use
the `find_modules` method to get the list of modules to check.

## find\_modules

    my @modules = Test::CleanNamespaces->find_modules;

Returns a list of modules in the current distribution. It'll search in
`blib/`, if it exists. `lib/` will be searched otherwise.

## builder

    my $builder = Test::CleanNamespaces->builder;

Returns the `Test::Builder` used by the test functions.

# AUTHOR

Florian Ragwitz <rafl@debian.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
