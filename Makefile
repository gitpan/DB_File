# This Makefile is for the DB_File extension to perl.
#
# It was generated automatically by MakeMaker version
# 5.42 (Revision: 1.216) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

#	DEFINE => q[ -DmDB_Prefix_t=size_t -DmDB_Hash_t=u_int32_t]
#	INC => q[-I./db_lib]
#	LIBS => [q[-L./db_lib -llibdb]]
#	MAN3PODS => q[ ]
#	NAME => q[DB_File]
#	VERSION_FROM => q[DB_File.pm]
#	XSPROTOARG => q[-noprototypes]
#	dist => { COMPRESS=>q[gzip], SUFFIX=>q[gz] }
#	macro => { INSTALLDIRS=>q[perl] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via C:\PERL\lib/Config.pm)

# They may have been overridden via Makefile.PL or on the command line
AR = tlib /P128
CC = bcc32
CCCDLFLAGS = 
CCDLFLAGS =  
DLEXT = dll
DLSRC = dl_win32.xs
LD = tlink32
LDDLFLAGS = -Tpd
LDFLAGS = 
LIBC = cw32mti.lib
LIB_EXT = .lib
OBJ_EXT = .obj
RANLIB = 
SO = dll
EXE_EXT = .exe


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
NAME = DB_File
DISTNAME = DB_File
NAME_SYM = DB_File
VERSION = 1.54
VERSION_SYM = 1_54
XS_VERSION = 1.54
INST_BIN = blib\bin
INST_EXE = blib\script
INST_LIB = blib\lib
INST_ARCHLIB = blib\arch
INST_SCRIPT = blib\script
PREFIX = c:
INSTALLDIRS = site
INSTALLPRIVLIB = c:\perl\lib
INSTALLARCHLIB = c:\perl\lib
INSTALLSITELIB = c:\perl\lib\site
INSTALLSITEARCH = c:\perl\lib\site
INSTALLBIN = $(PREFIX)\perl\bin
INSTALLSCRIPT = $(PREFIX)\perl\bin
PERL_LIB = c:\perl\lib
PERL_ARCHLIB = c:\perl\lib
SITELIBEXP = c:\perl\lib\site
SITEARCHEXP = c:\perl\lib\site
LIBPERL_A = libperl.lib
FIRST_MAKEFILE = Makefile
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = C:\perl\lib\CORE
PERL = C:\perl\bin\perl
FULLPERL = C:\perl\bin\perl

VERSION_MACRO = VERSION
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"

MAKEMAKER = 
MM_VERSION = 5.42

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# ROOTEXT = Directory part of FULLEXT with leading slash (eg /DBD)  !!! Deprecated from MM 5.32  !!!
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = DB_File
BASEEXT = DB_File
DLBASE = $(BASEEXT)
VERSION_FROM = DB_File.pm
INC = -I./db_lib
DEFINE =  -DmDB_Prefix_t=size_t -DmDB_Hash_t=u_int32_t
OBJECT = $(BASEEXT)$(OBJ_EXT)
LDFROM = $(OBJECT)
LINKTYPE = dynamic

# Handy lists of source code files:
XS_FILES= DB_File.xs
C_FILES = DB_File.c
O_FILES = DB_File.obj
H_FILES = 
MAN1PODS = 
MAN3PODS = 
INST_MAN1DIR = blib\man1
INSTALLMAN1DIR = c:\perl\man\man1
MAN1EXT = 1
INST_MAN3DIR = blib\man3
INSTALLMAN3DIR = c:\perl\man\man3
MAN3EXT = 3

.USESHELL :

# work around a famous dec-osf make(1) feature(?):
makemakerdflt: all

.SUFFIXES: .xs .c .C .cpp .cxx .cc $(OBJ_EXT)

# Nick wanted to get rid of .PRECIOUS. I don't remember why. I seem to recall, that
# some make implementations will delete the Makefile when we rebuild it. Because
# we call false(1) when we rebuild it. So make(1) is not completely wrong when it
# does so. Our milage may vary.
# .PRECIOUS: Makefile    # seems to be not necessary anymore

.PHONY: all config static dynamic test linkext manifest

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)\Config.pm $(PERL_INC)\config.h

# Where to put things:
INST_LIBDIR      = $(INST_LIB)
INST_ARCHLIBDIR  = $(INST_ARCHLIB)

INST_AUTODIR     = $(INST_LIB)\auto\$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)\auto\$(FULLEXT)

