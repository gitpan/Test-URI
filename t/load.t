# $Id: load.t 1534 2004-11-22 00:22:41Z comdog $
BEGIN {
	@classes = qw(Test::URI);
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile!" unless use_ok( $class );
	}
