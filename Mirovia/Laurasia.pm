package Laurasia;

use warnings;
use strict;

use constant {
  ANSI => 33,
  BARE => 0,
  CEIL => 56,
  CURB => 10,
};

sub penlight {
  my $snip = shift;
  my $code = shift || ANSI;
  my ( $esc, $cse ) = ( "\e[0;${code}m", "\e[0m" );
  my $glow = $esc . $snip . $cse;

  return $glow;
}

sub chaplain {
  my $vine = shift;
  my $code = shift || ANSI;

  $vine =~ s/\e\[0;${code}m//g;
  $vine =~ s/\e\[0m//g;

  return $vine;
}

sub caution {
  my $word = shift;
  my $span = shift || CURB;
  my $code = shift || 91;
  my $snip = substr( $word, 0, $span );
  my $errs = penlight( "$snip ?", $code );

  return $errs;
}

sub anomaly {
  my $file = shift;
  my $line = shift;
  my $grab = shift || 'conditional';
  my $info = "$file, line: $line, $grab";
  my $flaw = caution( $info, CEIL );

  return $flaw;
}

sub boundary {
  my $word = shift;
  my $span = shift || CURB;
  my $size = length $word;
  my $bout = ( $size <= $span );

  return $bout;
}

sub invert {
  my $yarn = lc shift;
  my $span = length $yarn;
  my ( $size, $wide, $diff, $sign );
  my $wire = $yarn;

  $wire =~ y/jklm134567/kjml317654/;
  $wire =~ s/76/67/;
  $wire =~ s/75/57/;
  $wire =~ s/65/56/;
  $wire =~ s/64/46/;
  $wire =~ s/54/45/;
  $wire =~ s/32/23/;
  $wire =~ s/31/13/;
  $wire =~ s/21/12/;

  $size = length $wire;
  $wide = ( $size == $span );
  $diff = ( $wire ne $yarn );
  $sign = ( $wide and $diff ) ? $wire : $yarn;

  return $sign;
}

sub refine {
  my $yarn = shift;
  my ( $size, $wide, $diff, $cord );
  my $wire = $yarn;

  $wire =~ s/Ti/o/g;
  $wire =~ s/Mn/p/g;
  $wire =~ s/Fe/q/g;
  $wire =~ s/Cu/r/g;
  $wire =~ s/Ag/s/g;
  $wire =~ s/Sn/t/g;
  $wire =~ s/Au/u/g;
  $wire =~ s/Hg/v/g;
  $wire =~ s/Pb/w/g;
  $wire =~ s/Ur/x/g;
  $wire =~ s/Np/y/g;
  $wire =~ s/Pu/z/g;
  $wire =~ s/__/_/g;

  $size = length $wire;
  $wide = ( $size >= 24 and $size <= 72 );
  $diff = ( $wire ne $yarn );
  $cord = ( $wide and $diff ) ? $wire : $yarn;

  return $cord;
}

sub pegBox {
  my ( $data, $head, $tail, $zero ) = ( @_, 0 );
  my $hemp = substr( $data, $head, $tail );
  my $flax = substr( $data, $zero, $head );
  my $cord = $hemp . $flax;

  $cord = refine $cord unless BARE;

  return $cord;
}

sub wreath {
  my $sign = shift;
  my $tune = shift;
  my $code = shift || ANSI;
  my $glow = penlight( "$sign-$tune-i$^T", $code );

  return $glow;
}

sub examples {
  my $snip = penlight( 'Usage:', 96 );
  my $name = "$0";
  my $harp = 'cgdae';
  my @tips = (
    "chmod u+x $name ",
    "$name ",
    "$name n0 j6 ",
    "$name : j6 ",
    "$name ? j6 ",
    "$name - yq j6 ",
    "$name $harp n0 j3 j36 ",
    "$name $harp: j3 j36 j236 ",
    "$name $harp? '^([jk]\\d)+\$' ",
    "$name $harp- wq n0 wu j2 ",
    "$name $harp gamut | less ",
  );

  print "\n\t$snip\n";
  foreach my $help (@tips) {
    print "\t\t$help\n\n";
  }
}

1;

