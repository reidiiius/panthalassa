#!/usr/bin/env perl

# use diagnostics;
use warnings;
use strict;

require "cetacea.pm";

if ($ARGV[0]) {
  print "\n\n";

    Cetacea::eadgbe($ARGV[0]);

  print "\n\n";

    Cetacea::eadgbe($ARGV[1]);

  print "\n\n";
}
else {
  Cetacea::displayMenu();
}

