#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

use lib './Mirovia';
use Rodinia;

sub entryway {
  my $tune = 'eadgbe';    # default tuning

  if (@_) {
    my $clef = Rodinia::validate( $_[0] );
    unless ( $clef ) {
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
      Rodinia::dashboard;
    }

  }
  else {
    Rodinia::dashboard;
  }
}

entryway(@ARGV);

