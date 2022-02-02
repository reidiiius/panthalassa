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

    if (@_) {
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
  else {
    Cetacea::displayMenu();
  }
}

atrium(@ARGV);

