# Pragmas.
use strict;
use warnings;

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'NAME' => 'Module::Version::File',
	'PREREQ_PM' => {
		'Error::Pure' => 0.01,
		'Exporter' => 0,
		'ExtUtils::MakeMaker' => 0,
		'Readonly' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/Module::Version::File/*.t',
	},
);
