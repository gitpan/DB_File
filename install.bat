@rem = '--*-Perl-*--
@echo off
perl -x -S %0 %1 %2 %3
goto endofperl
@rem ';
#!perl
#line 8
use Config;
use File::Copy;
use ExtUtils::Install 'install_default';

warn "Copying binaries into `$Config{installsitelib}'\n";
install_default('DB_File');

warn "Copying LIBDB.DLL into `$Config{installbin}'\n";
copy("./db_lib/libdb.dll", "$Config{installbin}/libdb.dll");

# weed out null and "." entries in path
my @path = grep { s!([^:])[\\/]$!$1!; $_ and $_ ne "." } split /;/, $ENV{PATH};

#warn join('|',@path)."\n";

install_if_not_found('./db_lib',$Config{installbin},'MSVCRT.DLL','MSVCIRT.DLL');

warn "All done.\n";

sub install_if_not_found {
  my $from = shift;
  my $to = shift;
  for (@_) {
    my ($f) = find_in_path($_);
    if ($f) {
      warn "Found already installed $_ at $f.  Good.\n";
    }
    else {
      warn "Copying $_ into `$to'\n";
      copy("$from/$_", "$to/$_");
    }
  }
}

sub find_in_path {
  my $f = shift;
  my @found = grep { -e "$_\\$f" } @path;
#  warn "found |$f| in |@found|\n";
  return @found;
}

__END__
:endofperl
