#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

use Expect;

my $timeout=5;

foreach my $i (1..20)
{
  my $exp = Expect->spawn("./dummy1.pl")
    or die "Unexpected error : $!\n";

  $exp->expect($timeout);
}
