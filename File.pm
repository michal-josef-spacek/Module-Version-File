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

__END__

=pod

=encoding utf8

=head1 NAME

Module::Version::File - Module for getting version from module_file.

=head1 SYNOPSIS

 use Module::Version::File qw(get_version);
 my $version = get_version($module_file);

=head1 SUBROUTINES

=over 8

=item C<get_version($module_file)>

 Gets version from $module_file.

=back

=head1 ERRORS

 get_version():
         Cannot read file '%s'.

=head1 DEPENDENCIES

L<Error::Pure>,
L<ExtUtils::MakeMaker>,
L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

L<Module::Version>,
L<Module::Extract::VERSION>.

=head1 AUTHOR

Michal Špaček L<skim@cpan.org>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
