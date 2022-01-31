#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

require './cetacea.pm';

sub atrium {

  if (@_) {
    my $tune = 'beadgcf';
    my $size = scalar(@_);
    my $item = 0;

    while ( $item < $size ) {
      print "\n";
      Cetacea::phonoGraph( $tune, $_[$item] );

      $item += 1;
    }
    print "\n";
  }
  else {
    Cetacea::displayMenu();
  }
}

atrium(@ARGV);

