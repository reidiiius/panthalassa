#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

require "cetacea.pm";

sub atrium {

  my $tune = 'eadgbe';

  if ($_[0]) {
    print "\n\n";

    Cetacea::headstock($tune, $_[0]);

    print "\n\n";

    Cetacea::headstock($tune, $_[1]);

    print "\n\n";
  }
  else {
    Cetacea::displayMenu();
  }

}

atrium(@ARGV);

