# $Id: prereq.t 1534 2004-11-22 00:22:41Z comdog $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();