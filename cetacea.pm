package Cetacea;

use warnings;
use strict;

require './giraffidae.pm';

sub tacet {
  '____ ' x 12;
}

sub pegBox {
  my ( $data, $head, $tail ) = ( $_[0], $_[1], $_[2] );
  my $cord = substr( $data, $head, $tail ) . substr( $data, 0, $head );

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
  my $srl = $sign . "-$tune" . "-sv" . time;

  "\t$esc" . $srl . "$cse\n";
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

sub incorrect {
  my $errs = shift;
  my ( $esc, $cse ) = ( "\033[0;33m", "\033[0m" );

  "\t${esc}$errs ?${cse}\n";
}

sub retrieve {
  my $sign = shift;
  my $data = Giraffidae::acquire($sign);

  if ( defined $data ) {
    $data;
  }
  else {
    &tacet;
  }
}

sub vestibule {
  my $sign = lc( $_[1] );

  if ( $sign =~ /^([jkn][0-7]+)+([xy][1-7]+)?$/
    and Giraffidae::membership $sign )
  {
    my $data = retrieve $sign;
    my $tune = lc( $_[0] );
    my @args = ( $tune, $sign, $data );

    if ( $tune eq 'bass'
      or $tune =~ /^beadgc?/
      or $tune =~ /^b?eadgc/
      or $tune eq 'eadg'
      or $tune eq 'p4' )
    {
      beadgcf(@args);
    }
    elsif ( $tune eq 'a4'
      or $tune =~ /^bfb/
      or $tune eq 'b5'
      or $tune eq 'd5'
      or $tune =~ /^fbf/
      or $tune =~ /^tritone?/ )
    {
      bfbfb(@args);
    }
    elsif ( $tune =~ /^bouz.*/
      or $tune eq 'cello'
      or $tune =~ /^c?gdae?/
      or $tune eq 'p5'
      or $tune =~ /^mand.*/
      or $tune =~ /^viol.*/ )
    {
      cgdae(@args);
    }
    elsif ( $tune eq 'dadgad'
      or $tune =~ /^celt.*/ )
    {
      dadgad(@args);
    }
    elsif ( $tune eq 'banjo'
      or $tune eq 'dobro'
      or $tune =~ /^d?gdgbd/
      or $tune =~ /^open.*/
      or $tune =~ /^slack.*/ )
    {
      dgdgbd(@args);
    }
    elsif ( $tune =~ /dgbe/
      or $tune =~ /gcea/
      or $tune =~ /^gu?itar/
      or $tune =~ /^uku(le)?/ )
    {
      eadgbe(@args);
    }
    elsif ( $tune eq 'fkbjdn'
      or $tune eq 'm3' )
    {
      fkbjdn(@args);
    }
    else {
      die incorrect($tune), "\n";
    }
  }
  else {
    print incorrect($sign);
  }
}

sub gemstone {
  my @corundum = qw/
    j136y7 j167y2 j17 j17y2 j2 j23 j236
    j23k6 j246y3 j26 j26y3 j26y34 j2k56 j2k56x4
    j2k6 j2k6x5 j2k6y3 j2y3 j3 j34k6 j36
    j3k56x4 j3k5x4 j3k6 j6 k157x6 k1j6 k256
    k26 k26x5 k2j17 k2j6 k56 k56x4 k6
    k6x5 n0 n167x4 n26y5 n345 n45y2 n5y2
    /;

  my @emerald = qw/
    k135x4 k345x2 k34 k34x2 k2 k12 k125
    k12j5 k257x1 k25 k25x1 k25x17 k2j56 k2j56y7
    k2j5 k2j5y6 k2j5x1 k2x1 k1 k17j5 k15
    k1j56y7 k1j6y7 k1j5 k5 j346y5 j3k5 j256
    j25 j25y6 j2k34 j2k5 j56 j56y7 j5
    j5y6 n0 n345y7 n25x6 n167 n67x2 n6x2
    /;

  ( @corundum, @emerald );
}

sub displayMenu {
  my @a = &gemstone;
  my $n = scalar(@a) / 2;
  my $i = 0;

  foreach (@a) {
    print "\n" if ( $i % 7 == 0 );
    print "\n" if ( $i == $n );
    print "\t$_";
    $i++;
  }
  print "\n\n";
}

1;

