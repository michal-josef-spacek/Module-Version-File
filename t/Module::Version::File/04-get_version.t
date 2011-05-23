# Pragmas.
use strict;
use warnings;

# Modules.
use File::Object;
use Module::Version::File qw(get_version);
use Test::More 'tests' => 1;

# Data directory.
my $module_test_dir = File::Object->new->up->dir('data');

# Test.
my $version = get_version($module_test_dir->file('Ex1.pm')->s);
is($version, '0.01', 'Version in 0.0x style.');
