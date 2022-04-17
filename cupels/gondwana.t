#!/usr/bin/env perl

use diagnostics;
use warnings;
use strict;

use Test::More;

use lib './Mirovia';
use Rodinia;

use constant TICS => 3;

print "\n\t\Ugondwana test\n\n";

sleep TICS;

{
  my $desc = 'membership returns a boolean';
  my @star = Gondwana::viridian;
  my $sign = $star[43];
  my $bool = Gondwana::membership $sign;
  my $pole = $bool ? 'True' : 'False';

  ok( $bool, $desc );
  print "\targument passed: '$sign'\n\t-> $pole\n\n";

  $sign = 'i7';
  $bool = Gondwana::membership $sign;
  $pole = $bool ? 'True' : 'False';

  ok( !$bool, $desc );
  print "\targument passed: '$sign'\n\t-> $pole\n\n";

  $desc = 'membership returns false by default';
  $bool = Gondwana::membership;

  ok( !$bool, $desc );
  print "\n";
}

sleep TICS;

{
  my $desc = "acquire returns a string by default";
  my @arks = Gondwana::keynotes;
  my $accu = q//;
  my $errs = 0;
  my $wire = Gondwana::acquire;
  my $size = length $wire;

  is( $size, 60, $desc );
  print "\t-> $wire\n\n" if $size;

  $desc = "acquire returns a string of 60 characters";

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

sleep TICS;

{
  my $desc = "tacet returns a string of 60 characters";
  my $wire = Gondwana::tacet;
  my $size = length $wire;
  my $bool = ( $size == 60 );

  ok( $bool, $desc );
  print $bool ? "\n" : "\t$size -> '$wire'\n\n";
}

sleep TICS;

{
  my ( $desc, $bool );
  $desc = 'regulus defined';
  $bool = defined &Gondwana::regulus;

  ok( $bool, $desc );

  $desc = 'regulus default returns true';
  $bool = Gondwana::regulus;

  ok( $bool, $desc );
  print "\n";
}

sub mismatch {
  my $pref = shift;
  my @arks = &{$pref};
  my $name = shift || 'process';
  my $size = scalar @arks;
  my $zero = ( $size % 2 );
  my $desc = "$name returns a sorted balanced list of strings";
  my $reps = Gondwana::regulus 'clefs';
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

sleep TICS;

mismatch( \&Gondwana::keynotes, 'keynotes' );

sleep TICS;

mismatch( \&Gondwana::lapidary, 'lapidary' );

sleep TICS;

{
  my $desc = 'comparison of keynotes and lapidary';
  my @arks = Gondwana::keynotes;
  my @star = Gondwana::lapidary;
  my ( $size, $span, $errs ) = ( 0, 0, 0 );
  my $accu = q//;

  $size = scalar @arks;
  $span = scalar @star;

  if ( $size == $span ) {
    for ( my $ndex = 0 ; $ndex < $size ; $ndex++ ) {
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

sleep TICS;

{
  my @arks = Gondwana::sanguine;
  my @star = Gondwana::viridian;
  my $size = scalar @arks;
  my $span = scalar @star;
  my $desc = "quantity comparison of sanguine and viridian";

  is( $size, $span, $desc );
  print "\n";
}

sleep TICS;

{
  my @arts = Gondwana::machine;
  my @fork = ();
  my $size = scalar @arts;
  my $desc = "machine returns a list of 21 strings";
  my $summ = 0;
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

  $desc = "tension returns an empty list by default";
  @fork = Gondwana::tension;
  $size = scalar @fork;

  ok( !$size, $desc );
  print "\n";
}

sleep TICS;

{
  my @gear = Gondwana::pickaxe;
  my $desc = "pickaxe returns a sorted list of strings";

  ok( @gear, $desc );
  print "\t-> @gear\n\n";
}

sleep TICS;

{
  my $desc = "hedgerow returns a list of strings";
  my @gear = Gondwana::pickaxe;
  my @arms = ();
  my $size = 0;
  my $errs = 0;

  foreach my $harp (@gear) {
    @arms = Gondwana::hedgerow $harp;
    $size = scalar @arms;
    $errs++ unless $size;
  }

  ok( !$errs, $desc );
  print $errs ? "\n" : "\t-> @arms\n\n";

  $desc = "hedgerow returns an empty list by default";
  @arms = Gondwana::hedgerow;
  $size = scalar @arms;

  ok( !$size, $desc );
  print "\n";
}

sleep TICS;

print "\t\Utest completed\t";
done_testing;
print "\n";

