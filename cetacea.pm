package Cetacea;

use warnings;
use strict;

require "giraffidae.pm";

sub pegBox {
  my ($drac, $head, $tail) = ($_[0], $_[1], $_[2]);
  my $cord = substr($drac, $head, $tail) . substr($drac, 0, $head);
  return "\t" . $cord . "\n";
}

sub Bj {
  my $data = shift;
  return pegBox($data, 50, 10);
}

sub Fn {
  my $data = shift;
  return pegBox($data, 25, 35);
}

sub Cn {
  my $data = shift;
  return pegBox($data, 0, 60);
}

sub Gn {
  my $data = shift;
  return pegBox($data, 35, 25);
}

sub Dn {
  my $data = shift;
  return pegBox($data, 10, 50);
}

sub An {
  my $data = shift;
  return pegBox($data, 45, 15);
}

sub En {
  my $data = shift;
  return pegBox($data, 20, 40);
}

sub Bn {
  my $data = shift;
  return pegBox($data, 55, 05);
}

sub Fk {
  my $data = shift;
  return pegBox($data, 30, 30);
}

sub Tm {
  my ($sign, $tune) = ($_[0], $_[1]);
  my ($esc, $cse) = ("\033[0;33m", "\033[0m");
  my $srl = $sign . "-$tune" . "-sv" . time;
  return "\t$esc" . $srl . "$cse\n";
}

sub tacet {
  my $rest;
  for (my $i = 0; $i < 12; $i++) {
    $rest .= '____ ';
  }
  return $rest; 
}

sub retrieve {
  my $sign = shift;
  my $data = $Giraffidae::ArtioDactyla{$sign};
  if (length($data) != 60) {
    return &tacet;
  }
  else {
    return $data;
  }
}

sub memberP {
  my $qp = shift;
  if ($qp =~ m/^([jkn][0-7]+)+([xy][1-7]+)?$/) {
    if (defined $Giraffidae::ArtioDactyla{$qp}) {
      return $qp;
    }
  }
}

sub sentinel {
  my $qp = shift;
  my $preset = 'n0';
  if (not $qp) {
    return $preset;
  }
  else {
    my $clave = memberP $qp;
    if (not $clave) {
      $clave = $preset;
    }
    return $clave; 
  }
}

sub beadgcf {
  my $qp = shift;
  my $sign = sentinel $qp;
  my $data = retrieve $sign;
  my $tune = 'beadgcf';
  print Tm($sign, $tune),
              Fn($data),
            Cn($data),
          Gn($data),
        Dn($data),
      An($data),
    En($data),
  Bn($data);
}

sub bfbfb {
  my $qp = shift;
  my $sign = sentinel $qp;
  my $data = retrieve $sign;
  my $tune = 'bfbfb';
  print Tm($sign, $tune),
          Bn($data),
        Fn($data),
      Bn($data),
    Fn($data),
  Bn($data);
}

sub cgdae {
  my $qp = shift;
  my $sign = sentinel $qp;
  my $data = retrieve $sign;
  my $tune = 'cgdae';
  print Tm($sign, $tune),
          En($data),
        An($data),
      Dn($data),
    Gn($data),
  Cn($data);
}

sub dadgad {
  my $qp = shift;
  my $sign = sentinel $qp;
  my $data = retrieve $sign;
  my $tune = 'dadgad';
  print Tm($sign, $tune),
            Dn($data),
          An($data),
        Gn($data),
      Dn($data),
    An($data),
  Dn($data);
}

sub dgdgbd {
  my $qp = shift;
  my $sign = sentinel $qp;
  my $data = retrieve $sign;
  my $tune = 'dgdgbd';
  print Tm($sign, $tune),
            Dn($data),
          Bn($data),
        Gn($data),
      Dn($data),
    Gn($data),
  Dn($data);
}

sub eadgbe {
  my $qp = shift;
  my $sign = sentinel $qp;
  my $data = retrieve $sign;
  my $tune = 'eadgbe';
  print Tm($sign, $tune),
            En($data),
          Bn($data),
        Gn($data),
      Dn($data),
    An($data),
  En($data);
}

sub fkbjdn {
  my $qp = shift;
  my $sign = sentinel $qp;
  my $data = retrieve $sign;
  my $tune = 'fkbjdn';
  print Tm($sign, $tune),
            Dn($data),
          Bj($data),
        Fk($data),
      Dn($data),
    Bj($data),
  Fk($data);
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

  return (@corundum, @emerald); 
}

sub displayMenu {
  my @a = gemstone;
  my $n = scalar(@a) / 2;
  my $i = 0;
  foreach my $item (@a) {
    print "\n" if ($i % 7 == 0);
    print "\n" if ($i == $n);
    print "\t$item";
    $i += 1;
  }
  print "\n\n";
}

