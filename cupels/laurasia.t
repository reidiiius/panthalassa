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
  my $desc = 'prefable defined';
  my $bool = defined &Laurasia::prefable;
  my $pref = \&Gondwana::machine;

  ok( $bool, $desc );

  Laurasia::prefable $pref;
  print "\n";
}

{
  my $bool = Laurasia::BARE;
  my $span = $bool ? 60 : 36;
  my $desc = "pegbox returns a string of $span characters";
  my @star = Gondwana::sanguine;
  my $sign = $star[43];
  my $data = Gondwana::acquire $sign;
  my @arts = sort &Gondwana::machine;
  my $tone = $arts[17];
  my @fork = Gondwana::tension $tone;
  my ( $head, $tail ) = @fork;
  my $cord = Laurasia::pegBox( $data, $head, $tail );
  my $size = length $cord;

  is( $size, $span, $desc );
  print "\t-> '$cord'\n\n";
}

{
  my $span = 36;
  my $desc = "refine returns a string of $span characters";
  my @star = Gondwana::sanguine;
  my $sign = $star[43];
  my $yarn = Gondwana::acquire $sign;
  my $wire = Laurasia::refine $yarn;
  my $size = length $wire;
  my $bool = ( $yarn cmp $wire );

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
  my $bool = ( $yarn =~ m{$reps}a );

  ok( $bool, $desc );

  $bool = ( $take == $give );
  $desc = 'invert returns a string of equal length';

  ok( $bool, $desc );

  $bool = ( $yarn cmp $wire );
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
  my $desc = 'anomaly returns an ANSI escaped string';
  my $file = __FILE__;
  my $line = __LINE__;
  my $grab = 'conditional';
  my $flaw = Laurasia::anomaly( $file, $line, $grab );
  my $bool = ( $flaw =~ /\e\[/a );

  ok( $bool, $desc );
  print "\t-> $flaw\n\n";
}

{
  my $desc = 'caution returns an ANSI escaped string';
  my $word = "$^O $^X $^V $0";
  my $span = Laurasia::CEIL;
  my $code = Laurasia::ANSI + 61;
  my $errs = Laurasia::caution( $word, $span, $code );
  my $size = length $errs;
  my $bool = ( $errs =~ /\e\[/a );

  ok( $bool, $desc );
  print "\t-> $errs\n\n";
}

{
  my $desc = 'wreath returns an ANSI escaped string';
  my @star = Gondwana::viridian;
  my $sign = $star[43];
  my @gear = Gondwana::pickaxe;
  my $tune = $gear[1];
  my $code = Laurasia::ANSI;
  my $vine = Laurasia::wreath( $sign, $tune, $code );
  my $size = length $vine;
  my $bool = ( $vine =~ /\e\[/a );

  ok( $bool, $desc );
  print "\t-> $vine\n\n";
}

{
  my $desc = 'chaplain returns an unescaped ANSI string';
  my @star = Gondwana::viridian;
  my $sign = $star[43];
  my @gear = Gondwana::pickaxe;
  my $tune = $gear[1];
  my $code = Laurasia::ANSI;
  my $yarn = Laurasia::wreath( $sign, $tune, $code );
  my $vine = Laurasia::chaplain( $yarn, $code );
  my $bool = ( $vine !~ /\e\[/a );

  ok( $bool, $desc );
  print "\t-> $vine\n\n";
}

{
  my $desc = 'penlight returns an ANSI escaped string';
  my $snip = join( $", Gondwana::pickaxe );
  my $code = Laurasia::ANSI + 60;
  my $vine = Laurasia::penlight( $snip, $code );
  my $bool = ( $vine =~ /\e\[/a );

  ok( $bool, $desc );
  print "\t-> $vine\n\n";
}

done_testing;

