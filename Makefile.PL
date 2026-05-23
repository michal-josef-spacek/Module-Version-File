use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Module for getting version from module_file.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'Module-Version-File';
readme_from 'File.pm';
requires 'Error::Pure' => 0.08;
requires 'ExtUtils::MakeMaker' => 0;
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/Module-Version-File/issues';
resources 'homepage' => 'https://github.com/michal-josef-spacek/Module-Version-File';
resources 'repository' => 'git://github.com/michal-josef-spacek/Module-Version-File';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
