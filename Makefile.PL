# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Module for getting version from module_file.';
author 'Michal Špaček <skim@cpan.org>';
license 'bsd';
name 'Module-Version-File';
requires 'Error::Pure' => 0.01;
requires 'ExtUtils::MakeMaker' => 0;
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Module-Version-File';
resources 'homepage' => 'https://github.com/tupinek/Module-Version-File';
resources 'repository' => 'git://github.com/tupinek/Module-Version-File';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.01;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
