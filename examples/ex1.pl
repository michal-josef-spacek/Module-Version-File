#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use File::Temp;
use IO::Barf qw(barf);
use Module::Version::File qw(get_version);

# Example module data.
my $example_module = <<"END";
package Foo;
use strict;
use warnings;
our \$VERSION = 3.14;
END

# Temporary file.
my $temp_file = File::Temp->new->filename;

# Create exmaple module.
barf($temp_file, $example_module);

# Get version.
my $version = get_version($temp_file);

# Print out.
print "$version\n";

# Unlink temporary file.
unlink $temp_file;

# Output.
# 3.14