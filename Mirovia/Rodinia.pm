package Rodinia;

use warnings;
use strict;

use Gondwana;
use Laurasia;

sub penlight {
  my $snip = shift;
  my ( $esc, $cse ) = ( "\033[0;33m", "\033[0m" );

  "${esc}$snip${cse}";
}

sub validate {
  my $sign = shift;

  if ( defined $sign ) {
    my ( $size, $span ) = ( length($sign), 9 );

    if ( $size <= $span ) {
      my $reps = qr/^([ijkn][0-7]+)+([lm][1-7]+)?([hi]+)?$/;

      ( $sign =~ $reps and Gondwana::membership $sign ); 
    }
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

  if ( validate $sign )
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
      Laurasia::beadgcf(@args);
    }
    elsif ( $tune eq 'a4'
      or $tune =~ /^bfb/
      or $tune eq 'b5'
      or $tune eq 'd5'
      or $tune =~ /^fbf/
      or $tune =~ /^tritone?/ )
    {
      Laurasia::bfbfb(@args);
    }
    elsif ( $tune =~ /^bouz.*/
      or $tune eq 'cello'
      or $tune =~ /^c?gdae?/
      or $tune eq 'p5'
      or $tune =~ /^mand.*/
      or $tune =~ /^viol.*/ )
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
      my $errs = penlight($snip);
      die "\t$errs\n\n";
    }
  }
  else {
    my $snip = "$sign ?";
    my $errs = penlight($snip);
    print "\t$errs\n";
  }
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

