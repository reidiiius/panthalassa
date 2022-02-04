#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

use lib './Mirovia';
use Rodinia;

sub entryway {
  my $tune = 'eadgbe';    # default tuning

  if (@_) {
    unless ( $_[0] =~ /^([jkn][0-7]+)+([xy][1-7]+)?$/ ) {
      $tune = shift;      # change tuning
    }

    if (@_) {
      print "\n";
      for (@_) {
        Rodinia::vestibule( $tune, $_ );
        print "\n";
      }
    }
    else {
      Rodinia::displayMenu();
    }

  }
  else {
    Rodinia::displayMenu();
  }
}

entryway(@ARGV);

