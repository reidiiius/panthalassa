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
  my $bool = defined &Rodinia::entryway;
  my @gear = Gondwana::pickaxe;
  my @star = Gondwana::viridian;
  my $tune = $gear[5];
  my $sign = $star[23];
  my $clef = Laurasia::invert $sign;
  my @args = ( $tune, $clef, $sign );

  ok( $bool, $desc );

  Rodinia::entryway @args;
}

{
  my $desc = 'vestibule returns a list of strings';
  my @gear = Gondwana::pickaxe;
  my @star = Gondwana::sanguine;
  my $tune = $gear[2];
  my $sign = $star[43];
  my @lout = Rodinia::vestibule( $tune, $sign );

  ok( @lout, $desc );
  print "\n";
  foreach my $slog (@lout) {
    print "\t$slog\n";
  }
  print "\n";
}

{
  my $desc = 'reflector defined';
  my $bool = defined &Rodinia::reflector;
  my @gear = Gondwana::pickaxe;
  my @star = Gondwana::sanguine;
  my $tune = $gear[-1];
  my $sign = $star[25];
  my @args = ( $tune, $sign );

  ok( $bool, $desc );

  Rodinia::reflector @args;
}

{
  my $desc = 'correlate defined';
  my $bool = defined &Rodinia::correlate;
  my @star = Gondwana::lapidary;
  my $sign = $star[87];
  my $yarn = Gondwana::acquire $sign;
  my $cord = Laurasia::refine $yarn;
  my $wire = Laurasia::BARE ? $yarn : $cord;
  my @toke = split( $", $wire );
  my @args = ( $sign, $toke[2] );

  ok( $bool, $desc );

  Rodinia::correlate @args;
}

{
  my $desc = 'kleenex defined';
  my $bool = defined &Rodinia::kleenex;
  my @star = Gondwana::keynotes;
  my @args = ( $star[7], $star[45] );

  ok( $bool, $desc );

  Rodinia::kleenex @args;
}

{
  my $desc = 'dashboard defined';
  my $bool = defined &Rodinia::dashboard;

  ok( $bool, $desc );

  Rodinia::dashboard;
}

{
  my $desc = "compose returns a list of strings";
  my @gear = Gondwana::pickaxe;
  my @star = Gondwana::sanguine;
  my $tune = $gear[0];
  my $sign = $star[43];
  my $data = Gondwana::acquire $sign;
  my @args = ( $tune, $sign, $data );
  my @lout = Rodinia::compose @args;
  my $size = 6;

  ok( @lout, $desc );
  print "\n";
  foreach my $slog (@lout) {
    print "\t$slog\n";
  }
  print "\n";

  @args = ();
  @lout = Rodinia::compose @args;
  $desc = "compose returns a list of $size strings by default";

  is( @lout, $size, $desc );
  print "\n";
  foreach my $slog (@lout) {
    print "\t$slog\n";
  }
  print "\n";

}

{
  my $bool = Laurasia::BARE;
  my $span = $bool ? 60 : 36;
  my $desc = "stockade returns a string of $span characters";
  my @star = Gondwana::sanguine;
  my $sign = $star[43];
  my $data = Gondwana::acquire $sign;
  my @arts = sort &Gondwana::machine;
  my $tone = $arts[17];
  my $cord = Rodinia::stockade( $tone, $data );
  my $size = length $cord;

  is( $size, $span, $desc );
  print "\t-> '$cord'\n\n";
}

{
  my $span = 60;
  my $desc = "retrieve returns a string of $span characters";
  my @star = Gondwana::sanguine;
  my $sign = $star[43];
  my $data = Gondwana::acquire $sign;
  my $size = length $data;

  is( $size, $span, $desc );
  print "\t-> '$data'\n\n";
}

{
  my $desc = "validate returns a boolean";
  my @star = Gondwana::sanguine;
  my $sign = $star[25];
  my $bool = Rodinia::validate $sign;
  my $pole = $bool ? 'True' : 'False';
  my $fake = q//;

  ok( $bool, $desc );
  print "\targument passed: '$sign'\n\t-> $pole\n\n";

  $sign = 'forgery';
  $bool = Rodinia::validate $sign;
  $pole = $bool ? 'True' : 'False';

  is( $bool, $fake, $desc );
  print "\targument passed: '$sign'\n\t-> $pole\n\n";
}

done_testing;

