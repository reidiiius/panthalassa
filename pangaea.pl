#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

use lib './Mirovia';
use Rodinia;

sub entryway {

  if (@_) {
    my $tune = 'eadgbe';  # default tuning
    my $clef = Rodinia::validate( $_[0] );

    unless ( $clef ) {
      $tune = shift;      # change tuning
    }

    my ( $esc, $cse ) = ( "\033[0;33m", "\033[0m" );
    my ( $size, $span ) = ( length($tune), 9 );

    if (@_ and $size < $span ) {
      print "\n";

      for (@_) {
        $size = length($_);

        if ( $size < $span ) {
          Rodinia::vestibule( $tune, $_ );
          print "\n";
        }
        else {
          my $errs = substr $_, 0, $span;
          print "\t${esc}$errs..?${cse}\n\n";
        }
      }
    }
    else {
      print "\n\t${esc}Example:${cse}\n";
      print "\t\tperl -w pangaea.pl viola n0 j36\n\n";
    }
  }
  else {
    Rodinia::dashboard;
  }
}

entryway(@ARGV);

