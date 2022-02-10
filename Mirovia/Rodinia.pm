package Rodinia;

use warnings;
use strict;

use Gondwana;
use Laurasia;

use constant CURB => 9;

sub penlight {
  my $snip = shift;
  my $code = shift || 33;
  my ( $esc, $cse ) = ( "\033[0;${code}m", "\033[0m" );

  "${esc}$snip${cse}";
}

sub boundary {
  my $word = shift;
  my ( $size, $span ) = ( length($word), CURB );

  ( $size <= $span );
}

sub validate {
  my $sign = shift;

  if ( defined $sign and boundary $sign ) {
    my $reps = qr/^([i|j|k|n][0-7]{1,3}){1,2}([l|m][1-7]{1,2})?[h|i]?$/;

    ( $sign =~ $reps and Gondwana::membership $sign );
  }
}

sub retrieve {
  my $sign = shift;
  my $data = Gondwana::acquire($sign);

  if ( defined $data ) {
    $data;
  }
  else {
    Gondwana::tacet;
  }
}

sub vestibule {
  my $sign = lc( $_[1] );

  if ( validate $sign ) {
    my $data = retrieve $sign;
    my $tune = lc( $_[0] );

    if ( $tune =~ /\w+:$/ ) {
      $sign = Laurasia::invert($sign);
      $data = retrieve $sign;
      $tune = substr( $tune, 0, -1 );
    }

    my @args = ( $tune, $sign, $data );

    if ( $tune eq 'bass'
      or $tune =~ /^beadgc?/
      or $tune =~ /^b?eadgc/
      or $tune eq 'eadg'
      or $tune eq 'oud'
      or $tune eq 'p4' )
    {
      Laurasia::beadgcf(@args);
    }
    elsif ( $tune eq 'a4'
      or $tune =~ /^bfb/
      or $tune =~ /[bd]5/
      or $tune =~ /^fbf/
      or $tune =~ /^tritone?/ )
    {
      Laurasia::bfbfb(@args);
    }
    elsif ( $tune =~ /^bouz.*/
      or $tune eq 'cello'
      or $tune =~ /^c?gdae?/
      or $tune eq 'fiddle'
      or $tune eq 'p5'
      or $tune =~ /^mando.*/
      or $tune =~ /^viol[ai].*/ )
    {
      Laurasia::cgdae(@args);
    }
    elsif ( $tune eq 'dadgad'
      or $tune =~ /^celt.*/ )
    {
      Laurasia::dadgad(@args);
    }
    elsif ( $tune eq 'banjo'
      or $tune eq 'dobro'
      or $tune =~ /^d?gdgbd/
      or $tune =~ /^open.*/
      or $tune =~ /^slack.*/ )
    {
      Laurasia::dgdgbd(@args);
    }
    elsif ( $tune =~ /dgbe/
      or $tune eq 'gamba'
      or $tune =~ /gcea/
      or $tune =~ /^gu?itar/
      or $tune =~ /^uk[eu](le)?/ )
    {
      Laurasia::eadgbe(@args);
    }
    elsif ( $tune eq 'fkbjdn'
      or $tune eq 'm3' )
    {
      Laurasia::fkbjdn(@args);
    }
    else {
      my $snip = "$tune ?";
      my $errs = penlight( $snip, 91 );
      print "\t$errs\n\n";
      exit 0;
    }
  }
  else {
    my $snip = "$sign ?";
    my $errs = penlight( $snip, 91 );
    print "\t$errs\n";
  }
}

sub kleenex {
  my $lingo = shift;
  my @altar = sort &Gondwana::gemstone;
  my $colum = 8;
  my $cycle = 1;
  my $accum = '';

  print "\n";
  foreach my $argot (@altar) {
    if ( $argot =~ m"$lingo" ) {
      $accum = $accum . "\t$argot";
      $accum = $accum . "\n" if $cycle % $colum == 0;
      $cycle++;
    }
  }
  print( penlight( $accum, 93 ), "\n" ) if $accum;
  print "\n" if --$cycle % $colum != 0;
}

sub dashboard {
  my @menu = Gondwana::gemstone;
  my $size = scalar(@menu) / 2;
  my $item = 0;

  foreach (@menu) {
    print "\n" if ( $item % 7 == 0 );
    print "\n" if ( $item == $size );
    print "\t$menu[$item]";
    $item++;
  }
  print "\n\n";
}

1;

