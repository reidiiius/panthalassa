#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

require './cetacea.pm';

sub entryway {
  my $tune = 'eadgbe';    # default tuning

  if (@_) {
    unless ( $_[0] =~ /^([jkn][0-7]+)+([xy][1-7]+)?$/ ) {
      $tune = shift;      # change tuning
    }

    if (@_) {
      print "\n";
      for (@_) {
        Cetacea::vestibule( $tune, $_ );
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

entryway(@ARGV);