INST_STATIC  = $(INST_ARCHAUTODIR)\$(BASEEXT)$(LIB_EXT)
INST_DYNAMIC = $(INST_ARCHAUTODIR)\$(DLBASE).$(DLEXT)
INST_BOOT    = $(INST_ARCHAUTODIR)\$(BASEEXT).bs

EXPORT_LIST = DB_File.def

PERL_ARCHIVE = $(PERL_INC)\perl$(LIB_EXT)

TO_INST_PM = DB_File.pm

PM_TO_BLIB = DB_File.pm \
	$(INST_LIBDIR)\DB_File.pm


# --- MakeMaker tool_autosplit section:

# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" -MAutoSplit  -e "autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1);"


# --- MakeMaker tool_xsubpp section:

XSUBPPDIR = C:\perl\lib\ExtUtils
XSUBPP = $(XSUBPPDIR)/xsubpp
XSPROTOARG = -noprototypes
XSUBPPDEPS = $(XSUBPPDIR)\typemap typemap
XSUBPPARGS = -typemap $(XSUBPPDIR)\typemap -typemap typemap


# --- MakeMaker tools_other section:
CHMOD = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e chmod
CP = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e cp
LD = tlink32
MV = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e mv
NOOP = rem
RM_F = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_f
RM_RF = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_rf
TEST_F = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e test_f
TOUCH = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e touch
UMASK_NULL = umask 0
DEV_NULL = > NUL

# The following is a portable way to say mkdir -p
# To see which directories are created, change the if 0 to if 1
MKPATH = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e mkpath

# This helps us to minimize the effect of the .exists files A yet
# better solution would be to have a stable file in the perl
# distribution with a timestamp of zero. But this solution doesn't
# need any changes to the core distribution and works with older perls
EQUALIZE_TIMESTAMP = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e eqtime

# Here we warn users that an old packlist file was found somewhere,
# and that they should call some uninstall routine
WARN_IF_OLD_PACKLIST = $(PERL) -lwe "exit unless -f $$ARGV[0];" \
-e "print 'WARNING: I have found an old package in';" \
-e "print '	', $$ARGV[0], '.';" \
-e "print 'Please make sure the two installations are not conflicting';"

UNINST=0
VERBINST=1

MOD_INSTALL = $(PERL) -I$(INST_LIB) -I$(PERL_LIB) -MExtUtils::Install \
-e "install({ @ARGV },'$(VERBINST)',0,'$(UNINST)');"

DOC_INSTALL = $(PERL) -e "$$\=\"\n\n\";" \
-e "print '=head2 ', scalar(localtime), ': C<', shift, '>', ' L<', shift, '>';" \
-e "print '=over 4';" \
-e "while (defined($$key = shift) and defined($$val = shift)) { print '=item *';print 'C<', \"$$key: $$val\", '>'; }" \
-e "print '=back';"

UNINSTALL =   $(PERL) -MExtUtils::Install \
-e "uninstall($$ARGV[0],1,1); print \"\nUninstall is deprecated. Please check the";" \
-e "print \" packlist above carefully.\n  There may be errors. Remove the\";" \
-e "print \" appropriate files manually.\n  Sorry for the inconveniences.\n\""


# --- MakeMaker dist section:

