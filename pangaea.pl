#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

require "cetacea.pm";

sub atrium {

  my $tune = 'eadgbe';

  if (@_) {
    print "\n\n";

    Cetacea::phonoGraph($tune, $_[0]);

    print "\n\n";

    Cetacea::phonoGraph($tune, $_[1]);

    print "\n\n";
  }
  else {
    Cetacea::displayMenu();
  }
}

atrium(@ARGV);

