#!/usr/bin/env perl

use diagnostics;
use warnings;
use strict;

use Test::Simple tests => 10;

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
  my $desc = 'wreath returns an ANSI escaped string';
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
  my $desc;
  my $size;
  my $cord;
  my ( $data, $head, $tail ) = ( Gondwana::tacet, 0, 60 );

  # takes three scalar arguments and returns a string
  $cord = Laurasia::pegBox( $data, $head, $tail );
  $size = length $cord;
  $desc = "pegbox returns a string of $size characters";

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

  ok( $size, $desc );

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
  my ( $desc, $head, $tail );
  my $word = '0123456789';
  my $span = Laurasia::CURB;
  my $bool;

  # takes two scalar arguments and returns a boolean
  $bool = Laurasia::boundary( $word, $span );
  $bool = $bool ? 'True' : 'False';
  $head = "boundary returns $bool if passed string\n";
  $tail = "\tlength is less than or equal to $span";
  $desc = $head . $tail;

  ok( $bool, $desc );

  print "\t-> $bool\n\n";
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
  my $desc = 'caution returns an ANSI escaped string';
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
  my $code = 33;

  # takes two scalar arguments and returns a string
  $snip = Laurasia::penlight( $snip, $code );
  $bool = $snip =~ /\e\[/a;

  ok( $bool, $desc );

  print "\t-> $snip\n\n";
}