DISTVNAME = $(DISTNAME)-$(VERSION)
TAR  = tar
TARFLAGS = cvf
ZIP  = zip
ZIPFLAGS = -r
COMPRESS = gzip
SUFFIX = gz
SHAR = shar
PREOP = @$(NOOP)
POSTOP = @$(NOOP)
TO_UNIX = @$(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist


# --- MakeMaker macro section:
INSTALLDIRS = perl


# --- MakeMaker depend section:


# --- MakeMaker cflags section:

CCFLAGS = -D_RTLDLL -DWIN32
OPTIMIZE = -O
PERLTYPE = 
LARGE = 
SPLIT = 


# --- MakeMaker const_loadlibs section:

# DB_File might depend on some other libraries:
# See ExtUtils::Liblist for details
#
EXTRALIBS = E:\build\DB_File-1.54\db_lib\libdb.lib D:\bc5\lib\import32.lib D:\bc5\lib\cw32mti.lib D:\bc5\lib\odbc32.lib D:\bc5\lib\odbccp32.lib
LDLOADLIBS = E:\build\DB_File-1.54\db_lib\libdb.lib D:\bc5\lib\import32.lib D:\bc5\lib\cw32mti.lib D:\bc5\lib\odbc32.lib D:\bc5\lib\odbccp32.lib
BSLOADLIBS = 
LD_RUN_PATH = 


# --- MakeMaker const_cccmd section:
CCCMD = $(CC) -c $(INC) $(CCFLAGS) $(OPTIMIZE) \
	$(PERLTYPE) $(LARGE) $(SPLIT) $(DEFINE_VERSION) \
	$(XS_DEFINE_VERSION)

# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:
PASTHRU = 

# --- MakeMaker c_o section:

.c$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $*.c

.cpp$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $*.cpp

.cxx$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $*.cxx

.cc$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $*.cc


# --- MakeMaker xs_c section:

.xs.c:
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(XSUBPP) $(XSPROTOARG) $(XSUBPPARGS) $*.xs >$*.tc && $(MV) $*.tc $@


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:

#all ::	config $(INST_PM) subdirs linkext manifypods

all :: pure_all manifypods
	@$(NOOP)

pure_all :: config pm_to_blib subdirs linkext
	@$(NOOP)

subdirs :: $(MYEXTLIB)
	@$(NOOP)

config :: Makefile $(INST_LIBDIR)\.exists
	@$(NOOP)

config :: $(INST_ARCHAUTODIR)\.exists
	@$(NOOP)

config :: $(INST_AUTODIR)\.exists
	@$(NOOP)

config :: Version_check
	@$(NOOP)


$(INST_AUTODIR)\.exists :: C:\perl\lib\CORE\perl.h
	@$(MKPATH) $(INST_AUTODIR)
	@$(EQUALIZE_TIMESTAMP) C:\perl\lib\CORE\perl.h $(INST_AUTODIR)\.exists

	-@$(CHMOD) 755 $(INST_AUTODIR)

$(INST_LIBDIR)\.exists :: C:\perl\lib\CORE\perl.h
	@$(MKPATH) $(INST_LIBDIR)
	@$(EQUALIZE_TIMESTAMP) C:\perl\lib\CORE\perl.h $(INST_LIBDIR)\.exists

	-@$(CHMOD) 755 $(INST_LIBDIR)

$(INST_ARCHAUTODIR)\.exists :: C:\perl\lib\CORE\perl.h
	@$(MKPATH) $(INST_ARCHAUTODIR)
	@$(EQUALIZE_TIMESTAMP) C:\perl\lib\CORE\perl.h $(INST_ARCHAUTODIR)\.exists

	-@$(CHMOD) 755 $(INST_ARCHAUTODIR)

help:
	perldoc ExtUtils::MakeMaker

Version_check:
	@$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) \
		-MExtUtils::MakeMaker=Version_check \
		-e "Version_check('$(MM_VERSION)')"


# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	@$(NOOP)


# --- MakeMaker dlsyms section:

