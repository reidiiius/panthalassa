package Rodinia;

use warnings;
use strict;

use Gondwana;
use Laurasia;

sub validate {
  my $sign = shift;

  if ( defined $sign and Laurasia::boundary $sign ) {
    my $reps = qr/^([i|j|k|n][0-7]{1,3}){1,2}([l|m][1-7]{1,2})?[h|i]?$/;

    $sign =~ $reps and Gondwana::membership $sign;
  }
}

sub retrieve {
  my $sign = shift;
  my $data = Gondwana::acquire $sign;

  defined $data ? $data : Gondwana::tacet;
}

sub stockade {
  my $tone = shift;
  my $data = shift;
  my @fork = Gondwana::tension $tone;
  my $head = $fork[0];
  my $tail = $fork[1];

  Laurasia::pegBox( $data, $head, $tail );
}

sub compose {
  my $harp = shift || 'unison';
  my $sign = shift || 'i0';
  my $data = shift || Gondwana::tacet;
  my @arms = Gondwana::hedgerow $harp;
  my @lout = ();
  my $item = 0;

  $lout[ $item++ ] = Laurasia::wreath( $sign, $harp );
  foreach my $tone ( reverse @arms ) {
    $lout[ $item++ ] = stockade( $tone, $data );
  }

  @lout;
}

sub vestibule {
  my $sign  = lc $_[1];
  my $alert = 'initialize';

  if ( validate $sign ) {
    my $data = retrieve $sign;
    my $tune = lc $_[0];
    my @args = ( $tune, $sign, $data );
    my @arts = Gondwana::wrenches;

    if ( scalar @arts ) {
      foreach my $item (@arts) {
        if ( $tune eq $item ) {
          return compose @args;
        }
      }
    }
    else {
      my $throw = 'Array is empty';
      my $alert = Laurasia::anomaly( __FILE__, __LINE__, $throw );

      print "$alert\n";
      exit 0;
    }
    $alert = Laurasia::caution $tune;

    print "$alert\n";
    exit 0;
  }
  else {
    $alert = Laurasia::caution $sign;

    $alert;
  }
}

sub kleenex {
  my $lingo = 'initialize';
  my $limit = Laurasia::CEIL;
  my $argot = 'initialize';
  my @altar = Gondwana::keynotes;
  my $accum = q//;
  my $cycle = 0;
  my $colum = 8;
  my $alert = 'initialize';

  foreach $lingo (@_) {
    $accum = q//;
    $cycle = 0;

    if ( Laurasia::boundary( $lingo, $limit ) ) {
      print "\n";
      foreach $argot (@altar) {
        if ( $argot =~ m{$lingo}ai ) {
          $accum .= "\t$argot";
          $accum .= "\n" if ++$cycle % $colum == 0;
        }
      }

      if ($accum) {
        $accum = Laurasia::penlight( $accum, 93 );

        print $accum;
        print "\n" unless $cycle % $colum == 0;
      }
      else {
        $alert = Laurasia::caution( $lingo, $limit, 94 );

        print $alert;
      }
    }
    else {
      $alert = Laurasia::caution( $lingo, $limit );

      print "\n$alert";
    }
  }
  print "\n";
}

sub recycle {
  my $pref = shift;

  if ( ref $pref ) {
    my @menu = &{$pref};
    my $size = scalar @menu;
    my $item = 0;

    foreach (@menu) {
      print "\n" if $item % 7 == 0;
      print "\t$menu[$item]";
      $item++;
    }
    print "\n";
  }
  else {
    my $throw = 'Argument not reference';
    my $alert = Laurasia::anomaly( __FILE__, __LINE__, $throw );

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
    $lingo = lc $lingo;
    @accum = ();
    $cycle = 0;

    if ( $lingo =~ /^[o-z]{2}$/ai ) {
      foreach $argot (@altar) {
        $datum = Gondwana::acquire $argot;
        $datum = Laurasia::refine $datum;

        if ( $datum =~ m{$lingo}ai ) {
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
        $alert = Laurasia::caution( $lingo, 0, 94 );

        print "\n$alert";
      }
    }
    elsif ( validate $lingo ) {
      $datum = Gondwana::acquire $lingo;
      $datum = Laurasia::refine $datum;
      $datum =~ s/__ //g unless $lingo eq 'i0';
      $datum = Laurasia::penlight( $datum, 93 );

      print "\n\t$datum\n";
    }
    else {
      $alert = Laurasia::caution $lingo;

      print "\n$alert";
    }
  }
  print "\n";
}

sub entryway {

  if (@_) {
    my $sign  = lc $_[0];
    my $clef  = validate $sign;
    my $alert = 'initialize';
    my $pegs  = 'beadgcf';        # default tuning
    my $tune  = $pegs;

    unless ($clef) {
      $tune = shift;              # change tuning

      unless ( Laurasia::boundary $tune ) {
        $alert = Laurasia::caution $tune;

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
      $tune = substr( $tune, 0, -1 );
      $tune = $pegs unless $tune;

      print "\n";
      for (@_) {
        if ( Laurasia::boundary $_ ) {
          $sign = Laurasia::invert "\L$_";

          print vestibule( $tune, $sign );
          print "\n";
        }
        else {
          $alert = Laurasia::caution $_;

          print "$alert\n";
        }
      }
    }
    elsif ( @_ and "\L$_[0]" eq 'gamut' ) {
      my @arks = Gondwana::keynotes;
      my @star = ();
      my $crow = 'initialize';

      print "\n";
      foreach $sign (@arks) {
        @star = vestibule( $tune, $sign );
        $star[0] = Laurasia::chaplain $star[0];

        foreach $crow (@star) {
          print $crow;
        }
        print "\n";
      }
    }
    elsif (@_) {
      print "\n";
      for (@_) {
        if ( Laurasia::boundary $_ ) {
          print vestibule( $tune, $_ );
          print "\n";
        }
        else {
          $alert = Laurasia::caution $_;

          print "$alert\n";
        }
      }
    }
    else {
      Laurasia::examples;
    }
  }
  else {
    dashboard;
  }
}

1;

