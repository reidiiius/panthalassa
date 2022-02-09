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
        my $errs = Rodinia::penlight( $snip, 37 );
        my $warn = Rodinia::penlight( "<-overflow:$span", 91 );
        print "\n\t$errs$warn\n\n";
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
          my $errs = Rodinia::penlight( $snip, 91 );
          print "\t$errs\n\n";
        }
      }
    }
    else {
      my $snip = Rodinia::penlight( 'Example:', 96 );
      my $opus = "perl -w $0";
      print "\n\t$snip\n";
      print "\t\t$opus viola n0 j36\n\n";
      print "\t\t$opus viola: n0 j36\n\n";
      print "\t\t$opus search '^[jk]\\d([jk]\\d)?\$'\n\n";
    }
  }
  else {
    Rodinia::dashboard;
  }
}

entryway(@ARGV);