DB_File.def: Makefile.PL
	$(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" -MExtUtils::Mksymlists \
     -e "Mksymlists('NAME' => 'DB_File', 'DLBASE' => '$(BASEEXT)', 'DL_FUNCS' => {  }, 'IMPORTS' => {  }, 'DL_VARS' => []);"


# --- MakeMaker dynamic section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make dynamic"
#dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT) $(INST_PM)
dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT)
	@$(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP = DB_File.bs

# As Mkbootstrap might not write a file (if none is required)
# we use touch to prevent make continually trying to remake it.
# The DynaLoader only reads a non-empty file.
$(BOOTSTRAP): Makefile  $(INST_ARCHAUTODIR)\.exists
	@echo "Running Mkbootstrap for $(NAME) ($(BSLOADLIBS))"
	@$(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" \
		-MExtUtils::Mkbootstrap \
		-e "Mkbootstrap('$(BASEEXT)','$(BSLOADLIBS)');"
	@$(TOUCH) $(BOOTSTRAP)
	$(CHMOD) 644 $@

$(INST_BOOT): $(BOOTSTRAP) $(INST_ARCHAUTODIR)\.exists
	@$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_rf $(INST_BOOT)
	-$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e cp $(BOOTSTRAP) $(INST_BOOT)
	$(CHMOD) 644 $@


# --- MakeMaker dynamic_lib section:

# This section creates the dynamically loadable $(INST_DYNAMIC)
# from $(OBJECT) and possibly $(MYEXTLIB).
OTHERLDFLAGS = c0d32.obj
INST_DYNAMIC_DEP = 

$(INST_DYNAMIC): $(OBJECT) $(MYEXTLIB) $(BOOTSTRAP) $(INST_ARCHAUTODIR)\.exists $(EXPORT_LIST) $(PERL_ARCHIVE) $(INST_DYNAMIC_DEP)
	$(LD) $(LDDLFLAGS) $(OTHERLDFLAGS) $(LDFROM),$@,,$(PERL_ARCHIVE:s,/,\,) $(LDLOADLIBS:s,/,\,) $(MYEXTLIB:s,/,\,),$(EXPORT_LIST:s,/,\,),$(RESFILES)
	$(CHMOD) 755 $@


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
#static :: Makefile $(INST_STATIC) $(INST_PM)
static :: Makefile $(INST_STATIC)
	@$(NOOP)


# --- MakeMaker static_lib section:

$(INST_STATIC): $(OBJECT) $(MYEXTLIB) $(INST_ARCHAUTODIR)\.exists
	$(RM_RF) $@
	$(AR) $@ $(OBJECT:^"+")
	@echo "$(EXTRALIBS)" > $(INST_ARCHAUTODIR)\extralibs.ld
	$(CHMOD) 755 $@


# --- MakeMaker manifypods section:

manifypods :
	$(NOOP)


# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	-$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_rf DB_File.c ./blib $(MAKE_APERL_FILE) $(INST_ARCHAUTODIR)/extralibs.all perlmain.c mon.out core so_locations pm_to_blib *~ */*~ */*/*~ *$(OBJ_EXT) *$(LIB_EXT) perl.exe $(BOOTSTRAP) $(BASEEXT).bso $(BASEEXT).def $(BASEEXT).exp
	-$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e mv Makefile Makefile.old $(DEV_NULL)


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_rf $(INST_AUTODIR) $(INST_ARCHAUTODIR)
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_f $(INST_DYNAMIC) $(INST_BOOT)
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_f $(INST_STATIC)
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_f $(INST_LIBDIR)\DB_File.pm
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e rm_rf Makefile Makefile.old


# --- MakeMaker dist_basics section:

distclean :: realclean distcheck

distcheck :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=fullcheck \
		-e fullcheck

skipcheck :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=skipcheck \
		-e skipcheck

manifest :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=mkmanifest \
		-e mkmanifest


# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT)
	@$(PERL) -le "print \"Warning: Makefile possibly out of date with $$vf\" if " \
	    -e "-e ($$vf=\"$(VERSION_FROM)\") and -M $$vf < -M \"Makefile\";"

tardist : $(DISTVNAME).tar$(SUFFIX)

zipdist : $(DISTVNAME).zip

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) \
		$(DISTVNAME).tar$(SUFFIX) > \
		$(DISTVNAME).tar$(SUFFIX)_uu

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker dist_dir section:

distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=manicopy,maniread \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"


# --- MakeMaker dist_test section:

disttest : distdir
	cd $(DISTVNAME) && $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) Makefile.PL
	cd $(DISTVNAME) && $(MAKE)
	cd $(DISTVNAME) && $(MAKE) test


# --- MakeMaker dist_ci section:

ci :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=maniread \
		-e "@all = keys %{ maniread() };" \
		-e "print(\"Executing $(CI) @all\n\"); system(\"$(CI) @all\");" \
		-e "print(\"Executing $(RCS_LABEL) ...\n\"); system(\"$(RCS_LABEL) @all\");"


# --- MakeMaker install section:

install :: all pure_install doc_install

install_perl :: all pure_perl_install doc_perl_install

install_site :: all pure_site_install doc_site_install

install_ :: install_site
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_install :: pure_$(INSTALLDIRS)_install

doc_install :: doc_$(INSTALLDIRS)_install
	@echo Appending installation info to $(INSTALLARCHLIB)/perllocal.pod

