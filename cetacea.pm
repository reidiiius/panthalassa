#!/usr/bin/env perl

  require "giraffidae.pm";

sub tuning_CGDAE {
  my $qp = $ArtioDactyla{$_[0]};
  print "\t" . $_[0] . '-v' . time . "\n";
  print "\t" . substr($qp, 20, 40) . substr($qp, 00, 20) . "\n"; # En
  print "\t" . substr($qp, 45, 15) . substr($qp, 00, 45) . "\n"; # An
  print "\t" . substr($qp, 10, 50) . substr($qp, 00, 10) . "\n"; # Dn
  print "\t" . substr($qp, 35, 25) . substr($qp, 00, 35) . "\n"; # Gn
  print "\t" . substr($qp, 00, 60) . substr($qp, 00, 00) . "\n"; # Cn
}

sub tuning_BEADGCF {
  my $qp = $ArtioDactyla{$_[0]};
  print "\t" . $_[0] . '-v' . time . "\n";
  print "\t" . substr($qp, 25, 35) . substr($qp, 00, 25) . "\n"; # Fn
  print "\t" . substr($qp, 00, 60) . substr($qp, 00, 00) . "\n"; # Cn
  print "\t" . substr($qp, 35, 25) . substr($qp, 00, 35) . "\n"; # Gn
  print "\t" . substr($qp, 10, 50) . substr($qp, 00, 10) . "\n"; # Dn
  print "\t" . substr($qp, 45, 15) . substr($qp, 00, 45) . "\n"; # An
  print "\t" . substr($qp, 20, 40) . substr($qp, 00, 20) . "\n"; # En
  print "\t" . substr($qp, 55, 05) . substr($qp, 00, 55) . "\n"; # Bn
}

sub tuning_EADGBE {
  my $qp = $ArtioDactyla{$_[0]};
  print "\t" . $_[0] . '-v' . time . "\n";
  print "\t" . substr($qp, 20, 40) . substr($qp, 00, 20) . "\n"; # En
  print "\t" . substr($qp, 55, 05) . substr($qp, 00, 55) . "\n"; # Bn
  print "\t" . substr($qp, 35, 25) . substr($qp, 00, 35) . "\n"; # Gn
  print "\t" . substr($qp, 10, 50) . substr($qp, 00, 10) . "\n"; # Dn
  print "\t" . substr($qp, 45, 15) . substr($qp, 00, 45) . "\n"; # An
  print "\t" . substr($qp, 20, 40) . substr($qp, 00, 20) . "\n"; # En
}

