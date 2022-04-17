#!/usr/bin/env perl

use diagnostics;
use warnings;
use strict;

use Test::More;

use lib './Mirovia';
use Rodinia;

print "\n\t\Urodinia test\n\n";

sleep 2;

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

sleep 4;

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

sleep 4;

{
  my $desc = 'reflector defined';
  my $bool = defined &Rodinia::reflector;
  my @gear = Gondwana::pickaxe;
  my @star = Gondwana::sanguine;
  my $tune = $gear[-1];
  my $sign = $star[25];
  my @args = ( $tune, $sign );

  ok( $bool, $desc );

  $desc = 'reflector success returns true';
  $bool = Rodinia::reflector @args;

  ok( $bool, $desc );

  @args = ();
  $desc = 'reflector failure returns false';
  $bool = Rodinia::reflector @args;

  ok( !$bool, $desc );
  print "\n";
}

sleep 4;

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

sleep 4;

{
  my $desc = 'dialect defined';
  my $bool = defined &Rodinia::dialect;

  ok( $bool, $desc );

  my $tone = Laurasia::BARE ? 'HgSn' : 'vt';

  Rodinia::dialect $tone;
  print "\n";
}

sleep 4;

{
  my $desc = 'collect defined';
  my $bool = defined &Rodinia::collect;

  ok( $bool, $desc );

  my $tone = Laurasia::BARE ? 'HgSn' : 'vt';
  my @lout = Rodinia::collect $tone;

  print "\n\t@lout\n\n";
}

sleep 4;

{
  my $desc = 'passkey defined';
  my $bool = defined &Rodinia::passkey;

  ok( $bool, $desc );

  Rodinia::passkey 'j3';
  print "\n";
}

sleep 4;

{
  my $desc = 'kleenex defined';
  my $bool = defined &Rodinia::kleenex;
  my @star = Gondwana::keynotes;
  my @args = ( $star[7], $star[45] );

  ok( $bool, $desc );

  Rodinia::kleenex @args;
}

sleep 4;

{
  my $desc = 'whiskey defined';
  my $bool = defined &Rodinia::whiskey;

  ok( $bool, $desc );

  my @accum = Rodinia::whiskey '^([jk]\d)+$';

  Laurasia::tableau @accum;
  print "\n";
}

sleep 4;

{
  my $desc = "compose returns a list of strings";
  my @gear = Gondwana::pickaxe;
  my @star = Gondwana::sanguine;
  my $tune = $gear[0];
  my $sign = $star[43];
  my @args = ( $tune, $sign );
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

sleep 4;

{
  my $bool = Laurasia::BARE;
  my $span = $bool ? 60 : 36;
  my $desc = "stockade returns a string of $span characters";
  my @star = Gondwana::sanguine;
  my $sign = $star[43];
  my @arts = sort &Gondwana::machine;
  my $tone = $arts[17];
  my $cord = Rodinia::stockade( $tone, $sign );
  my $size = length $cord;

  is( $size, $span, $desc );
  print "\t-> '$cord'\n\n";
}

sleep 4;

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

sleep 2;

print "\t\Utest completed\t";
done_testing;
print "\n";

