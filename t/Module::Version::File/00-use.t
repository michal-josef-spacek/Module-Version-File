# Pragmas.
use strict;
use warnings;

# Modules.
use Test::More 'tests' => 2;

BEGIN {

	# Test.
	use_ok('Module::Version::File');
}

# Test.
require_ok('Module::Version::File');
