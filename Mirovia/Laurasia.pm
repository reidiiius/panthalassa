package Laurasia;

use warnings;
use strict;

sub invert {
  my $yarn = shift;
  my $span = length($yarn);
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

  my $size = length($wire);

  if ( $size == $span ) {
    $wire;
  }
  else {
    $yarn;
  }
}

sub refine {
  my $yarn = shift;
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

  my $size = length($wire);

  if ( $size >= 24 and $size <= 72 ) {
    $wire;
  }
  else {
    $yarn;
  }
}

sub pegBox {
  my ( $data, $head, $tail ) = ( $_[0], $_[1], $_[2] );
  my $cord = substr( $data, $head, $tail ) . substr( $data, 0, $head );
  $cord = refine($cord);

  "\t" . $cord . "\n";
}

sub str_Bj {
  my $data = shift;
  pegBox( $data, 50, 10 );
}

sub str_Fn {
  my $data = shift;
  pegBox( $data, 25, 35 );
}

sub str_Cn {
  my $data = shift;
  pegBox( $data, 0, 60 );
}

sub str_Gn {
  my $data = shift;
  pegBox( $data, 35, 25 );
}

sub str_Dn {
  my $data = shift;
  pegBox( $data, 10, 50 );
}

sub str_An {
  my $data = shift;
  pegBox( $data, 45, 15 );
}

sub str_En {
  my $data = shift;
  pegBox( $data, 20, 40 );
}

sub str_Bn {
  my $data = shift;
  pegBox( $data, 55, 05 );
}

sub str_Fk {
  my $data = shift;
  pegBox( $data, 30, 30 );
}

sub wreath {
  my ( $sign, $tune ) = ( $_[0], $_[1] );
  my ( $esc, $cse ) = ( "\033[0;33m", "\033[0m" );
  my $crown = $sign . "-$tune" . '-i' . time;

  "\t$esc" . $crown . "$cse\n";
}

sub beadgcf {
  my ( $tune, $sign, $data ) = ( $_[0], $_[1], $_[2] );
  my $diadem = wreath( $sign, $tune );

  print $diadem,
    str_Fn($data),
    str_Cn($data),
    str_Gn($data),
    str_Dn($data),
    str_An($data),
    str_En($data),
    str_Bn($data);
}

sub bfbfb {
  my ( $tune, $sign, $data ) = ( $_[0], $_[1], $_[2] );
  my ( $bn, $fn ) = ( str_Bn($data), str_Fn($data) );
  my $diadem = wreath( $sign, $tune );

  print $diadem, $bn, $fn, $bn, $fn, $bn;
}

sub cgdae {
  my ( $tune, $sign, $data ) = ( $_[0], $_[1], $_[2] );
  my $diadem = wreath( $sign, $tune );

  print $diadem,
    str_En($data),
    str_An($data),
    str_Dn($data),
    str_Gn($data),
    str_Cn($data);
}

sub dadgad {
  my ( $tune, $sign, $data ) = ( $_[0], $_[1], $_[2] );
  my ( $an, $dn, $gn ) = ( str_An($data), str_Dn($data), str_Gn($data) );
  my $diadem = wreath( $sign, $tune );

  print $diadem, $dn, $an, $gn, $dn, $an, $dn;
}

sub dgdgbd {
  my ( $tune, $sign, $data ) = ( $_[0], $_[1], $_[2] );
  my ( $gn, $bn, $dn ) = ( str_Gn($data), str_Bn($data), str_Dn($data) );
  my $diadem = wreath( $sign, $tune );

  print $diadem, $dn, $bn, $gn, $dn, $gn, $dn;
}

sub eadgbe {
  my ( $tune, $sign, $data ) = ( $_[0], $_[1], $_[2] );
  my ( $gn, $dn, $an, $en, $bn ) = (
    str_Gn($data), str_Dn($data), str_An($data), str_En($data),
    str_Bn($data)
  );
  my $diadem = wreath( $sign, $tune );

  print $diadem, $en, $bn, $gn, $dn, $an, $en;
}

sub fkbjdn {
  my ( $tune, $sign, $data ) = ( $_[0], $_[1], $_[2] );
  my ( $dn, $bj, $fk ) = ( str_Dn($data), str_Bj($data), str_Fk($data) );
  my $diadem = wreath( $sign, $tune );

  print $diadem, $dn, $bj, $fk, $dn, $bj, $fk;
}

1;

