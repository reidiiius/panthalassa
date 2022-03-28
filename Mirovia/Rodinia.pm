package Rodinia;

use warnings;
use strict;

use Gondwana;
use Laurasia;

sub dashboard {
  my @refs =
    ( \&Gondwana::pickaxe, \&Gondwana::sanguine, \&Gondwana::viridian );

  foreach my $pref (@refs) {
    Laurasia::prefable $pref;
  }
  print "\n";
}

sub validate {
  my $sign = shift;
  my $bool = Laurasia::boundary $sign;
  my ( $reps, $kind, $club );

  if ($bool) {
    $reps = Gondwana::regulus;
    $kind = ( $sign =~ /$reps/ai );
    $club = Gondwana::membership $sign;
    $bool = ( $kind and $club );
  }

  return $bool;
}

sub retrieve {
  my $sign = shift;
  my $data = Gondwana::acquire $sign;

  return $data;
}

sub stockade {
  my $tone = shift;
  my $data = shift;
  my @fork = Gondwana::tension $tone;
  my $head = $fork[0];
  my $tail = $fork[1];
  my $cord = Laurasia::pegBox( $data, $head, $tail );

  return $cord;
}

sub compose {
  my $harp = shift || 'bfbfb';
  my $sign = shift || 'i0';
  my $data = shift || Gondwana::tacet;
  my @arms = Gondwana::hedgerow $harp;
  my @lout = ();
  my $item = 0;

  $lout[ $item++ ] = Laurasia::wreath( $sign, $harp );
  foreach my $tone ( reverse @arms ) {
    $lout[ $item++ ] = stockade( $tone, $data );
  }

  return @lout;
}

sub vestibule {
  my ( $tune, $sign ) = @_;
  my $flaw = 'initialize';

  $tune = lc $tune if defined $tune;
  $sign = lc $sign if defined $sign;

  if ( validate $sign ) {
    my $data = retrieve $sign;
    my @args = ( $tune, $sign, $data );
    my @gear = Gondwana::pickaxe;
    my @star = ();

    if (@gear) {
      foreach my $harp (@gear) {
        if ( $tune eq $harp ) {
          @star = compose @args;
        }
      }

      if (@star) {
        return @star;
      }
      else {
        $flaw = Laurasia::caution $tune;

        print "\t$flaw\n\n";
        exit 0;
      }
    }
    else {
      $flaw = 'Array is empty';
      $flaw = Laurasia::anomaly( __FILE__, __LINE__, $flaw );

      print "\t$flaw\n\n";
      exit 0;
    }
  }
  else {
    $flaw = Laurasia::caution $sign;

    return $flaw;
  }
}

sub reflector {
  my @args = @_;
  my $tune = shift @args;
  my $sign = 'initialize';
  my $flaw = 'initialize';
  my @star = ();

  if (@args) {
    print "\n";
    foreach my $item (@args) {
      if ( Laurasia::boundary $item ) {
        $sign = Laurasia::invert $item;
        @star = vestibule( $tune, $sign );

        Laurasia::lattice @star;
      }
      else {
        $flaw = Laurasia::caution $item;

        print "\t$flaw\n\n";
      }
    }
    return 1;
  }
  else {
    $flaw = 'Array is empty';
    $flaw = Laurasia::anomaly( __FILE__, __LINE__, $flaw );

    print "\n\t$flaw\n\n";
    return 0;
  }
}

sub kleenex {
  my $lingo = 'initialize';
  my $limit = Laurasia::CEIL;
  my $argot = 'initialize';
  my @altar = Gondwana::keynotes;
  my ( $accum, $cycle );
  my $colum = 8;
  my $alert = 'initialize';

  foreach $lingo (@_) {
    $accum = q//;
    $cycle = 0;

    if ( Laurasia::boundary( $lingo, $limit ) ) {
      foreach $argot (@altar) {
        if ( $argot =~ m{$lingo}ai ) {
          $accum .= "\t$argot";
          $accum .= "\n" if ++$cycle % $colum == 0;
        }
      }

      if ($accum) {
        $accum = Laurasia::penlight( $accum, 93 );

        print "\n$accum";
        print "\n" unless $cycle % $colum == 0;
      }
      else {
        $alert = Laurasia::caution( $lingo, $limit, 94 );

        print "\n\t$alert\n";
      }
    }
    else {
      $alert = Laurasia::caution( $lingo, $limit );

      print "\n\t$alert\n";
    }
  }
  print "\n";
}

sub correlate {
  my @altar = Gondwana::keynotes;
  my @accum = ();
  my $cycle = 0;
  my $colum = 8;
  my $metal = Laurasia::BARE;
  my $tonal = Gondwana::monotone;
  my $lingo = 'initialize';
  my $argot = 'initialize';
  my $datum = 'initialize';
  my $clave = 'initialize';
  my $alert = 'initialize';

  foreach $lingo (@_) {
    $lingo = lc $lingo unless $metal;
    @accum = ();
    $cycle = 0;

    if ( $lingo =~ m{$tonal}a ) {
      foreach $argot (@altar) {
        $datum = Gondwana::acquire $argot;
        $datum = Laurasia::refine $datum unless $metal;

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
        $alert = Laurasia::caution( $lingo, 0, 94 );

        print "\n\t$alert\n";
      }
    }
    elsif ( validate $lingo ) {
      $datum = Gondwana::acquire $lingo;
      $datum = Laurasia::refine $datum unless $metal;
      $datum =~ s/_+\s//g unless $lingo eq 'i0';
      $datum = Laurasia::penlight( $datum, 93 );

      print "\n\t$datum\n";
    }
    else {
      $alert = Laurasia::caution $lingo;

      print "\n\t$alert\n";
    }
  }
  print "\n";
}

sub entryway {
  my @args = @_;

  if (@args) {
    my $sign = lc $args[0];
    my $clef = validate $sign;
    my $flaw = 'initialize';
    my $pegs = 'beadgcf';        # default tuning
    my $tune = $pegs;
    my @star = ();

    unless ($clef) {
      $tune = shift @args;       # change tuning

      unless ( Laurasia::boundary $tune ) {
        $flaw = Laurasia::caution $tune;

        print "\n\t$flaw\n\n";
        return 0;
      }
    }

    if ( @args and $tune =~ /^\w*\-$/a ) {
      correlate @args;
    }
    elsif ( @args and $tune =~ /^\w*\?$/a ) {
      kleenex @args;
    }
    elsif ( @args and $tune =~ /^\w*\:$/a ) {
      $tune = substr( $tune, 0, -1 );
      $tune = $pegs unless $tune;
      unshift( @args, $tune );

      reflector @args;
    }
    elsif ( @args and "\L$args[0]" eq 'gamut' ) {
      my @arks = Gondwana::keynotes;

      print "\n";
      foreach $sign (@arks) {
        @star = vestibule( $tune, $sign );
        $star[0] = Laurasia::chaplain $star[0];

        Laurasia::lattice @star;
      }
    }
    elsif (@args) {
      print "\n";
      foreach $sign (@args) {
        if ( Laurasia::boundary $sign ) {
          @star = vestibule( $tune, $sign );

          Laurasia::lattice @star;
        }
        else {
          $flaw = Laurasia::caution $sign;

          print "\t$flaw\n\n";
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

