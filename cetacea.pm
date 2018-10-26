package Cetacea;

require "giraffidae.pm";

sub pegBox {
  my ($drac, $head, $tail) = ($_[0], $_[1], $_[2]);
  return substr($drac, $head, $tail) . substr($drac, 0, $head);
}

sub Bj {
  return "\t" . pegBox($data, 50, 10) . "\n";
}

sub Fn {
  return "\t" . pegBox($data, 25, 35) . "\n";
}

sub Cn {
  return "\t" . pegBox($data, 00, 60) . "\n";
}

sub Gn {
  return "\t" . pegBox($data, 35, 25) . "\n";
}

sub Dn {
  return "\t" . pegBox($data, 10, 50) . "\n";
}

sub An {
  return "\t" . pegBox($data, 45, 15) . "\n";
}

sub En {
  return "\t" . pegBox($data, 20, 40) . "\n";
}

sub Bn {
  return "\t" . pegBox($data, 55, 05) . "\n";
}

sub Fk {
  return "\t" . pegBox($data, 30, 30) . "\n";
}

sub Tm {
  my ($esc, $cse) = ("\033[0;33m", "\033[0m");
  return "\t$esc" . $sign . "-$tune" . '-sv' . time . "$cse\n";
}

sub memberP {
  if ($qp =~ m/^([jkn][0-7]+)+([xy][1-7]+)?$/) {
    foreach my $item (keys %Giraffidae::ArtioDactyla) {
      if ($item eq $qp) {
        return $item;
      }
    }
  }
}

sub exchequer {
  local $qp = shift;
  my $preset = 'n0';
  if (not $qp) {
    return $preset;
  }
  else {
    my $clave = memberP;
    if (not $clave) {
      $clave = $preset;
    }
    return $clave; 
  }
}

sub beadgcf {
  local ($sign, $data, $tune);
  $sign = exchequer pop;
  $data = $Giraffidae::ArtioDactyla{$sign};
  $tune = 'beadgcf';
  print Tm, Fn, Cn, Gn, Dn, An, En, Bn;
}

sub bfbfb {
  local ($sign, $data, $tune);
  $sign = exchequer pop;
  $data = $Giraffidae::ArtioDactyla{$sign};
  $tune = 'bfbfb';
  print Tm, Bn, Fn, Bn, Fn, Bn;
}

sub cgdae {
  local ($sign, $data, $tune);
  $sign = exchequer pop;
  $data = $Giraffidae::ArtioDactyla{$sign};
  $tune = 'cgdae';
  print Tm, En, An, Dn, Gn, Cn;
}

sub dadgad {
  local ($sign, $data, $tune);
  $sign = exchequer pop;
  $data = $Giraffidae::ArtioDactyla{$sign};
  $tune = 'dadgad';
  print Tm, Dn, An, Gn, Dn, An, Dn;
}

sub dgdgbd {
  local ($sign, $data, $tune);
  $sign = exchequer pop;
  $data = $Giraffidae::ArtioDactyla{$sign};
  $tune = 'dgdgbd';
  print Tm, Dn, Bn, Gn, Dn, Gn, Dn;
}

sub eadgbe {
  local ($sign, $data, $tune);
  $sign = exchequer pop;
  $data = $Giraffidae::ArtioDactyla{$sign};
  $tune = 'eadgbe';
  print Tm, En, Bn, Gn, Dn, An, En;
}

sub fkbjdn {
  local ($sign, $data, $tune);
  $sign = exchequer pop;
  $data = $Giraffidae::ArtioDactyla{$sign};
  $tune = 'fkbjdn';
  print Tm, Dn, Bj, Fk, Dn, Bj, Fk;
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

