#!/usr/bin/env perl

use strict;
use warnings;
# use diagnostics;

require "cetacea.pm";

if ($ARGV[0]) {
  print "\n\n";

    eadgbe($ARGV[0]);

  print "\n\n";

    eadgbe($ARGV[1]);

  print "\n\n";
}
else {
  &displayMenu;
}

