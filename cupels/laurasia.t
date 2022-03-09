#!/usr/bin/env perl

use diagnostics;
use warnings;
use strict;

use Test::More;

use lib './Mirovia';
use Gondwana;
use Laurasia;

print "\n";

{
  my $desc = 'examples defined';
  my $bool = defined &Laurasia::examples;

  ok( $bool, $desc );

  # prints strings to stdout
  Laurasia::examples;
}

{
  my $desc;
  my $size;
  my $cord;
  my ( $data, $head, $tail ) = ( Gondwana::tacet, 0, 60 );

  # takes three scalar arguments and returns a string
  $cord = Laurasia::pegBox( $data, $head, $tail );
  $size = length $cord;
  $desc = "pegbox returns a formatted string of $size characters";

  ok( $size, $desc );

  print "\t-> $cord\n";
}

{
  my $desc;
  my $size;
  my $wire;
  my $yarn = Gondwana::acquire 'n0';

  # takes a string argument and returns a string
  $wire = Laurasia::refine $yarn;
  $size = length $wire;
  $desc = "refine returns a string of $size characters";

  is( $size, 36, $desc );

  print "\t-> $wire\n\n";
}

{
  my $desc;
  my $size;
  my $wire;
  my $yarn = 'j2k56l6';

  # takes a string argument and returns a string
  $wire = Laurasia::invert $yarn;
  $size = length $wire;
  $desc = "invert returns a string of $size characters";

  ok( $size, $desc );

  print "\t-> $wire\n\n";
}

{
  my $desc = 'boundary returns a boolean';
  my $word = '0123456789';
  my $span = Laurasia::CURB;
  my $bool;
  my $pole;

  # takes two scalar arguments and returns a boolean
  $bool = Laurasia::boundary( $word, $span );
  $pole = $bool ? 'True' : 'False';

  ok( $bool, $desc );

  print "\tlength of '$word' is less than or equal to 10?\n";
  print "\t-> $pole\n\n";

  $word = '0123456789A';
  $bool = Laurasia::boundary( $word, $span );
  $pole = $bool ? 'True' : 'False';

  ok( !$bool, $desc );

  print "\tlength of '$word' is less than or equal to 10?\n";
  print "\t-> $pole\n\n";
}

{
  my $desc = 'anomaly returns an ANSI escaped string';
  my $bool;
  my $filet = __FILE__;
  my $aline = __LINE__;
  my $catch = 'conditional';
  my $alert;

  # takes three scalar arguments and returns a string
  $alert = Laurasia::anomaly( $filet, $aline, $catch );
  $bool  = $alert =~ /\e\[/a;

  ok( $bool, $desc );

  print "\t->$alert\n";
}

{
  my $desc = 'caution returns a formatted ANSI escaped string';
  my $bool;
  my $word = "$^O $^V";
  my $span = Laurasia::CURB;
  my $code = 91;
  my $errs;

  # takes three scalar arguments and returns a string
  $errs = Laurasia::caution( $word, $span, $code );
  $bool = $errs =~ /\e\[/a;

  ok( $bool, $desc );

  print "\t-> $errs\n";
}

{
  my $desc = 'wreath returns a formatted ANSI escaped string';
  my $bool;
  my $crown;
  my ( $sign, $tune, $code ) = ( 'i0', 'bfbfb', 33 );

  # takes three scalar arguments and returns a string
  $crown = Laurasia::wreath( $sign, $tune, $code );
  $bool  = $crown =~ /\e\[/a;

  ok( $bool, $desc );

  print "\t-> $crown\n";
}

{
  my $desc = 'chaplain returns an unescaped ANSI string';
  my $bool;
  my $code = 33;
  my $vine = Laurasia::wreath( 'i0', 'bfbfb', $code );

  # takes two scalar arguments and returns a string
  $vine = Laurasia::chaplain( $vine, $code );
  $bool = $vine !~ /\e\[/a;

  ok( $bool, $desc );

  print "\t-> $vine\n";
}

{
  my $desc = 'penlight returns an ANSI escaped string';
  my $bool;
  my $snip = 'The quick brown fox jumps over the lazy dog.';
  my $code = 93;

  # takes two scalar arguments and returns a string
  $snip = Laurasia::penlight( $snip, $code );
  $bool = $snip =~ /\e\[/a;

  ok( $bool, $desc );

  print "\t-> $snip\n\n";
}

done_testing;

