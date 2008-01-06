# $Id: Makefile.PL 2481 2008-01-06 20:29:50Z comdog $
use ExtUtils::MakeMaker;

require 5.006;

eval "use Test::Manifest 1.14";

WriteMakefile
	(
	'NAME'           => 'Test::URI',
	'ABSTRACT'       => 'Check Uniform Resource Identifiers',
	'VERSION_FROM'   => 'lib/URI.pm',
	'LICENSE'        => 'perl',
	'AUTHOR'         => 'brian d foy <bdfoy@cpan.org>',

	'PREREQ_PM' => {
		'Test::More'            => '0',
		'Test::Builder::Tester' => '0',
		'URI'                   => '0',
		},

	'PM'        => 
		{
		'lib/URI.pm'     => '$(INST_LIBDIR)/URI.pm',
	  },


	'MAN3PODS'     => {
		'lib/URI.pm' => '$(INST_MAN3DIR)/Test::URI.3',
		},

	clean  => { FILES    => q|Test-URI-* test_files| },
	);

