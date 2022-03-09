#!/usr/bin/env perl

use diagnostics;
use warnings;
use strict;

use Test::More;

use lib './Mirovia';
use Rodinia;

print "\n";

{
  my $desc = 'entryway defined';
  my $bool;
  my @args = ( 'cgdae', 'j36', 'k15' );

  $bool = defined &Rodinia::entryway;

  ok( $bool, $desc );

  # takes a list of strings and prints to stdout
  Rodinia::entryway(@args);
}

{
  my $desc = 'vestibule returns a list of strings';
  my @star;
  my $tune = 'beadgcf';
  my $sign = 'n0';

  # takes two strings and returns list of strings
  @star = Rodinia::vestibule( $tune, $sign );

  ok( @star, $desc );

  print "\n@star\n";
}

{
  my $desc = 'correlate defined';
  my $bool;
  my @args = ( 'n0', 'tt' );

  $bool = defined &Rodinia::correlate;

  ok( $bool, $desc );

  # takes a list of strings and prints to stdout
  Rodinia::correlate @args;
}

{
  my $desc = 'kleenex defined';
  my $bool;
  my @args = ( 'j23', 'k12' );

  $bool = defined &Rodinia::kleenex;

  ok( $bool, $desc );

  # takes a list of scalars and prints to stdout
  Rodinia::kleenex @args;
}

{
  my $desc = 'dashboard defined';
  my $bool = defined &Rodinia::dashboard;

  ok( $bool, $desc );

  # prints strings to stdout
  Rodinia::dashboard;
}

{
  my $desc = 'prefable defined';
  my $bool = defined &Rodinia::prefable;
  my $pref = \&Gondwana::pickaxe;

  ok( $bool, $desc );

  # takes process reference and prints string to stdout
  Rodinia::prefable $pref;
  print "\n";
}

{
  my $desc;
  my $size;
  my $sign = 'n0';
  my $tune = 'beadgcf';
  my $data = Gondwana::acquire $sign;
  my @args = ( $tune, $sign, $data );
  my @lout;

  # takes a list of strings and returns a list of strings
  @lout = Rodinia::compose @args;
  $size = scalar @lout;
  $desc = "compose returns a list of $size strings";

  is( @lout, $size, $desc );

  print "\n@lout\n";

  @args = undef;
  @lout = Rodinia::compose @args;
  $size = scalar @lout;
  $desc = "compose returns a list of $size strings by default";

  is( @lout, $size, $desc );

  print "\n@lout\n";
}

{
  my $desc;
  my $size;
  my $cord;
  my $sign = 'n0';
  my $tone = 'fn';
  my $data = Rodinia::retrieve $sign;

  # takes two string arguments and returns a string
  $cord = Rodinia::stockade( $tone, $data );
  $size = length $cord;
  $desc = "stockade returns a formatted string of $size characters";

  ok( $size, $desc );

  print "\t-> $cord\n";
}

{
  my $desc;
  my $size;
  my $sign = 'n0';
  my $data;

  # takes a string argument and returns a string
  $data = Rodinia::retrieve $sign;
  $size = length $data;
  $desc = "retrieve returns a string of $size characters";

  is( $size, 60, $desc );

  print "\t-> '$data'\n\n";
}

{
  my $desc;
  my $bool;
  my $pole;
  my $sign = 'j3k56m4';
  my $fake = q//;

  # takes a string argument and returns a boolean
  $bool = Rodinia::validate $sign;
  $pole = $bool ? 'True' : 'False';
  $desc = "validate returns a boolean";

  ok( $bool, $desc );

  print "\targument passed: '$sign'\n\t-> $pole\n\n";

  $sign = 'forgery';
  $bool = Rodinia::validate $sign;
  $pole = $bool ? 'True' : 'False';
  $desc = "validate returns a boolean";

  is( $bool, $fake, $desc );

  print "\targument passed: '$sign'\n\t-> $pole\n\n";
}

done_testing;

