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

  Laurasia::examples;
}

{
  my $span = 38;
  my $desc = "pegbox returns a formatted string of $span characters";
  my @star = Gondwana::sanguine;
  my $sign = $star[43];
  my $vine = Gondwana::acquire $sign;
  my @arts = sort &Gondwana::machine;
  my $tone = $arts[17];
  my @fork = Gondwana::tension $tone;
  my ( $data, $head, $tail ) = ( $vine, @fork );
  my $cord = Laurasia::pegBox( $data, $head, $tail );
  my $size = length $cord;

  is( $size, $span, $desc );

  $head = index( $cord, "\t" );
  $desc = 'string is prefixed with tab character';

  is( $head, 0, $desc );

  $tail = index( $cord, "\n" );
  $desc = 'and terminated with newline character';

  is( $tail, --$size, $desc );
  print "\t-> $cord\n";
}

{
  my $span = 36;
  my $desc = "refine returns a string of $span characters";
  my @star = Gondwana::sanguine;
  my $sign = $star[43];
  my $yarn = Gondwana::acquire $sign;
  my $wire = Laurasia::refine $yarn;
  my $size = length $wire;
  my $bool = $yarn cmp $wire;

  is( $size, $span, $desc );

  $desc = 'refine returns the string transformed';

  ok( $bool, $desc );
  print "\t-> '$wire'\n\n";
}

{
  my $desc = 'invert takes an alphanumeric argument';
  my @star = Gondwana::sanguine;
  my $yarn = $star[15];
  my $wire = Laurasia::invert $yarn;
  my $take = length $yarn;
  my $give = length $wire;
  my $reps = Gondwana::regulus;
  my $bool = $yarn =~ m{$reps}a;

  ok( $bool, $desc );

  $bool = $take == $give;
  $desc = 'invert returns a string of equal length';

  ok( $bool, $desc );

  $bool = $yarn cmp $wire;
  $desc = 'invert returns the string transformed';

  ok( $bool, $desc );
  print "\t$yarn -> $wire\n\n";
}

{
  my $desc = 'boundary returns a boolean';
  my $word = '0123456789';
  my $span = Laurasia::CURB;
  my $bool = Laurasia::boundary( $word, $span );
  my $pole = $bool ? 'True' : 'False';

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
  my $desc  = 'anomaly returns an ANSI escaped string';
  my $filet = __FILE__;
  my $aline = __LINE__;
  my $catch = 'conditional';
  my $alert = Laurasia::anomaly( $filet, $aline, $catch );
  my $bool  = $alert =~ /\e\[/a;

  ok( $bool, $desc );
  print "\t-> $alert\n";
}

{
  my $desc = 'caution returns a formatted ANSI escaped string';
  my $word = "$^O $^X $^V $0";
  my $span = Laurasia::CEIL;
  my $code = 92;
  my $errs = Laurasia::caution( $word, $span, $code );
  my $size = length $errs;
  my $bool = $errs =~ /\e\[/a;
  my ( $head, $tail );

  ok( $bool, $desc );

  $head = index( $errs, "\t" );
  $desc = 'string is prefixed with tab character';

  is( $head, 0, $desc );

  $tail = index( $errs, "\n" );
  $desc = 'and terminated with newline character';

  is( $tail, --$size, $desc );
  print "\t-> $errs\n";
}

{
  my $desc = 'wreath returns a formatted ANSI escaped string';
  my @star = Gondwana::viridian;
  my $sign = $star[43];
  my @gear = Gondwana::pickaxe;
  my $tune = $gear[1];
  my $code = 33;
  my $vine = Laurasia::wreath( $sign, $tune, $code );
  my $size = length $vine;
  my $bool = $vine =~ /\e\[/a;
  my ( $head, $tail );

  ok( $bool, $desc );

  $head = index( $vine, "\t" );
  $desc = 'string is prefixed with tab character';

  is( $head, 0, $desc );

  $tail = index( $vine, "\n" );
  $desc = 'and terminated with newline character';

  is( $tail, --$size, $desc );
  print "\t-> $vine\n";
}

{
  my $desc = 'chaplain returns an unescaped ANSI string';
  my @star = Gondwana::viridian;
  my $sign = $star[43];
  my @gear = Gondwana::pickaxe;
  my $tune = $gear[1];
  my $code = 33;
  my $yarn = Laurasia::wreath( $sign, $tune, $code );
  my $vine = Laurasia::chaplain( $yarn, $code );
  my $bool = $vine !~ /\e\[/a;

  ok( $bool, $desc );
  print "\t-> $vine\n";
}

{
  my $desc = 'penlight returns an ANSI escaped string';
  my $snip = join( $", Gondwana::pickaxe );
  my $code = 93;
  my $vine = Laurasia::penlight( $snip, $code );
  my $bool = $vine =~ /\e\[/a;

  ok( $bool, $desc );
  print "\t-> $vine\n\n";
}

done_testing;

