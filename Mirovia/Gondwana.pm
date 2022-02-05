package Gondwana;

use warnings;
use strict;

my %Metalograph = (
  'j2'      => "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ AgUr ____ FePu ",
  'j3'      => "HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ____ FeUr ",
  'j5'      => "PbCu ____ AuSn ____ AgHg TiFe FeTi ____ ____ SnAu ____ CuPb ",
  'j6'      => "HgAu ____ SnPb ____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp ",
  'k1'      => "____ FeUr HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ",
  'k2'      => "NpCu ____ ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ",
  'k5'      => "UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ",
  'k6'      => "HgAg ____ SnAu ____ CuPb PbCu ____ AuSn ____ ____ TiFe FeTi ",
  'n0'      => "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ",
  'j17'     => "____ ____ SnAu ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ",
  'j23'     => "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ AgUr ____ FePu ",
  'j25'     => "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb ",
  'j26'     => "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ",
  'j36'     => "HgAu ____ SnPb UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp ",
  'j56'     => "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ____ ____ SnPb ",
  'k12'     => "____ AgUr ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ",
  'k15'     => "____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ",
  'k25'     => "NpCu ____ ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ",
  'k26'     => "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb FeCu ",
  'k34'     => "PbCu ____ AuSn ____ ____ TiFe FeTi HgAg ____ SnAu ____ CuPb ",
  'k56'     => "HgAu ____ SnPb ____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp ",
  'j236'    => "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb NpCu ____ ____ FePu ",
  'j256'    => "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb ",
  'j2k5'    => "FeCu HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb ",
  'j2k6'    => "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ ____ TiSn FePu ",
  'j2l3'    => "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ AgUr ____ FePu ",
  'j3k5'    => "NpCu ____ TiSn FePu ____ PuFe ____ ____ CuNp PbAu ____ AuPb ",
  'j3k6'    => "HgTi ____ SnNp UrAu ____ PbPb ____ AuUr ____ ____ TiHg FeFe ",
  'j5l6'    => "PbCu ____ AuSn ____ AgHg TiFe FeTi HgAg ____ ____ ____ CuPb ",
  'k125'    => "____ AgUr ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ",
  'k1j5'    => "____ AuUr NpSn ____ TiHg FeFe HgTi ____ ____ UrAu ____ PbPb ",
  'k1j6'    => "____ PuFe SnTi ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ",
  'k256'    => "HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb FeCu ",
  'k2j5'    => "NpCu ____ ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ",
  'k2j6'    => "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ FeCu ",
  'k2m1'    => "____ ____ TiSn FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ",
  'k6m5'    => "HgAg ____ SnAu ____ CuPb PbCu ____ ____ ____ AgHg TiFe FeTi ",
  'n167'    => "NpCu ____ ____ FePu ____ PuFe SnTi ____ CuNp PbAu ____ AuPb ",
  'n345'    => "____ PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ TiSn FePu ",
  'n5l2'    => "HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb FeCu ",
  'n6m2'    => "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ ",
  'j17l2'   => "HgAg ____ ____ ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ",
  'j23k6'   => "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ ____ TiSn FePu ",
  'j25l6'   => "TiCu FeMn ____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb ",
  'j26l3'   => "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb NpCu ____ ____ FePu ",
  'j2k34'   => "TiCu FeMn ____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb ",
  'j2k56'   => "HgHg PuFe ____ ____ CuNp PbAu ____ ____ NpCu ____ TiSn FePu ",
  'j34k6'   => "HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ TiCu FeMn ",
  'j56l7'   => "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp HgAu ____ ____ ",
  'k12j5'   => "____ AgUr ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ",
  'k17j5'   => "TiCu FeMn HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ ",
  'k2j17'   => "____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb TiCu FeMn ",
  'k25m1'   => "____ ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ",
  'k26m5'   => "HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ",
  'k2j56'   => "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp ____ ____ AuPb ",
  'k34m2'   => "PbCu ____ ____ ____ AgHg TiFe FeTi HgAg ____ SnAu ____ CuPb ",
  'k56m4'   => "HgAu ____ SnPb ____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp ",
  'n25m6'   => "TiCu FeMn HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb ",
  'n26l5'   => "____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ",
  'n45l2'   => "HgTi ____ ____ UrAu ____ PbPb ____ AuUr NpSn ____ TiHg FeFe ",
  'n67m2'   => "____ AuUr ____ ____ TiHg FeFe HgTi ____ SnNp UrAu ____ PbPb ",
  'j136l7'  => "____ ____ SnPb UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ",
  'j167l2'  => "HgAu ____ ____ ____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp ",
  'j246l3'  => "HgHg PuFe SnTi ____ CuNp ____ ____ AuPb NpCu ____ ____ FePu ",
  'j26l34'  => "HgHg PuFe SnTi UrAg ____ ____ ____ AuPb NpCu ____ ____ FePu ",
  'j2k6m5'  => "HgHg PuFe ____ ____ CuNp PbAu ____ ____ ____ AgUr TiSn FePu ",
  'j2k6l3'  => "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ ____ TiSn FePu ",
  'j346l5'  => "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp ____ ____ AuPb ",
  'j3k5m4'  => "HgAu ____ SnPb UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp ",
  'k135m4'  => "____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp HgAu ____ SnPb ",
  'k157m6'  => "HgHg PuFe SnTi ____ CuNp PbAu ____ ____ NpCu ____ ____ FePu ",
  'k1j6l7'  => "____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp HgAu ____ ____ ",
  'k257m1'  => "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ",
  'k25m17'  => "____ AgUr TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ",
  'k2j5m1'  => "____ ____ TiSn FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ",
  'k2j5l6'  => "NpCu ____ ____ FePu HgHg PuFe SnTi UrAg ____ ____ ____ AuPb ",
  'k345m2'  => "UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp HgAu ____ SnPb ",
  'n167m4'  => "HgAu ____ ____ UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ",
  'n345l7'  => "____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp HgAu ____ SnPb ",
  'j2k56m4' => "HgHg PuFe ____ ____ CuNp ____ ____ AuPb NpCu ____ TiSn FePu ",
  'j3k56m4' => "HgTi ____ SnNp UrAu ____ ____ ____ AuUr NpSn ____ TiHg FeFe ",
  'k1j56l7' => "____ AuUr NpSn ____ TiHg FeFe HgTi ____ SnNp UrAu ____ ____ ",
  'k2j56l7' => "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp PbAu ____ ____ ",
);

