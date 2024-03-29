package Laurasia;

use warnings;
use strict;

use constant {
  ANSI => 33,
  BARE => 0,
  CEIL => 72,
  CURB => 10,
};

sub penlight {
  my $snip = shift;
  my $code = shift || ANSI;
  my ( $esc, $cse ) = ( "\e[0;${code}m", "\e[0m" );
  my $glow = $esc . $snip . $cse;

  return $glow;
}

sub chaplain {
  my $vine = shift;
  my $code = shift || ANSI;

  $vine =~ s/\e\[0;${code}m//g;
  $vine =~ s/\e\[0m//g;

  return $vine;
}

sub caution {
  my $word = shift;
  my $span = shift || CURB;
  my $code = shift || 91;
  my $snip = substr( $word, 0, $span );
  my $errs = penlight( "$snip ?", $code );

  return $errs;
}

sub anomaly {
  my $flaw = shift || 'unknown';
  my ( $name, $file, $line ) = caller;
  my $grab = "$name, $file, $line, $flaw";
  my $info = caution( $grab, CEIL );

  return $info;
}

sub boundary {
  my $word = shift;
  my $span = shift || CURB;
  my $size = length $word;
  my $bout = ( $size <= $span );

  return $bout;
}

sub invert {
  my $yarn = lc shift;
  my $span = length $yarn;
  my ( $size, $wide, $diff, $sign );
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

  $size = length $wire;
  $wide = ( $size == $span );
  $diff = ( $wire ne $yarn );
  $sign = ( $wide and $diff ) ? $wire : $yarn;

  return $sign;
}

sub refine {
  my $yarn = shift;
  my ( $size, $wide, $diff, $cord );
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

  $size = length $wire;
  $wide = ( $size >= 24 and $size <= CEIL );
  $diff = ( $wire ne $yarn );
  $cord = ( $wide and $diff ) ? $wire : $yarn;

  return $cord;
}

sub pegBox {
  my ( $data, $head, $tail ) = @_;
  my $zero = 0;
  my $hemp = substr( $data, $head, $tail );
  my $flax = substr( $data, $zero, $head );
  my $cord = $hemp . $flax;

  $cord = refine $cord unless BARE;

  return $cord;
}

sub wreath {
  my $sign = shift || "u$<";
  my $tune = shift || "p$$";
  my $code = shift || ANSI;
  my $glow = penlight( "$sign-$tune-i$^T", $code );

  return $glow;
}

sub lattice {
  if (@_) {
    foreach my $crow (@_) {
      print "\t$crow\n";
    }
    print "\n";
  }
  else {
    my $flaw = 'Argument list is empty';
    my $info = anomaly $flaw;

    print {*STDERR} "\n\t$info\n\n";
    return 0;
  }
}

sub tableau {
  if (@_) {
    my $cols = 8;

    while ( my ( $ndex, $item ) = each @_ ) {
      print $/ if $ndex % $cols == 0;
      print "\t$item";
    }
    print $/;
  }
  else {
    my $flaw = 'Argument list is empty';
    my $info = anomaly $flaw;

    print {*STDERR} "\n\t$info\n\n";
    return 0;
  }
}

sub dashboard {
  my ( $flaw, $info );

  if (@_) {
    my @menu = ();
    my ( $size, $item );

    foreach my $pref (@_) {
      if ( ref $pref eq 'CODE' ) {
        @menu = &{$pref};
        $size = scalar @menu;
        $item = 0;

        while ( $item < $size ) {
          print "\n" if $item % 7 == 0;
          print "\t$menu[$item]";
        }
        continue {
          $item++;
        }
      }
      else {
        $flaw = 'Argument not reference';
        $info = anomaly $flaw;

        print {*STDERR} "\n\t$info\n\n";
        return 0;
      }
      print "\n";
    }
    print "\n";
  }
  else {
    $flaw = 'Argument list is empty';
    $info = anomaly $flaw;

    print {*STDERR} "\n\t$info\n\n";
    return 0;
  }
}

sub examples {
  my $snip = penlight( 'Usage:', 96 );
  my @temp = split( '/', "$0" );
  my $name = $temp[-1];
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
  foreach my $help (@tips) {
    print "\t\t$help\n\n";
  }

  return 1 unless $@;
}

1;

