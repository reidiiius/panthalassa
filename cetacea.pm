package Cetacea;

use warnings;
use strict;

require "./giraffidae.pm";

sub pegBox {
  my ($data, $head, $tail) = ($_[0], $_[1], $_[2]);
  my $cord = substr($data, $head, $tail) . substr($data, 0, $head);
  return "\t" . $cord . "\n";
}

sub str_Bj {
  my $data = shift;
  return pegBox($data, 50, 10);
}

sub str_Fn {
  my $data = shift;
  return pegBox($data, 25, 35);
}

sub str_Cn {
  my $data = shift;
  return pegBox($data, 0, 60);
}

sub str_Gn {
  my $data = shift;
  return pegBox($data, 35, 25);
}

sub str_Dn {
  my $data = shift;
  return pegBox($data, 10, 50);
}

sub str_An {
  my $data = shift;
  return pegBox($data, 45, 15);
}

sub str_En {
  my $data = shift;
  return pegBox($data, 20, 40);
}

sub str_Bn {
  my $data = shift;
  return pegBox($data, 55, 05);
}

sub str_Fk {
  my $data = shift;
  return pegBox($data, 30, 30);
}

sub diadema {
  my ($sign, $tune) = ($_[0], $_[1]);
  my ($esc, $cse) = ("\033[0;33m", "\033[0m");
  my $srl = $sign . "-$tune" . "-sv" . time;
  return "\t$esc" . $srl . "$cse\n";
}

sub tacet {
  my $rest = '____ ' x 12;
  return $rest; 
}

sub retrieve {
  my $sign = shift;
  if ($sign =~ m/^([jkn][0-7]+)+([xy][1-7]+)?$/) {
    my $data = Giraffidae::acquirobtineo($sign);
    if (defined $data) {
      return $data;
    }
    else {
      return &tacet;
    }
  }
  else {
    return &tacet;
  }
}

sub beadgcf {
  my ($tune, $sign, $data)
   = ($_[0], $_[1], $_[2]); 
  print diadema($sign, $tune),
              str_Fn($data),
            str_Cn($data),
          str_Gn($data),
        str_Dn($data),
      str_An($data),
    str_En($data),
  str_Bn($data);
}

sub bfbfb {
  my ($tune, $sign, $data)
   = ($_[0], $_[1], $_[2]); 
  print diadema($sign, $tune),
          str_Bn($data),
        str_Fn($data),
      str_Bn($data),
    str_Fn($data),
  str_Bn($data);
}

sub cgdae {
  my ($tune, $sign, $data)
   = ($_[0], $_[1], $_[2]); 
  print diadema($sign, $tune),
          str_En($data),
        str_An($data),
      str_Dn($data),
    str_Gn($data),
  str_Cn($data);
}

sub dadgad {
  my ($tune, $sign, $data)
   = ($_[0], $_[1], $_[2]); 
  print diadema($sign, $tune),
            str_Dn($data),
          str_An($data),
        str_Gn($data),
      str_Dn($data),
    str_An($data),
  str_Dn($data);
}

sub dgdgbd {
  my ($tune, $sign, $data)
   = ($_[0], $_[1], $_[2]); 
  print diadema($sign, $tune),
            str_Dn($data),
          str_Bn($data),
        str_Gn($data),
      str_Dn($data),
    str_Gn($data),
  str_Dn($data);
}

sub eadgbe {
  my ($tune, $sign, $data)
   = ($_[0], $_[1], $_[2]);
  print diadema($sign, $tune),
            str_En($data),
          str_Bn($data),
        str_Gn($data),
      str_Dn($data),
    str_An($data),
  str_En($data);
}

sub fkbjdn {
  my ($tune, $sign, $data)
   = ($_[0], $_[1], $_[2]); 
  print diadema($sign, $tune),
            str_Dn($data),
          str_Bj($data),
        str_Fk($data),
      str_Dn($data),
    str_Bj($data),
  str_Fk($data);
}

sub phonoGraph {
  my $tune = $_[0] || 'beadgcf';
  my $sign = $_[1] || 'n0';
  my $data = retrieve $sign;
  my @args = ($tune, $sign, $data);

  if ($tune =~ 'beadgcf') {
    beadgcf(@args);
  }
  elsif ($tune =~ 'bfbfb') {
    bfbfb(@args);
  }
  elsif ($tune =~ 'cgdae') {
    cgdae(@args);
  }
  elsif ($tune =~ 'dadgad') {
    dadgad(@args);
  }
  elsif ($tune =~ 'dgdgbd') {
    dgdgbd(@args);
  }
  elsif ($tune =~ 'eadgbe') {
    eadgbe(@args);
  }
  elsif ($tune =~ 'fkbjdn') {
    fkbjdn(@args);
  } 
  else {
    my $esc = "\033[0;";
    my ($red, $bwn) = ("${esc}31m", "${esc}33m");
    bfbfb("${red}$_[0]$bwn", 'error', &tacet);
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

  return (@corundum, @emerald); 
}

sub displayMenu {
  my @a = &gemstone;
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

1;

