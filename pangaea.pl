#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

require './cetacea.pm';

sub atrium {
  my $tune = 'eadgbe';    # default tuning

  if (@_) {
    unless ( $_[0] =~ /^([jkn][0-7]+)+([xy][1-7]+)?$/ ) {
      $tune = shift;      # change tuning
    }

    print "\n";
    for (@_) {
      Cetacea::phonoGraph( $tune, $_ );
      print "\n";
    }
  }
  else {
    Cetacea::displayMenu();
  }
}

atrium(@ARGV);