pure__install : pure_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install ::
	@$(MOD_INSTALL) \
		read $(PERL_ARCHLIB)\auto\$(FULLEXT)\.packlist \
		write $(INSTALLARCHLIB)\auto\$(FULLEXT)\.packlist \
		$(INST_LIB) $(INSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(INSTALLARCHLIB) \
		$(INST_BIN) $(INSTALLBIN) \
		$(INST_SCRIPT) $(INSTALLSCRIPT) \
		$(INST_MAN1DIR) $(INSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)\auto\$(FULLEXT)


pure_site_install ::
	@$(MOD_INSTALL) \
		read $(SITEARCHEXP)\auto\$(FULLEXT)\.packlist \
		write $(INSTALLSITEARCH)\auto\$(FULLEXT)\.packlist \
		$(INST_LIB) $(INSTALLSITELIB) \
		$(INST_ARCHLIB) $(INSTALLSITEARCH) \
		$(INST_BIN) $(INSTALLBIN) \
		$(INST_SCRIPT) $(INSTALLSCRIPT) \
		$(INST_MAN1DIR) $(INSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)\auto\$(FULLEXT)

doc_perl_install ::
	@$(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLARCHLIB)\perllocal.pod

doc_site_install ::
	@$(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLARCHLIB)\perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs

uninstall_from_perldirs ::
	@$(UNINSTALL) $(PERL_ARCHLIB)\auto\$(FULLEXT)\.packlist

uninstall_from_sitedirs ::
	@$(UNINSTALL) $(SITEARCHEXP)\auto\$(FULLEXT)\.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE:
	@$(NOOP)


# --- MakeMaker perldepend section:

PERL_HDRS = \
$(PERL_INC)/EXTERN.h       $(PERL_INC)/gv.h           $(PERL_INC)/pp.h       \
$(PERL_INC)/INTERN.h       $(PERL_INC)/handy.h        $(PERL_INC)/proto.h    \
$(PERL_INC)/XSUB.h         $(PERL_INC)/hv.h           $(PERL_INC)/regcomp.h  \
$(PERL_INC)/av.h           $(PERL_INC)/keywords.h     $(PERL_INC)/regexp.h   \
$(PERL_INC)/config.h       $(PERL_INC)/mg.h           $(PERL_INC)/scope.h    \
$(PERL_INC)/cop.h          $(PERL_INC)/op.h           $(PERL_INC)/sv.h	     \
$(PERL_INC)/cv.h           $(PERL_INC)/opcode.h       $(PERL_INC)/unixish.h  \
$(PERL_INC)/dosish.h       $(PERL_INC)/patchlevel.h   $(PERL_INC)/util.h     \
$(PERL_INC)/embed.h        $(PERL_INC)/perl.h				     \
$(PERL_INC)/form.h         $(PERL_INC)/perly.h

$(OBJECT) : $(PERL_HDRS)

DB_File.c : $(XSUBPPDEPS)


# --- MakeMaker makefile section:

$(OBJECT) : $(FIRST_MAKEFILE)

# We take a very conservative approach here, but it\'s worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
Makefile : Makefile.PL $(CONFIGDEP)
	@echo "Makefile out-of-date with respect to $?"
	@echo "Cleaning current config before rebuilding Makefile..."
	-@$(MV) Makefile Makefile.old
	-$(MAKE) -f Makefile.old clean $(DEV_NULL) || $(NOOP)
	$(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" Makefile.PL 
	@echo "==> Your Makefile has been rebuilt. <=="
	@echo "==> Please rerun the make command.  <=="
	false

# To change behavior to :: would be nice, but would break Tk b9.02
# so you find such a warning below the dist target.
#Makefile :: $(VERSION_FROM)
#	@echo "Warning: Makefile possibly out of date with $(VERSION_FROM)"


# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = C:\perl\bin\perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) -f $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE)
	@echo Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	@$(PERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t\db-btree.t t\db-hash.t t\db-recno.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE)

test_dynamic :: pure_all
	$(FULLPERL) -Mblib -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e "use Test::Harness qw(&runtests $$verbose); $$verbose=$(TEST_VERBOSE); runtests @ARGV;" $(TEST_FILES)

testdb_dynamic :: pure_all
	$(FULLPERL) $(TESTDB_SW) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(TEST_FILE)

test_ : test_dynamic

test_static :: pure_all $(MAP_TARGET)
	./$(MAP_TARGET) -Mblib -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e "use Test::Harness qw(&runtests $$verbose); $$verbose=$(TEST_VERBOSE); runtests @ARGV;" $(TEST_FILES)

testdb_static :: pure_all $(MAP_TARGET)
	./$(MAP_TARGET) $(TESTDB_SW) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(TEST_FILE)



# --- MakeMaker pm_to_blib section:

pm_to_blib: $(TO_INST_PM)
	@$(PERL) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)" \
	"-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" -MExtUtils::Install \
        -e "pm_to_blib(qw[ $(mktmp,pmfiles.dat $(PM_TO_BLIB:s,\,\\,)\n) ],'$(INST_LIB)\auto')"
	@$(TOUCH) $@


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:

$(NAME).xs:	typemap
	@$(TOUCH) $(NAME).xs

Makefile:	config.in

	

# End.
