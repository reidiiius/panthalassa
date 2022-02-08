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

    if ( $tune eq 'search' and defined $_[0] ) {
      my $span = Rodinia::CURB * 6;

      if ( length $_[0] <= $span ) {
        &Rodinia::kleenex;
        return 0;
      }
      else {
        my $snip = substr( $_[0], 0, $span );
        my $errs = "\n\t\x1b[0;33m$snip\x1b[0m";
        my $warn = "\x1b[0;91m<-overflow:$span\x1b[0m\n\n";
        print $errs, $warn;
        return 0;
      }
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

