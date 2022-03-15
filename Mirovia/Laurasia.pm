package Laurasia;

use warnings;
use strict;

use constant BARE => 0;
use constant CURB => 10;
use constant CEIL => 56;

sub penlight {
  my $snip = shift;
  my $code = shift || 33;
  my ( $esc, $cse ) = ( "\e[0;${code}m", "\e[0m" );

  "${esc}$snip${cse}";
}

sub chaplain {
  my $vine = shift;
  my $code = shift || 33;

  $vine =~ s/\e\[0;${code}m//g;
  $vine =~ s/\e\[0m//g;

  $vine;
}

sub caution {
  my $word = shift;
  my $span = shift || CURB;
  my $code = shift || 91;
  my $snip = substr( $word, 0, $span );
  my $errs = penlight( "$snip ?", $code );

  "\t$errs\n";
}

sub anomaly {
  my $filet = shift;
  my $aline = shift;
  my $catch = shift || 'conditional';
  my $about = "$filet, line: $aline, $catch";
  my $alert = caution( $about, CEIL );

  $alert;
}

sub boundary {
  my $word = shift;
  my $span = shift || CURB;
  my $size = length $word;

  $size <= $span;
}

sub invert {
  my $yarn = lc shift;
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

  $size == $span and $wire ne $yarn ? $wire : $yarn;
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

  $wire ne $yarn and $size >= 24 and $size <= 72 ? $wire : $yarn;
}

sub pegBox {
  my ( $data, $head, $tail ) = ( $_[0], $_[1], $_[2] );
  my $cord = substr( $data, $head, $tail ) . substr( $data, 0, $head );
  $cord = refine($cord) unless BARE;

  "\t$cord\n";
}

sub wreath {
  my ( $sign, $tune, $code ) = ( $_[0], $_[1], $_[2] || 33 );
  my $crown = penlight( "$sign-$tune-i$^T", $code );

  "\t$crown\n";
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
  for (@tips) {
    print "\t\t$_\n\n";
  }
}

1;

