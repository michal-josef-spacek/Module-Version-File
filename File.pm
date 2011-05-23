package Module::Version::File;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Error::Pure qw(err);
use ExtUtils::MakeMaker;
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(get_version);

# Version.
our $VERSION = 0.01;

# Get module version for file.
sub get_version {
	my $file = shift;

	# Check for file.
	if (! $file || ! -r $file) {
		err "Cannot read file '$file'.";
	}

	# Return version.
	return MM->parse_version($file);
}

1;
