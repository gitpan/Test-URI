# $Id: load.t,v 1.2 2004/11/22 00:22:41 comdog Exp $
BEGIN {
	@classes = qw(Test::URI);
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile!" unless use_ok( $class );
	}
