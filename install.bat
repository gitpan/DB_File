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
my ($msvcrt) = find_in_path("MSVCRT.DLL");
if ($msvcrt) {
  warn "Found already installed MSVCRT.DLL at $msvcrt.  Good.\n";
}
else {
  warn "Copying MSVCRT.DLL into `$Config{installbin}'\n";
  copy("./db_lib/MSVCRT.DLL", "$Config{installbin}/MSVCRT.DLL");
}
warn "All done.\n";


sub find_in_path {
  my $f = shift;
  my @found = grep { -e "$_\\$f" } @path;
#  warn "found |$f| in |@found|\n";
  return @found;
}

__END__
:endofperl
