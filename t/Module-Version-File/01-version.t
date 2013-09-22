# Pragmas.
use strict;
use warnings;

# Modules.
use Module::Version::File;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Module::Version::File::VERSION, 0.01, 'Version.');
