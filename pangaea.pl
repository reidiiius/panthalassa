#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

use lib './Mirovia';
use Rodinia;

sub entryway {

  if (@_) {
    my $tune  = 'beadgcf';                    # default tuning
    my $clef  = Rodinia::validate( $_[0] );
    my $alert = 'initialization';

    unless ($clef) {
      $tune = shift;                          # change tuning

      unless ( Rodinia::boundary $tune ) {
        $alert = Rodinia::caution($tune);
        print "\n$alert\n";
        return 0;
      }
    }

    if ( $tune eq 'search' and defined $_[0] ) {
      my $span = Rodinia::CURB * 6;

      if ( length $_[0] <= $span ) {
        &Rodinia::kleenex;
        return 0;
      }
      else {
        $alert = Rodinia::caution( $_[0], $span );
        print "\n$alert\n";
        return 0;
      }
    }
    elsif ( @_ and $_[0] eq 'gamut' ) {
      my @arks = Gondwana::keynotes;

      print "\n";
      for (@arks) {
        Rodinia::vestibule( $tune, $_ );
        print "\n";
      }
      return 0;
    }
    elsif (@_) {
      print "\n";

      for (@_) {
        if ( Rodinia::boundary $_ ) {
          Rodinia::vestibule( $tune, $_ );
          print "\n";
        }
        else {
          $alert = Rodinia::caution($_);
          print "$alert\n";
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
      print "\t\t$opus guitar gamut\n\n";
    }
  }
  else {
    Rodinia::dashboard;
  }
}

entryway(@ARGV);

