#!/usr/bin/env perl

use diagnostics;
use warnings;
use strict;

use Test::More;

use lib './Mirovia';
use Gondwana;

print "\n";

{
  my $bool;
  my $pole;
  my $sign;
  my $desc = 'membership returns a boolean';

  $sign = 'i0';
  $bool = Gondwana::membership $sign;
  $pole = $bool ? 'True' : 'False';

  ok( $bool, $desc );
  print "\targument passed: '$sign'\n\t-> $pole\n\n";

  $sign = 'h2';
  $bool = Gondwana::membership $sign;
  $pole = $bool ? 'True' : 'False';

  ok( !$bool, $desc );
  print "\targument passed: '$sign'\n\t-> $pole\n\n";
}

{
  my $desc = "acquire returns a string of 60 characters";
  my @arks = Gondwana::keynotes;
  my $wire;
  my $size;
  my $accu = q//;
  my $errs = 0;

  foreach my $sign (@arks) {
    $wire = Gondwana::acquire $sign;
    $size = length $wire;

    if ( $size != 60 ) {
      $accu .= "\t$sign => '$wire',\n";
      $errs++;
    }
  }

  ok( !$errs, $desc );
  print $errs ? "$accu\n" : "\n";
}

{
  my $desc = "tacet returns a string of 60 characters";
  my $wire = Gondwana::tacet;
  my $size = length $wire;
  my $bool = $size == 60;

  ok( $bool, $desc );
  print $bool ? "\n" : "\t$size -> '$wire'\n\n";
}

sub mismatch {
  my $pref = shift;
  my @arks = &{$pref};
  my $name = shift || 'process';
  my $size = scalar @arks;
  my $zero = $size % 2;
  my $desc = "$name returns a sorted balanced list of strings";
  my $reps = Gondwana::regulus;
  my $errs = q//;

  is( $zero, 0, $desc );
  print $zero ? "\t-> @arks\n\n" : "\n";

  foreach my $item (@arks) {
    if ( $item !~ m{$reps}a ) {
      $errs .= "$item ";
    }
  }

  ok( !$errs, "regular expression matching validation for $name" );
  print $errs ? "\t-> $errs\n\n" : "\n";
}

mismatch( \&Gondwana::keynotes, 'keynotes' );

mismatch( \&Gondwana::lapidary, 'lapidary' );

{
  my $desc = 'comparison of keynotes and lapidary';
  my @arks = Gondwana::keynotes;
  my @star = Gondwana::lapidary;
  my ( $size, $span, $ndex, $errs ) = ( 0, 0, 0, 0 );
  my $accu = q//;

  $size = scalar @arks;
  $span = scalar @star;

  if ( $size == $span ) {
    for ( $ndex = 0 ; $ndex < $size ; $ndex++ ) {
      if ( $arks[$ndex] ne $star[$ndex] ) {
        $accu .= "\t$arks[$ndex]\t<diff>\t$star[$ndex]\n";
        $errs++;
      }
    }
    print "$accu\n" if $errs;

    is( $errs, 0, "quality $desc" );
    print "\n";
  }
  else {
    is( $size, $span, "quantity $desc" );
    print "\n";
  }
}

{
  my @arks = Gondwana::sanguine;
  my @star = Gondwana::viridian;
  my $size = scalar @arks;
  my $span = scalar @star;
  my $desc = "quantity comparison of sanguine and viridian";

  is( $size, $span, $desc );
  print "\n";
}

{
  my @arts = Gondwana::machine;
  my @fork;
  my $size = scalar @arts;
  my $desc = "machine returns a list of 21 strings";
  my $summ;
  my $pair = 0;
  my $errs = 0;

  is( $size, 21, $desc );
  print "\n";

  foreach my $tone (@arts) {
    @fork = Gondwana::tension $tone;
    $size = scalar @fork;
    $summ = $fork[0] + $fork[1];
    $pair++ if $size != 2;
    $errs++ if $summ != 60;
  }

  $desc = "tension returns a list of 2 integers";

  ok( !$pair, $desc );
  print "\n";

  $desc = "summation of list values equals 60";

  ok( !$errs, $desc );
  print "\n";
}

{
  my @gear;
  my $desc;

  @gear = Gondwana::pickaxe;
  $desc = "pickaxe returns a sorted list of strings";

  ok( @gear, $desc );
  print "\t-> @gear\n\n";
}

{
  my $desc = "hedgerow returns a list of strings";
  my @gear = Gondwana::pickaxe;
  my @arms;
  my $size;
  my $errs;

  foreach my $harp (@gear) {
    @arms = Gondwana::hedgerow $harp;
    $size = scalar @arms;
    $errs++ unless $size;
  }

  ok( !$errs, $desc );
  print $errs ? "\n" : "\t-> @arms\n\n";
}

done_testing;

