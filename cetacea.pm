#!/usr/bin/env perl

require "giraffidae.pm";

sub pegBox {
  my $drac = $_[0], $head = $_[1], $tail = $_[2];
  return substr($drac, $head, $tail) . substr($drac, 0, $head);
}

sub Bj {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 50, 10) . "\n";
}

sub Fn {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 25, 35) . "\n";
}

sub Cn {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 00, 60) . "\n";
}

sub Gn {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 35, 25) . "\n";
}

sub Dn {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 10, 50) . "\n";
}

sub An {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 45, 15) . "\n";
}

sub En {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 20, 40) . "\n";
}

sub Bn {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 55, 05) . "\n";
}

sub Fk {
  my $qp = $_[0];
  return "\t" . pegBox($qp, 30, 30) . "\n";
}

sub Tm {
  return "\t" . $_[0] . "-$_[1]" . '-sv' . time . "\n";
}

sub memberP {
  my $count = 0;
  foreach my $item (%ArtioDactyla) {
    if ($count % 2 == 0) {
      if ($item eq $_[0]) {
        return $item;
      }
    }
    $count += 1;
  }
}

sub exchequer {
  my $preset = 'n0';
  if (not $_[0]) {
    return $preset;
  }
  else {
    my $clave = memberP($_[0]);
    if (not $clave) {
      $clave = $preset;
    }
    return $clave; 
  }
}

sub beadgcf {
  my $sign = exchequer $_[0];
  my $data = $ArtioDactyla{$sign};
  print Tm $sign, 'beadgcf';
  print Fn $data;
  print Cn $data;
  print Gn $data;
  print Dn $data;
  print An $data;
  print En $data;
  print Bn $data;
}

sub bfbfb {
  my $sign = exchequer $_[0];
  my $data = $ArtioDactyla{$sign};
  print Tm $sign, 'bfbfb';
  print Bn $data;
  print Fn $data;
  print Bn $data;
  print Fn $data;
  print Bn $data;
}

sub cgdae {
  my $sign = exchequer $_[0];
  my $data = $ArtioDactyla{$sign};
  print Tm $sign, 'cgdae';
  print En $data;
  print An $data;
  print Dn $data;
  print Gn $data;
  print Cn $data;
}

sub eadgbe {
  my $sign = exchequer $_[0];
  my $data = $ArtioDactyla{$sign};
  print Tm $sign, 'eadgbe';
  print En $data;
  print Bn $data;
  print Gn $data;
  print Dn $data;
  print An $data;
  print En $data;
}

sub fkbjdn {
  my $sign = exchequer $_[0];
  my $data = $ArtioDactyla{$sign};
  print Tm $sign, 'fkbjdn';
  print Dn $data;
  print Bj $data;
  print Fk $data;
  print Dn $data;
  print Bj $data;
  print Fk $data;
}

sub displayMenu {
  my @corundum = (
  'j136y7', 'j167y2', 'j17', 'j17y2', 'j2', 'j23', 'j236',
  'j23k6', 'j246y3', 'j26', 'j26y3', 'j26y34', 'j2k56', 'j2k56x4',
  'j2k6', 'j2k6x5', 'j2k6y3', 'j2y3', 'j3', 'j34k6', 'j36',
  'j3k56x4', 'j3k5x4', 'j3k6', 'j6', 'k157x6', 'k1j6', 'k256',
  'k26', 'k26x5', 'k2j17', 'k2j6', 'k56', 'k56x4', 'k6',
  'k6x5', 'n0', 'n167x4', 'n26y5', 'n345', 'n45y2', 'n5y2'
  );

  my @emerald = (
  'k135x4', 'k345x2', 'k34', 'k34x2', 'k2', 'k12', 'k125',
  'k12j5', 'k257x1', 'k25', 'k25x1', 'k25x17', 'k2j56', 'k2j56y7',
  'k2j5', 'k2j5y6', 'k2j5x1', 'k2x1', 'k1', 'k17j5', 'k15',
  'k1j56y7', 'k1j6y7', 'k1j5', 'k5', 'j346y5', 'j3k5', 'j256',
  'j25', 'j25y6', 'j2k34', 'j2k5', 'j56', 'j56y7', 'j5',
  'j5y6', 'n0', 'n345y7', 'n25x6', 'n167', 'n67x2', 'n6x2'
  );

  my $i = 0;
  foreach (@corundum) {
    if ($i % 7 == 0) {
      print "\n";
    }
    print "\t$_";
    $i += 1;
  }
  print "\n";

  $i = 0;
  foreach (@emerald) {
    if ($i % 7 == 0) {
      print "\n";
    }
    print "\t$_";
    $i += 1;
  }
  print "\n\n";
}

