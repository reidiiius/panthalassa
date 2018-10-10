#!/usr/bin/env perl

require "giraffidae.pm";

sub pegBox {
  my $drac = $_[0], $head = $_[1], $tail = $_[2];
  return substr($drac, $head, $tail) . substr($drac, 0, $head);
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

sub Tm {
  return "\t" . $_[0] . "-$_[1]" . '-sv' . time . "\n";
}

sub tuning_CGDAE {
  my $data = $ArtioDactyla{$_[0]};
  print Tm $_[0], 'cgdae';
  print En $data;
  print An $data;
  print Dn $data;
  print Gn $data;
  print Cn $data;
}

sub tuning_BEADGCF {
  my $data = $ArtioDactyla{$_[0]};
  print Tm $_[0], 'beadgcf';
  print Fn $data;
  print Cn $data;
  print Gn $data;
  print Dn $data;
  print An $data;
  print En $data;
  print Bn $data;
}

sub tuning_EADGBE {
  my $data = $ArtioDactyla{$_[0]};
  print Tm $_[0], 'eadgbe';
  print En $data;
  print Bn $data;
  print Gn $data;
  print Dn $data;
  print An $data;
  print En $data;
}

