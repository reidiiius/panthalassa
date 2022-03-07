#!/usr/bin/env perl

use diagnostics;
use warnings;
use strict;

use Test::Simple tests => 12;

use lib './Mirovia';
use Gondwana;

print "\n";

{
  my $bool;
  my $sign;
  my $desc = 'membership returns a boolean';

  # takes a string argument and returns a boolean
  $sign = 'i0';
  $bool = Gondwana::membership $sign;
  $bool = $bool ? 'True' : 'False';

  ok( $bool eq 'True', $desc );
  print "\t-> $bool\n\n";

  $sign = undef;
  $bool = Gondwana::membership $sign;
  $bool = $bool ? 'True' : 'False';

  ok( $bool eq 'False', $desc );
  print "\t-> $bool\n\n";
}

{
  my $sign;
  my $wire;
  my $size;
  my $desc;

  # takes a string argument and returns a string
  $sign = 'n0';
  $wire = Gondwana::acquire $sign;
  $size = length $wire;
  $desc = "acquire returns a string of $size characters";

  ok( $size eq 60, $desc );
  print "\t-> '$wire'\n\n";

  $sign = undef;
  $wire = Gondwana::acquire $sign;
  $size = length $wire;

  ok( $size eq 60, $desc );
  print "\t-> '$wire'\n\n";
}

{
  my @arks;
  my $size;
  my $desc;

  # returns a list of strings
  @arks = Gondwana::keynotes;
  $size = scalar @arks;
  $desc = "keynotes returns a list of $size strings";

  ok( $size, $desc );
  print "\t-> @arks\n\n";
}

{
  my $cord;
  my $size;
  my $desc;

  # returns a string
  $cord = Gondwana::tacet;
  $size = length $cord;
  $desc = "tacet returns a string of $size characters";

  ok( $size eq 60, $desc );
  print "\t-> '$cord'\n\n";
}

{
  my @arks;
  my $size;
  my $desc;

  # returns a list of strings
  @arks = Gondwana::viridian;
  $size = scalar @arks;
  $desc = "viridian returns a list of $size strings";

  ok( $size, $desc );
  print "\t-> @arks\n\n";
}

{
  my @arks;
  my $size;
  my $desc;

  # returns a list of strings
  @arks = Gondwana::sanguine;
  $size = scalar @arks;
  $desc = "sanguine returns a list of $size strings";

  ok( $size, $desc );
  print "\t-> @arks\n\n";
}

{
  my @fork;
  my $size;
  my $desc;
  my $summ;
  my $tone = 'dn';

  # takes a string argument and returns a list of numbers
  @fork = Gondwana::tension $tone;
  $size = scalar @fork;
  $desc = "tension returns a list of $size numbers";

  ok( @fork, $desc );
  print "\t-> @fork\n\n";

  $summ = $fork[0] + $fork[1];
  $desc = "summation of list values equals $summ";

  ok( $summ == 60, $desc );
  print "\t-> $fork[0] + $fork[1] = $summ\n\n";
}

{
  my @gear;
  my $size;
  my $desc;

  # returns a list of strings
  @gear = Gondwana::pickaxe;
  $size = scalar @gear;
  $desc = "pickaxe returns a list of $size strings";

  ok( @gear, $desc );
  print "\t-> @gear\n\n";
}

{
  my @arms;
  my $size;
  my $desc;
  my $harp = 'beadgcf';

  # takes a string argument and returns a list of strings
  @arms = Gondwana::hedgerow $harp;
  $size = scalar @arms;
  $desc = "hedgerow returns a list of $size strings";

  ok( @arms, $desc );
  print "\t-> @arms\n\n"
}

