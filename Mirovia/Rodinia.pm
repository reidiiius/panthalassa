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
    $reps = Gondwana::regulus 'clefs';
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
  my ( $tone, $sign ) = @_;
  my $data = retrieve $sign;
  my @fork = Gondwana::tension $tone;
  my ( $head, $tail ) = @fork;
  my $cord = Laurasia::pegBox( $data, $head, $tail );

  return $cord;
}

sub compose {
  my $tune = shift || 'bfbfb';
  my $sign = shift || 'i0';
  my @arms = Gondwana::hedgerow $tune;

  if (@arms) {
    my @mars = reverse @arms;
    my @lout = ();
    my $item = 0;

    $lout[ $item++ ] = Laurasia::wreath( $sign, $tune );

    foreach my $note (@mars) {
      $lout[ $item++ ] = stockade( $note, $sign );
    }

    return @lout;
  }
  else {
    my $flaw = 'Array is empty';
    my $info = Laurasia::anomaly $flaw;

    die "\t$info\n\n";
  }
}

sub vestibule {
  my ( $tune, $sign ) = @_;
  my ( $flaw, $info );

  $tune = lc $tune if defined $tune;
  $sign = lc $sign if defined $sign;

  if ( validate $sign ) {
    my @gear = Gondwana::pickaxe;

    if (@gear) {
      my @star = ();

      foreach my $harp (@gear) {
        if ( $tune eq $harp ) {
          @star = compose( $tune, $sign );
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
      $info = Laurasia::anomaly $flaw;

      print {*STDERR} "\t$info\n\n";
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
        my $flaw = Laurasia::caution $item;

        print "\t$flaw\n\n";
      }
    }
    return 1;
  }
  else {
    my $flaw = 'Array is empty';
    my $info = Laurasia::anomaly $flaw;

    print {*STDERR} "\n\t$info\n\n";
    return 0;
  }
}

sub whiskey {
  my $lingo = shift || q//;

  if ($lingo) {
    my @altar = Gondwana::keynotes;
    my $accum = q//;
    my $cycle = 0;
    my $colum = 8;

    foreach my $argot (@altar) {
      if ( $argot =~ m{$lingo}ai ) {
        $accum .= "\t$argot";
        $accum .= "\n" if ++$cycle % $colum == 0;
      }
    }

    $accum .= "\n" unless $cycle % $colum == 0;

    return $accum;
  }
  else {
    my $flaw = 'Argument string is empty';
    my $info = Laurasia::anomaly $flaw;

    die "\n\t$info\n\n";
  }
}

sub kleenex {
  my $limit = Laurasia::CEIL;
  my ( $accum, $shine, $alert );

  foreach my $lingo (@_) {
    $accum = q//;

    if ( Laurasia::boundary( $lingo, $limit ) ) {
      $accum = whiskey $lingo;

      if ($accum) {
        $shine = Laurasia::penlight( $accum, 93 );

        print "\n$shine";
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

sub passkey {
  my $lingo = shift || 'i0';
  my $datum = Gondwana::acquire $lingo;
  my $metal = Laurasia::BARE;
  my $twine = $datum;

  $twine = Laurasia::refine $datum unless $metal;
  $twine =~ s/_+\s//g unless $lingo eq 'i0';
  $datum = Laurasia::penlight( $twine, 93 );

  print "\n\t$datum\n";
}

sub collect {
  my $lingo = shift || q//;

  if ($lingo) {
    my @altar = Gondwana::keynotes;
    my $datum = 'initialize';
    my $metal = Laurasia::BARE;
    my @accum = ();

    foreach my $argot (@altar) {
      $datum = Gondwana::acquire $argot;
      $datum = Laurasia::refine $datum unless $metal;

      if ( $datum =~ m{$lingo}a ) {
        $accum[ ++$#accum ] = $argot;
      }
    }

    return @accum;
  }

  return ();
}

sub dialect {
  my $lingo = shift || 'nil';
  my @accum = collect $lingo;

  if (@accum) {
    my @cigar = sort @accum;
    my $cycle = 0;
    my $colum = 8;

    print "\n";
    foreach my $clave (@cigar) {
      print "\t$clave";
      print "\n" if ++$cycle % $colum == 0;
    }
    print "\n" unless $cycle % $colum == 0;
  }
  else {
    my $alert = Laurasia::caution( $lingo, 0, 94 );

    print "\n\t$alert\n";
  }
}

sub correlate {
  my $metal = Laurasia::BARE;
  my $regal = Gondwana::regulus 'tonal';

  foreach my $lingo (@_) {
    $lingo = lc $lingo unless $metal;

    if ( $lingo =~ m{$regal}a ) {
      dialect $lingo;
    }
    elsif ( validate $lingo ) {
      passkey $lingo;
    }
    else {
      my $alert = Laurasia::caution $lingo;

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

