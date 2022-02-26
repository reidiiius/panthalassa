package Rodinia;

use warnings;
use strict;

use Gondwana;
use Laurasia;

use constant CURB => 9;

sub penlight {
  my $snip = shift;
  my $code = shift || 33;
  my ( $esc, $cse ) = ( "\e[0;${code}m", "\e[0m" );

  "${esc}$snip${cse}";
}

sub chaplain {
  my $vine = shift;
  my $code = shift || 33;

  $vine =~ s/\e\[0;${code}m//g;
  $vine =~ s/\e\[0m//g;

  $vine;
}

sub caution {
  my $word = shift;
  my $span = shift || CURB;
  my $code = shift || 91;
  my $snip = substr( $word, 0, $span ) . ' ?';
  my $errs = penlight( $snip, $code );

  "\t$errs\n";
}

sub boundary {
  my $word = shift;
  my $span = shift || CURB;
  my $size = length($word);

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

  ( defined $data ) ? $data : Gondwana::tacet;
}

sub vestibule {
  my $sign = lc( $_[1] );

  if ( validate $sign ) {
    my $data = retrieve $sign;
    my $tune = lc( $_[0] );
    my @args = ( $tune, $sign, $data );

    if ( $tune eq 'bass'
      or $tune eq 'eadg'
      or $tune eq 'p4'
      or $tune =~ /^beadgc?/a
      or $tune =~ /^b?eadgc/a )
    {
      Laurasia::beadgcf(@args);
    }
    elsif ( $tune eq 'a4'
      or $tune =~ /^bfb/a
      or $tune =~ /[bd]5/a
      or $tune =~ /^fbf/a
      or $tune =~ /^tritone?/a )
    {
      Laurasia::bfbfb(@args);
    }
    elsif ( $tune eq 'cello'
      or $tune eq 'fiddle'
      or $tune eq 'p5'
      or $tune =~ /^bouz.*/a
      or $tune =~ /^c?gdae?/a
      or $tune =~ /^mando.*/a
      or $tune =~ /^viol[ai].*/a )
    {
      Laurasia::cgdae(@args);
    }
    elsif ( $tune eq 'dadgad'
      or $tune =~ /^celt.*/a )
    {
      Laurasia::dadgad(@args);
    }
    elsif ( $tune eq 'banjo'
      or $tune =~ /^d?gdgbd/a
      or $tune =~ /^open.*/a
      or $tune =~ /^slack.*/a )
    {
      Laurasia::dgdgbd(@args);
    }
    elsif ( $tune eq 'eadgbe'
      or $tune =~ /dgbe/a
      or $tune =~ /gcea/a
      or $tune =~ /^gu?itar/a )
    {
      Laurasia::eadgbe(@args);
    }
    elsif ( $tune eq 'fkbjdn'
      or $tune eq 'm3' )
    {
      Laurasia::fkbjdn(@args);
    }
    else {
      my $alert = caution $tune;

      print "$alert\n";
      exit 0;
    }
  }
  else {
    my $alert = caution $sign;

    $alert;
  }
}

sub kleenex {
  my $lingo = 'initialize';
  my $limit = 56;
  my $argot = 'initialize';
  my @altar = Gondwana::keynotes;
  my $accum = q//;
  my $cycle = 0;
  my $colum = 8;
  my $alert = 'initialize';

  foreach $lingo (@_) {
    $accum = q//;
    $cycle = 0;

    if ( boundary( $lingo, $limit ) ) {
      print "\n";
      foreach $argot (@altar) {
        if ( $argot =~ m{$lingo}a ) {
          $accum = $accum . "\t$argot";
          $accum = $accum . "\n" if ++$cycle % $colum == 0;
        }
      }

      if ($accum) {
        $accum = penlight $accum, 93;

        print $accum;
        print "\n" unless $cycle % $colum == 0;
      }
      else {
        $alert = caution $lingo, $limit, 94;

        print $alert;
      }
    }
    else {
      $alert = caution( $lingo, $limit );

      print "\n$alert";
    }
  }
  print "\n";
}

sub recycle {
  my $pref = shift;

  if ( ref $pref ) {
    my @menu = &{$pref};
    my $size = scalar(@menu);
    my $item = 0;

    foreach (@menu) {
      print "\n" if ( $item % 7 == 0 );
      print "\t$menu[$item]";
      $item++;
    }
    print "\n";
  }
  else {
    my $where = __FILE__ . ', line: ' . __LINE__;
    my $about = "$where, Argument not reference";
    my $alert = caution( $about, 56 );

    print "\n$alert\n";
    exit 0;
  }
}

sub dashboard {
  my $pref = undef;

  $pref = \&Gondwana::pickaxe;
  recycle $pref;

  $pref = \&Gondwana::sanguine;
  recycle $pref;

  $pref = \&Gondwana::viridian;
  recycle $pref;

  print "\n";
}

sub correlate {
  my @altar = Gondwana::keynotes;
  my @accum = ();
  my $cycle = 0;
  my $colum = 8;
  my $lingo = 'initialize';
  my $argot = 'initialize';
  my $datum = 'initialize';
  my $clave = 'initialize';
  my $alert = 'initialize';

  foreach $lingo (@_) {
    @accum = ();
    $cycle = 0;

    if ( $lingo =~ /^[o-z]{2}$/a ) {
      foreach $argot (@altar) {
        $datum = Gondwana::acquire $argot;
        $datum = Laurasia::refine $datum;

        if ( $datum =~ m{$lingo}a ) {
          $accum[ ++$#accum ] = $argot;
        }
      }

      if (@accum) {
        print "\n";
        foreach $clave ( sort @accum ) {
          print "\t$clave";
          print "\n" if ++$cycle % $colum == 0;
        }
        print "\n" unless $cycle % $colum == 0;
      }
      else {
        $alert = caution $lingo, 0, 94;

        print "\n$alert";
      }
    }
    elsif ( validate $lingo ) {
      $datum = Gondwana::acquire $lingo;
      $datum = Laurasia::refine $datum;
      $datum =~ s/__ //g unless $lingo eq 'i0';
      $datum = penlight( $datum, 93 );

      print "\n\t$datum\n";
    }
    else {
      $alert = caution $lingo;

      print "\n$alert";
    }
  }
  print "\n";
}

sub entryway {

  if (@_) {
    my $clef  = validate( $_[0] );
    my $alert = 'initialize';
    my $pegs  = 'beadgcf';           # default tuning
    my $tune  = $pegs;

    unless ($clef) {
      $tune = shift;                 # change tuning

      unless ( boundary $tune ) {
        $alert = caution($tune);

        print "\n$alert\n";
        return 0;
      }
    }

    if ( @_ and $tune =~ /^\w*\-$/a ) {
      correlate @_;
    }
    elsif ( @_ and $tune =~ /^\w*\?$/a ) {
      kleenex @_;
    }
    elsif ( @_ and $tune =~ /^\w*\:$/a ) {
      my $sign = 'initialize';
      $tune = substr( $tune, 0, -1 );
      $tune = $pegs unless $tune;

      print "\n";
      for (@_) {
        if ( boundary $_ ) {
          $sign = Laurasia::invert($_);

          print vestibule( $tune, $sign );
          print "\n";
        }
        else {
          $alert = caution( $_, CURB );

          print "$alert\n";
        }
      }
    }
    elsif ( @_ and $_[0] eq 'gamut' ) {
      my @arks = Gondwana::keynotes;
      my @star = ();
      my $sign = 'initialize';
      my $crow = 'initialize';

      print "\n";
      foreach $sign (@arks) {
        @star = vestibule( $tune, $sign );
        $star[0] = chaplain $star[0];

        foreach $crow (@star) {
          print $crow;
        }
        print "\n";
      }
    }
    elsif (@_) {
      print "\n";
      for (@_) {
        if ( boundary $_ ) {
          print vestibule( $tune, $_ );
          print "\n";
        }
        else {
          $alert = caution($_);

          print "$alert\n";
        }
      }
    }
    else {
      my $snip = penlight( 'Usage:', 96 );
      my $name = "$0";
      my @tips = (
        "chmod u+x $name ",
        "$name ",
        "$name n0 j6 ",
        "$name : j6 ",
        "$name ? j6 ",
        "$name - yq j6 ",
        "$name cgdae n0 j3 j36 ",
        "$name cgdae: j3 j36 j236 ",
        "$name cgdae? '^([jk]\\d)+\$' ",
        "$name cgdae- wq n0 wu j2 ",
        "$name cgdae gamut | less ",
      );

      print "\n\t$snip\n";
      for (@tips) {
        print "\t\t$_\n\n";
      }
    }
  }
  else {
    dashboard;
  }
}

1;

