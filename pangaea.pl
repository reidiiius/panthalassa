#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

use lib './Mirovia';
use Rodinia;

sub entryway {

  if (@_) {
    my $tune = 'eadgbe';                     # default tuning
    my $clef = Rodinia::validate( $_[0] );

    unless ($clef) {
      $tune = shift;                         # change tuning
    }

    if ( @_ and Rodinia::boundary $tune ) {
      print "\n";

      for (@_) {
        if ( Rodinia::boundary $_ ) {
          Rodinia::vestibule( $tune, $_ );
          print "\n";
        }
        else {
          my $span = Rodinia::CURB;
          my $snip = substr( $_, 0, $span ) . '..?';
          my $errs = Rodinia::penlight($snip);
          print "\t$errs\n\n";
        }
      }
    }
    else {
      my $snip = Rodinia::penlight('Example:');
      print "\n\t$snip\n";
      print "\t\tperl -w pangaea.pl viola n0 j36\n\n";
    }
  }
  else {
    Rodinia::dashboard;
  }
}

entryway(@ARGV);

