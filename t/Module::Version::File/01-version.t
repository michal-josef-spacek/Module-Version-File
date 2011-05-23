# Pragmas.
use strict;
use warnings;

# Modules.
use Module::Version::File;
use Test::More 'tests' => 1;

# Test.
is($Module::Version::File::VERSION, '0.01', 'Version.');