## synonyms
$Metalograph{'j2h'} =
  'HgCu PuMn ____ ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ';

$Metalograph{'j5h'} =
  'UrCu ____ PbSn ____ AuHg NpFe AgTi ____ ____ HgAu ____ SnPb ';

$Metalograph{'k2h'} =
  'HgCu ____ ____ MnPu CuHg PbFe ____ AuAg ____ AgAu ____ FePb ';

$Metalograph{'k6h'} =
  'HgAu ____ SnPb ____ CuUr PbSn ____ AuHg ____ ____ TiAg FeNp ';

$Metalograph{'j36h'} =
  'HgTi ____ SnNp UrAu ____ PbPb ____ AuUr NpSn ____ ____ FeFe ';

$Metalograph{'k15h'} =
  '____ AuUr NpSn ____ TiHg FeFe ____ ____ SnNp UrAu ____ PbPb ';

$Metalograph{'j2k5h'} =
  'MnCu CuMn ____ ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ';

$Metalograph{'j2l3h'} =
  'HgCu PuMn SnSn ____ ____ PbFe ____ AuAg ____ AgAu ____ FePb ';

$Metalograph{'k2j6h'} =
  'HgAu ____ ____ MnCu CuMn PbSn ____ AuHg NpFe ____ ____ FeNp ';

$Metalograph{'k2m1h'} =
  '____ ____ SnSn MnPu CuHg PbFe ____ AuAg ____ AgAu ____ FePb ';

$Metalograph{'j167l2h'} =
  'HgHg ____ ____ ____ CuNp PbAu ____ AuPb NpCu ____ TiSn FePu ';

$Metalograph{'k345m2h'} =
  'NpCu ____ ____ ____ HgHg PuFe SnTi ____ CuNp PbAu ____ AuPb ';

$Metalograph{'i0'} = &tacet;

sub tacet {
  '____ ' x 12;
}

sub acquire {
  my $sign = shift;
  $Metalograph{$sign};
}

sub membership {
  my $sign = shift;
  exists $Metalograph{$sign};
}

sub gemstone {
  my @corundum = qw/
    i0 j136l7 j167l2 j167l2h j17 j17l2 j2
    j23 j236 j23k6 j246l3 j26 j26l3 j26l34
    j2h j2k56 j2k56m4 j2k6 j2k6l3 j2k6m5 j2l3
    j2l3h j3 j34k6 j36 j36h j3k56m4 j3k5m4
    j3k6 j6 k157m6 k1j6 k256 k26 k26m5
    k2j17 k2j6 k2j6h k56 k56m4 k6 k6h
    k6m5 n0 n167m4 n26l5 n345 n45l2 n5l2
    /;

  my @emerald = qw/
    i0 k135m4 k345m2 k345m2h k34 k34m2 k2
    k12 k125 k12j5 k257m1 k25 k25m1 k25m17
    k2h k2j56 k2j56l7 k2j5 k2j5m1 k2j5l6 k2m1
    k2m1h k1 k17j5 k15 k15h k1j56l7 k1j6l7
    k1j5 k5 j346l5 j3k5 j256 j25 j25l6
    j2k34 j2k5 j2k5h j56 j56l7 j5 j5h
    j5l6 n0 n345l7 n25m6 n167 n67m2 n6m2
    /;

  ( @corundum, @emerald );
}

1;

