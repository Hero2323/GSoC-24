## DO NOT EDIT! GENERATED AUTOMATICALLY!
## Process this file with automake to produce Makefile.in.
# Copyright (C) 2004-2007 Free Software Foundation, Inc.
#
# This file is free software, distributed under the terms of the GNU
# General Public License.  As a special exception to the GNU General
# Public License, this file may be distributed as part of a program
# that contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
# Reproduce by: gnulib-tool --import --dir=. --local-dir=gl --lib=libcpio --source-base=.#bootmp/lib --m4-base=.#bootmp/m4 --doc-base=.#bootmp/doc --aux-dir=.#bootmp/build-aux --avoid=lock --avoid=size_max --no-libtool --macro-prefix=gl alloca argmatch argp closeout configmake dirname error fileblocks fnmatch-gnu full-write getdate getopt gettext hash inttostr inttypes lchown obstack quote quotearg safe-read savedir stdbool stdint stpcpy strerror strtol unlocked-io utimens version-etc-fsf xalloc xalloc-die

AUTOMAKE_OPTIONS = 1.5 gnits

noinst_HEADERS =
noinst_LIBRARIES =
noinst_LTLIBRARIES =
EXTRA_DIST =
BUILT_SOURCES =
SUFFIXES =
MOSTLYCLEANFILES = core *.stackdump
MOSTLYCLEANDIRS =
CLEANFILES =
DISTCLEANFILES =
MAINTAINERCLEANFILES =

AM_CPPFLAGS =

noinst_LIBRARIES += libcpio.a

libcpio_a_SOURCES =
libcpio_a_LIBADD = $(gl_LIBOBJS)
libcpio_a_DEPENDENCIES = $(gl_LIBOBJS)
EXTRA_libcpio_a_SOURCES =

## begin gnulib module absolute-header

# Use this preprocessor expression to decide whether #include_next works.
# Do not rely on a 'configure'-time test for this, since the expression
# might appear in an installed header, which is used by some other compiler.
HAVE_INCLUDE_NEXT = (__GNUC__ || 60000000 <= __DECC_VER)

## end   gnulib module absolute-header

## begin gnulib module alloca


EXTRA_DIST += alloca.c

EXTRA_libcpio_a_SOURCES += alloca.c

libcpio_a_LIBADD += @ALLOCA@
libcpio_a_DEPENDENCIES += @ALLOCA@
## end   gnulib module alloca

## begin gnulib module alloca-opt

BUILT_SOURCES += $(ALLOCA_H)

# We need the following in order to create <alloca.h> when the system
# doesn't have one that works with the given compiler.
alloca.h: alloca_.h
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat $(srcdir)/alloca_.h; \
	} > $@-t
	mv -f $@-t $@
MOSTLYCLEANFILES += alloca.h alloca.h-t

EXTRA_DIST += alloca_.h

## end   gnulib module alloca-opt

## begin gnulib module argmatch


EXTRA_DIST += argmatch.c argmatch.h

EXTRA_libcpio_a_SOURCES += argmatch.c

## end   gnulib module argmatch

## begin gnulib module argp

libcpio_a_SOURCES += argp.h argp-ba.c argp-eexst.c \
           argp-fmtstream.c argp-fmtstream.h argp-fs-xinl.c argp-help.c \
           argp-namefrob.h argp-parse.c argp-pin.c argp-pv.c argp-pvh.c \
           argp-xinl.c

## end   gnulib module argp

## begin gnulib module canonicalize-lgpl


EXTRA_DIST += canonicalize-lgpl.c canonicalize.h

EXTRA_libcpio_a_SOURCES += canonicalize-lgpl.c

## end   gnulib module canonicalize-lgpl

## begin gnulib module chdir-long


EXTRA_DIST += chdir-long.c chdir-long.h

EXTRA_libcpio_a_SOURCES += chdir-long.c

## end   gnulib module chdir-long

## begin gnulib module chown


EXTRA_DIST += chown.c fchown-stub.c

EXTRA_libcpio_a_SOURCES += chown.c fchown-stub.c

## end   gnulib module chown

## begin gnulib module close-stream


EXTRA_DIST += close-stream.c close-stream.h

EXTRA_libcpio_a_SOURCES += close-stream.c

## end   gnulib module close-stream

## begin gnulib module closeout


EXTRA_DIST += closeout.c closeout.h

EXTRA_libcpio_a_SOURCES += closeout.c

## end   gnulib module closeout

## begin gnulib module configmake

# Retrieve values of the variables through 'configure' followed by
# 'make', not directly through 'configure', so that a user who
# sets some of these variables consistently on the 'make' command
# line gets correct results.
#
# One advantage of this approach, compared to the classical
# approach of adding -DLIBDIR=\"$(libdir)\" etc. to AM_CPPFLAGS,
# is that it protects against the use of undefined variables.
# If, say, $(libdir) is not set in the Makefile, LIBDIR is not
# defined by this module, and code using LIBDIR gives a
# compilation error.
#
# Another advantage is that 'make' output is shorter.
#
# Listed in the same order as the GNU makefile conventions.
# The Automake-defined pkg* macros are appended, in the order
# listed in the Automake 1.10a+ documentation.
configmake.h: Makefile
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  echo '#define PREFIX "$(prefix)"'; \
	  echo '#define EXEC_PREFIX "$(exec_prefix)"'; \
	  echo '#define BINDIR "$(bindir)"'; \
	  echo '#define SBINDIR "$(sbindir)"'; \
	  echo '#define LIBEXECDIR "$(libexecdir)"'; \
	  echo '#define DATAROOTDIR "$(datarootdir)"'; \
	  echo '#define DATADIR "$(datadir)"'; \
	  echo '#define SYSCONFDIR "$(sysconfdir)"'; \
	  echo '#define SHAREDSTATEDIR "$(sharedstatedir)"'; \
	  echo '#define LOCALSTATEDIR "$(localstatedir)"'; \
	  echo '#define INCLUDEDIR "$(includedir)"'; \
	  echo '#define OLDINCLUDEDIR "$(oldincludedir)"'; \
	  echo '#define DOCDIR "$(docdir)"'; \
	  echo '#define INFODIR "$(infodir)"'; \
	  echo '#define HTMLDIR "$(htmldir)"'; \
	  echo '#define DVIDIR "$(dvidir)"'; \
	  echo '#define PDFDIR "$(pdfdir)"'; \
	  echo '#define PSDIR "$(psdir)"'; \
	  echo '#define LIBDIR "$(libdir)"'; \
	  echo '#define LISPDIR "$(lispdir)"'; \
	  echo '#define LOCALEDIR "$(localedir)"'; \
	  echo '#define MANDIR "$(mandir)"'; \
	  echo '#define MANEXT "$(manext)"'; \
	  echo '#define PKGDATADIR "$(pkgdatadir)"'; \
	  echo '#define PKGINCLUDEDIR "$(pkgincludedir)"'; \
	  echo '#define PKGLIBDIR "$(pkglibdir)"'; \
	  echo '#define PKGLIBEXECDIR "$(pkglibexecdir)"'; \
	} | sed '/""/d' > $@-t
	mv $@-t $@
BUILT_SOURCES += configmake.h
CLEANFILES += configmake.h configmake.h-t

## end   gnulib module configmake

## begin gnulib module dirfd


EXTRA_DIST += dirfd.c dirfd.h

EXTRA_libcpio_a_SOURCES += dirfd.c

## end   gnulib module dirfd

## begin gnulib module dirname


EXTRA_DIST += basename.c dirname.c dirname.h stripslash.c

EXTRA_libcpio_a_SOURCES += basename.c dirname.c stripslash.c

## end   gnulib module dirname

## begin gnulib module dup2


EXTRA_DIST += dup2.c

EXTRA_libcpio_a_SOURCES += dup2.c

## end   gnulib module dup2

## begin gnulib module error


EXTRA_DIST += error.c error.h

EXTRA_libcpio_a_SOURCES += error.c

## end   gnulib module error

## begin gnulib module exitfail


EXTRA_DIST += exitfail.c exitfail.h

EXTRA_libcpio_a_SOURCES += exitfail.c

## end   gnulib module exitfail

## begin gnulib module fchdir

BUILT_SOURCES += $(DIRENT_H)

# We need the following in order to create <dirent.h> when the system
# doesn't have one that works with the given compiler.
dirent.h: dirent_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''NEXT_DIRENT_H''@|$(NEXT_DIRENT_H)|g' \
	      -e 's|@''REPLACE_FCHDIR''@|$(REPLACE_FCHDIR)|g' \
	      < $(srcdir)/dirent_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += dirent.h dirent.h-t

EXTRA_DIST += dirent_.h fchdir.c

EXTRA_libcpio_a_SOURCES += fchdir.c

## end   gnulib module fchdir

## begin gnulib module fcntl

BUILT_SOURCES += $(FCNTL_H)

# We need the following in order to create <fcntl.h> when the system
# doesn't have one that works with the given compiler.
fcntl.h: fcntl_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_FCNTL_H''@|$(NEXT_FCNTL_H)|g' \
	      < $(srcdir)/fcntl_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += fcntl.h fcntl.h-t

EXTRA_DIST += fcntl_.h

## end   gnulib module fcntl

## begin gnulib module fcntl-safer


EXTRA_DIST += creat-safer.c fcntl--.h fcntl-safer.h open-safer.c

EXTRA_libcpio_a_SOURCES += creat-safer.c open-safer.c

## end   gnulib module fcntl-safer

## begin gnulib module fileblocks


EXTRA_DIST += fileblocks.c

EXTRA_libcpio_a_SOURCES += fileblocks.c

## end   gnulib module fileblocks

## begin gnulib module float

BUILT_SOURCES += $(FLOAT_H)

# We need the following in order to create <float.h> when the system
# doesn't have one that works with the given compiler.
float.h: float_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_FLOAT_H''@|$(NEXT_FLOAT_H)|g' \
	      < $(srcdir)/float_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += float.h float.h-t

EXTRA_DIST += float_.h

## end   gnulib module float

## begin gnulib module fnmatch

BUILT_SOURCES += $(FNMATCH_H)

# We need the following in order to create <fnmatch.h> when the system
# doesn't have one that supports the required API.
fnmatch.h: fnmatch_.h
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat $(srcdir)/fnmatch_.h; \
	} > $@-t
	mv -f $@-t $@
MOSTLYCLEANFILES += fnmatch.h fnmatch.h-t

EXTRA_DIST += fnmatch.c fnmatch_.h fnmatch_loop.c

EXTRA_libcpio_a_SOURCES += fnmatch.c fnmatch_loop.c

## end   gnulib module fnmatch

## begin gnulib module fpending


EXTRA_DIST += __fpending.c __fpending.h

EXTRA_libcpio_a_SOURCES += __fpending.c

## end   gnulib module fpending

## begin gnulib module full-write

libcpio_a_SOURCES += full-write.h full-write.c

## end   gnulib module full-write

## begin gnulib module getcwd


EXTRA_DIST += getcwd.c

EXTRA_libcpio_a_SOURCES += getcwd.c

## end   gnulib module getcwd

## begin gnulib module getdate

libcpio_a_SOURCES += getdate.y
BUILT_SOURCES += getdate.c
MAINTAINERCLEANFILES += getdate.c
EXTRA_DIST += getdate.c

EXTRA_DIST += getdate.h

## end   gnulib module getdate

## begin gnulib module getopt

BUILT_SOURCES += $(GETOPT_H)

# We need the following in order to create <getopt.h> when the system
# doesn't have one that works with the given compiler.
getopt.h: getopt_.h
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat $(srcdir)/getopt_.h; \
	} > $@-t
	mv -f $@-t $@
MOSTLYCLEANFILES += getopt.h getopt.h-t

EXTRA_DIST += getopt.c getopt1.c getopt_.h getopt_int.h

EXTRA_libcpio_a_SOURCES += getopt.c getopt1.c

## end   gnulib module getopt

## begin gnulib module gettext

# This is for those projects which use "gettextize --intl" to put a source-code
# copy of libintl into their package. In such projects, every Makefile.am needs
# -I$(top_builddir)/intl, so that <libintl.h> can be found in this directory.
# For the Makefile.ams in other directories it is the maintainer's
# responsibility; for the one from gnulib we do it here.
# This option has no effect when the user disables NLS (because then the intl
# directory contains no libintl.h file) or when the project does not use
# "gettextize --intl".
#AM_CPPFLAGS += -I$(top_builddir)/intl

## end   gnulib module gettext

## begin gnulib module gettext-h

libcpio_a_SOURCES += gettext.h

## end   gnulib module gettext-h

## begin gnulib module gettime


EXTRA_DIST += gettime.c

EXTRA_libcpio_a_SOURCES += gettime.c

## end   gnulib module gettime

## begin gnulib module gettimeofday


EXTRA_DIST += gettimeofday.c

EXTRA_libcpio_a_SOURCES += gettimeofday.c

## end   gnulib module gettimeofday

## begin gnulib module hash


EXTRA_DIST += hash.c hash.h

EXTRA_libcpio_a_SOURCES += hash.c

## end   gnulib module hash

## begin gnulib module intprops


EXTRA_DIST += intprops.h

## end   gnulib module intprops

## begin gnulib module inttostr


EXTRA_DIST += imaxtostr.c inttostr.c inttostr.h offtostr.c uinttostr.c umaxtostr.c

EXTRA_libcpio_a_SOURCES += imaxtostr.c inttostr.c offtostr.c uinttostr.c umaxtostr.c

## end   gnulib module inttostr

## begin gnulib module inttypes

BUILT_SOURCES += $(INTTYPES_H)

# We need the following in order to create <inttypes.h> when the system
# doesn't have one that works with the given compiler.
inttypes.h: inttypes_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''HAVE_INTTYPES_H''@/$(HAVE_INTTYPES_H)/g' \
	      -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_INTTYPES_H''@|$(NEXT_INTTYPES_H)|g' \
	      -e 's/@''PRI_MACROS_BROKEN''@/$(PRI_MACROS_BROKEN)/g' \
	      -e 's/@''HAVE_LONG_LONG_INT''@/$(HAVE_LONG_LONG_INT)/g' \
	      -e 's/@''HAVE_UNSIGNED_LONG_LONG_INT''@/$(HAVE_UNSIGNED_LONG_LONG_INT)/g' \
	      -e 's/@''PRIPTR_PREFIX''@/$(PRIPTR_PREFIX)/g' \
	      -e 's/@''GNULIB_IMAXABS''@/$(GNULIB_IMAXABS)/g' \
	      -e 's/@''GNULIB_IMAXDIV''@/$(GNULIB_IMAXDIV)/g' \
	      -e 's/@''GNULIB_STRTOIMAX''@/$(GNULIB_STRTOIMAX)/g' \
	      -e 's/@''GNULIB_STRTOUMAX''@/$(GNULIB_STRTOUMAX)/g' \
	      -e 's/@''HAVE_DECL_IMAXABS''@/$(HAVE_DECL_IMAXABS)/g' \
	      -e 's/@''HAVE_DECL_IMAXDIV''@/$(HAVE_DECL_IMAXDIV)/g' \
	      -e 's/@''HAVE_DECL_STRTOIMAX''@/$(HAVE_DECL_STRTOIMAX)/g' \
	      -e 's/@''HAVE_DECL_STRTOUMAX''@/$(HAVE_DECL_STRTOUMAX)/g' \
	      -e '/definition of GL_LINK_WARNING/r $(LINK_WARNING_H)' \
	      < $(srcdir)/inttypes_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += inttypes.h inttypes.h-t

EXTRA_DIST += inttypes_.h

## end   gnulib module inttypes

## begin gnulib module lchown


EXTRA_DIST += lchown.c

EXTRA_libcpio_a_SOURCES += lchown.c

## end   gnulib module lchown

## begin gnulib module link-warning

LINK_WARNING_H=$(top_srcdir)/build-aux/link-warning.h

## end   gnulib module link-warning

## begin gnulib module lstat


EXTRA_DIST += lstat.c lstat.h

EXTRA_libcpio_a_SOURCES += lstat.c

## end   gnulib module lstat

## begin gnulib module malloc


EXTRA_DIST += malloc.c

EXTRA_libcpio_a_SOURCES += malloc.c

## end   gnulib module malloc

## begin gnulib module malloca

libcpio_a_SOURCES += malloca.c

EXTRA_DIST += malloca.h malloca.valgrind

## end   gnulib module malloca

## begin gnulib module mempcpy


EXTRA_DIST += mempcpy.c

EXTRA_libcpio_a_SOURCES += mempcpy.c

## end   gnulib module mempcpy

## begin gnulib module memrchr


EXTRA_DIST += memrchr.c

EXTRA_libcpio_a_SOURCES += memrchr.c

## end   gnulib module memrchr

## begin gnulib module mktime


EXTRA_DIST += mktime.c

EXTRA_libcpio_a_SOURCES += mktime.c

## end   gnulib module mktime

## begin gnulib module obstack


EXTRA_DIST += obstack.c obstack.h

EXTRA_libcpio_a_SOURCES += obstack.c

## end   gnulib module obstack

## begin gnulib module openat


EXTRA_DIST += at-func.c fchmodat.c fchownat.c fstatat.c mkdirat.c openat-priv.h openat-proc.c openat.c openat.h

EXTRA_libcpio_a_SOURCES += at-func.c fchmodat.c fchownat.c fstatat.c mkdirat.c openat-proc.c openat.c

## end   gnulib module openat

## begin gnulib module openat-die

libcpio_a_SOURCES += openat-die.c

## end   gnulib module openat-die

## begin gnulib module pathmax


EXTRA_DIST += pathmax.h

## end   gnulib module pathmax

## begin gnulib module quote


EXTRA_DIST += quote.c quote.h

EXTRA_libcpio_a_SOURCES += quote.c

## end   gnulib module quote

## begin gnulib module quotearg


EXTRA_DIST += quotearg.c quotearg.h

EXTRA_libcpio_a_SOURCES += quotearg.c

## end   gnulib module quotearg

## begin gnulib module readlink


EXTRA_DIST += readlink.c

EXTRA_libcpio_a_SOURCES += readlink.c

## end   gnulib module readlink

## begin gnulib module safe-read


EXTRA_DIST += safe-read.c safe-read.h

EXTRA_libcpio_a_SOURCES += safe-read.c

## end   gnulib module safe-read

## begin gnulib module safe-write


EXTRA_DIST += safe-write.c safe-write.h

EXTRA_libcpio_a_SOURCES += safe-write.c

## end   gnulib module safe-write

## begin gnulib module same-inode


EXTRA_DIST += same-inode.h

## end   gnulib module same-inode

## begin gnulib module save-cwd


EXTRA_DIST += save-cwd.c save-cwd.h

EXTRA_libcpio_a_SOURCES += save-cwd.c

## end   gnulib module save-cwd

## begin gnulib module savedir


EXTRA_DIST += savedir.c savedir.h

EXTRA_libcpio_a_SOURCES += savedir.c

## end   gnulib module savedir

## begin gnulib module setenv


EXTRA_DIST += setenv.c setenv.h unsetenv.c

EXTRA_libcpio_a_SOURCES += setenv.c unsetenv.c

## end   gnulib module setenv

## begin gnulib module sleep


EXTRA_DIST += sleep.c

EXTRA_libcpio_a_SOURCES += sleep.c

## end   gnulib module sleep

## begin gnulib module stdbool

BUILT_SOURCES += $(STDBOOL_H)

# We need the following in order to create <stdbool.h> when the system
# doesn't have one that works.
stdbool.h: stdbool_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''HAVE__BOOL''@/$(HAVE__BOOL)/g' < $(srcdir)/stdbool_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += stdbool.h stdbool.h-t

EXTRA_DIST += stdbool_.h

## end   gnulib module stdbool

## begin gnulib module stdint

BUILT_SOURCES += $(STDINT_H)

# We need the following in order to create <stdint.h> when the system
# doesn't have one that works with the given compiler.
stdint.h: stdint_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''HAVE_STDINT_H''@/$(HAVE_STDINT_H)/g' \
	      -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_STDINT_H''@|$(NEXT_STDINT_H)|g' \
	      -e 's/@''HAVE_SYS_TYPES_H''@/$(HAVE_SYS_TYPES_H)/g' \
	      -e 's/@''HAVE_INTTYPES_H''@/$(HAVE_INTTYPES_H)/g' \
	      -e 's/@''HAVE_SYS_INTTYPES_H''@/$(HAVE_SYS_INTTYPES_H)/g' \
	      -e 's/@''HAVE_SYS_BITYPES_H''@/$(HAVE_SYS_BITYPES_H)/g' \
	      -e 's/@''HAVE_LONG_LONG_INT''@/$(HAVE_LONG_LONG_INT)/g' \
	      -e 's/@''HAVE_UNSIGNED_LONG_LONG_INT''@/$(HAVE_UNSIGNED_LONG_LONG_INT)/g' \
	      -e 's/@''BITSIZEOF_PTRDIFF_T''@/$(BITSIZEOF_PTRDIFF_T)/g' \
	      -e 's/@''PTRDIFF_T_SUFFIX''@/$(PTRDIFF_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_SIG_ATOMIC_T''@/$(BITSIZEOF_SIG_ATOMIC_T)/g' \
	      -e 's/@''HAVE_SIGNED_SIG_ATOMIC_T''@/$(HAVE_SIGNED_SIG_ATOMIC_T)/g' \
	      -e 's/@''SIG_ATOMIC_T_SUFFIX''@/$(SIG_ATOMIC_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_SIZE_T''@/$(BITSIZEOF_SIZE_T)/g' \
	      -e 's/@''SIZE_T_SUFFIX''@/$(SIZE_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_WCHAR_T''@/$(BITSIZEOF_WCHAR_T)/g' \
	      -e 's/@''HAVE_SIGNED_WCHAR_T''@/$(HAVE_SIGNED_WCHAR_T)/g' \
	      -e 's/@''WCHAR_T_SUFFIX''@/$(WCHAR_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_WINT_T''@/$(BITSIZEOF_WINT_T)/g' \
	      -e 's/@''HAVE_SIGNED_WINT_T''@/$(HAVE_SIGNED_WINT_T)/g' \
	      -e 's/@''WINT_T_SUFFIX''@/$(WINT_T_SUFFIX)/g' \
	      < $(srcdir)/stdint_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += stdint.h stdint.h-t

EXTRA_DIST += stdint_.h

## end   gnulib module stdint

## begin gnulib module stdio

BUILT_SOURCES += stdio.h

# We need the following in order to create <stdio.h> when the system
# doesn't have one that works with the given compiler.
stdio.h: stdio_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_STDIO_H''@|$(NEXT_STDIO_H)|g' \
	      -e 's|@''GNULIB_FPRINTF_POSIX''@|$(GNULIB_FPRINTF_POSIX)|g' \
	      -e 's|@''GNULIB_PRINTF_POSIX''@|$(GNULIB_PRINTF_POSIX)|g' \
	      -e 's|@''GNULIB_SNPRINTF''@|$(GNULIB_SNPRINTF)|g' \
	      -e 's|@''GNULIB_SPRINTF_POSIX''@|$(GNULIB_SPRINTF_POSIX)|g' \
	      -e 's|@''GNULIB_VFPRINTF_POSIX''@|$(GNULIB_VFPRINTF_POSIX)|g' \
	      -e 's|@''GNULIB_VPRINTF_POSIX''@|$(GNULIB_VPRINTF_POSIX)|g' \
	      -e 's|@''GNULIB_VSNPRINTF''@|$(GNULIB_VSNPRINTF)|g' \
	      -e 's|@''GNULIB_VSPRINTF_POSIX''@|$(GNULIB_VSPRINTF_POSIX)|g' \
	      -e 's|@''GNULIB_VASPRINTF''@|$(GNULIB_VASPRINTF)|g' \
	      -e 's|@''GNULIB_FSEEK''@|$(GNULIB_FSEEK)|g' \
	      -e 's|@''GNULIB_FSEEKO''@|$(GNULIB_FSEEKO)|g' \
	      -e 's|@''GNULIB_FTELL''@|$(GNULIB_FTELL)|g' \
	      -e 's|@''GNULIB_FTELLO''@|$(GNULIB_FTELLO)|g' \
	      -e 's|@''GNULIB_FFLUSH''@|$(GNULIB_FFLUSH)|g' \
	      -e 's|@''REPLACE_FPRINTF''@|$(REPLACE_FPRINTF)|g' \
	      -e 's|@''REPLACE_VFPRINTF''@|$(REPLACE_VFPRINTF)|g' \
	      -e 's|@''REPLACE_PRINTF''@|$(REPLACE_PRINTF)|g' \
	      -e 's|@''REPLACE_VPRINTF''@|$(REPLACE_VPRINTF)|g' \
	      -e 's|@''REPLACE_SNPRINTF''@|$(REPLACE_SNPRINTF)|g' \
	      -e 's|@''HAVE_DECL_SNPRINTF''@|$(HAVE_DECL_SNPRINTF)|g' \
	      -e 's|@''REPLACE_VSNPRINTF''@|$(REPLACE_VSNPRINTF)|g' \
	      -e 's|@''HAVE_DECL_VSNPRINTF''@|$(HAVE_DECL_VSNPRINTF)|g' \
	      -e 's|@''REPLACE_SPRINTF''@|$(REPLACE_SPRINTF)|g' \
	      -e 's|@''REPLACE_VSPRINTF''@|$(REPLACE_VSPRINTF)|g' \
	      -e 's|@''HAVE_VASPRINTF''@|$(HAVE_VASPRINTF)|g' \
	      -e 's|@''REPLACE_VASPRINTF''@|$(REPLACE_VASPRINTF)|g' \
	      -e 's|@''REPLACE_FSEEKO''@|$(REPLACE_FSEEKO)|g' \
	      -e 's|@''REPLACE_FSEEK''@|$(REPLACE_FSEEK)|g' \
	      -e 's|@''REPLACE_FTELLO''@|$(REPLACE_FTELLO)|g' \
	      -e 's|@''REPLACE_FTELL''@|$(REPLACE_FTELL)|g' \
	      -e 's|@''REPLACE_FFLUSH''@|$(REPLACE_FFLUSH)|g' \
	      -e '/definition of GL_LINK_WARNING/r $(LINK_WARNING_H)' \
	      < $(srcdir)/stdio_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += stdio.h stdio.h-t

EXTRA_DIST += stdio_.h

## end   gnulib module stdio

## begin gnulib module stdlib

BUILT_SOURCES += stdlib.h

# We need the following in order to create <stdlib.h> when the system
# doesn't have one that works with the given compiler.
stdlib.h: stdlib_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_STDLIB_H''@|$(NEXT_STDLIB_H)|g' \
	      -e 's|@''GNULIB_GETSUBOPT''@|$(GNULIB_GETSUBOPT)|g' \
	      -e 's|@''GNULIB_MKDTEMP''@|$(GNULIB_MKDTEMP)|g' \
	      -e 's|@''GNULIB_MKSTEMP''@|$(GNULIB_MKSTEMP)|g' \
	      -e 's|@''HAVE_GETSUBOPT''@|$(HAVE_GETSUBOPT)|g' \
	      -e 's|@''HAVE_MKDTEMP''@|$(HAVE_MKDTEMP)|g' \
	      -e 's|@''REPLACE_MKSTEMP''@|$(REPLACE_MKSTEMP)|g' \
	      -e '/definition of GL_LINK_WARNING/r $(LINK_WARNING_H)' \
	      < $(srcdir)/stdlib_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += stdlib.h stdlib.h-t

EXTRA_DIST += stdlib_.h

## end   gnulib module stdlib

## begin gnulib module stpcpy


EXTRA_DIST += stpcpy.c

EXTRA_libcpio_a_SOURCES += stpcpy.c

## end   gnulib module stpcpy

## begin gnulib module strcase


EXTRA_DIST += strcasecmp.c strncasecmp.c

EXTRA_libcpio_a_SOURCES += strcasecmp.c strncasecmp.c

## end   gnulib module strcase

## begin gnulib module strchrnul


EXTRA_DIST += strchrnul.c

EXTRA_libcpio_a_SOURCES += strchrnul.c

## end   gnulib module strchrnul

## begin gnulib module strdup


EXTRA_DIST += strdup.c

EXTRA_libcpio_a_SOURCES += strdup.c

## end   gnulib module strdup

## begin gnulib module strerror


EXTRA_DIST += strerror.c

EXTRA_libcpio_a_SOURCES += strerror.c

## end   gnulib module strerror

## begin gnulib module string

BUILT_SOURCES += string.h

# We need the following in order to create <string.h> when the system
# doesn't have one that works with the given compiler.
string.h: string_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_STRING_H''@|$(NEXT_STRING_H)|g' \
	      -e 's|@''GNULIB_MBSLEN''@|$(GNULIB_MBSLEN)|g' \
	      -e 's|@''GNULIB_MBSNLEN''@|$(GNULIB_MBSNLEN)|g' \
	      -e 's|@''GNULIB_MBSCHR''@|$(GNULIB_MBSCHR)|g' \
	      -e 's|@''GNULIB_MBSRCHR''@|$(GNULIB_MBSRCHR)|g' \
	      -e 's|@''GNULIB_MBSSTR''@|$(GNULIB_MBSSTR)|g' \
	      -e 's|@''GNULIB_MBSCASECMP''@|$(GNULIB_MBSCASECMP)|g' \
	      -e 's|@''GNULIB_MBSNCASECMP''@|$(GNULIB_MBSNCASECMP)|g' \
	      -e 's|@''GNULIB_MBSPCASECMP''@|$(GNULIB_MBSPCASECMP)|g' \
	      -e 's|@''GNULIB_MBSCASESTR''@|$(GNULIB_MBSCASESTR)|g' \
	      -e 's|@''GNULIB_MBSCSPN''@|$(GNULIB_MBSCSPN)|g' \
	      -e 's|@''GNULIB_MBSPBRK''@|$(GNULIB_MBSPBRK)|g' \
	      -e 's|@''GNULIB_MBSSPN''@|$(GNULIB_MBSSPN)|g' \
	      -e 's|@''GNULIB_MBSSEP''@|$(GNULIB_MBSSEP)|g' \
	      -e 's|@''GNULIB_MBSTOK_R''@|$(GNULIB_MBSTOK_R)|g' \
	      -e 's|@''GNULIB_MEMMEM''@|$(GNULIB_MEMMEM)|g' \
	      -e 's|@''GNULIB_MEMPCPY''@|$(GNULIB_MEMPCPY)|g' \
	      -e 's|@''GNULIB_MEMRCHR''@|$(GNULIB_MEMRCHR)|g' \
	      -e 's|@''GNULIB_STPCPY''@|$(GNULIB_STPCPY)|g' \
	      -e 's|@''GNULIB_STPNCPY''@|$(GNULIB_STPNCPY)|g' \
	      -e 's|@''GNULIB_STRCHRNUL''@|$(GNULIB_STRCHRNUL)|g' \
	      -e 's|@''GNULIB_STRDUP''@|$(GNULIB_STRDUP)|g' \
	      -e 's|@''GNULIB_STRNDUP''@|$(GNULIB_STRNDUP)|g' \
	      -e 's|@''GNULIB_STRNLEN''@|$(GNULIB_STRNLEN)|g' \
	      -e 's|@''GNULIB_STRPBRK''@|$(GNULIB_STRPBRK)|g' \
	      -e 's|@''GNULIB_STRSEP''@|$(GNULIB_STRSEP)|g' \
	      -e 's|@''GNULIB_STRCASESTR''@|$(GNULIB_STRCASESTR)|g' \
	      -e 's|@''GNULIB_STRTOK_R''@|$(GNULIB_STRTOK_R)|g' \
	      -e 's|@''HAVE_DECL_MEMMEM''@|$(HAVE_DECL_MEMMEM)|g' \
	      -e 's|@''HAVE_MEMPCPY''@|$(HAVE_MEMPCPY)|g' \
	      -e 's|@''HAVE_DECL_MEMRCHR''@|$(HAVE_DECL_MEMRCHR)|g' \
	      -e 's|@''HAVE_STPCPY''@|$(HAVE_STPCPY)|g' \
	      -e 's|@''HAVE_STPNCPY''@|$(HAVE_STPNCPY)|g' \
	      -e 's|@''HAVE_STRCASECMP''@|$(HAVE_STRCASECMP)|g' \
	      -e 's|@''HAVE_DECL_STRNCASECMP''@|$(HAVE_DECL_STRNCASECMP)|g' \
	      -e 's|@''HAVE_STRCHRNUL''@|$(HAVE_STRCHRNUL)|g' \
	      -e 's|@''HAVE_DECL_STRDUP''@|$(HAVE_DECL_STRDUP)|g' \
	      -e 's|@''HAVE_STRNDUP''@|$(HAVE_STRNDUP)|g' \
	      -e 's|@''HAVE_DECL_STRNDUP''@|$(HAVE_DECL_STRNDUP)|g' \
	      -e 's|@''HAVE_DECL_STRNLEN''@|$(HAVE_DECL_STRNLEN)|g' \
	      -e 's|@''HAVE_STRPBRK''@|$(HAVE_STRPBRK)|g' \
	      -e 's|@''HAVE_STRSEP''@|$(HAVE_STRSEP)|g' \
	      -e 's|@''HAVE_STRCASESTR''@|$(HAVE_STRCASESTR)|g' \
	      -e 's|@''HAVE_DECL_STRTOK_R''@|$(HAVE_DECL_STRTOK_R)|g' \
	      -e '/definition of GL_LINK_WARNING/r $(LINK_WARNING_H)' \
	      < $(srcdir)/string_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += string.h string.h-t

EXTRA_DIST += string_.h

## end   gnulib module string

## begin gnulib module strndup


EXTRA_DIST += strndup.c

EXTRA_libcpio_a_SOURCES += strndup.c

## end   gnulib module strndup

## begin gnulib module strnlen


EXTRA_DIST += strnlen.c

EXTRA_libcpio_a_SOURCES += strnlen.c

## end   gnulib module strnlen

## begin gnulib module strtol


EXTRA_DIST += strtol.c

EXTRA_libcpio_a_SOURCES += strtol.c

## end   gnulib module strtol

## begin gnulib module sys_stat

BUILT_SOURCES += $(SYS_STAT_H)

# We need the following in order to create <sys/stat.h> when the system
# has one that is incomplete.
sys/stat.h: sys_stat_.h
	@MKDIR_P@ sys
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_SYS_STAT_H''@|$(NEXT_SYS_STAT_H)|g' \
	      -e 's|@''HAVE_IO_H''@|$(HAVE_IO_H)|g' \
	      -e 's|@''HAVE_LSTAT''@|$(HAVE_LSTAT)|g' \
	      -e 's|@''HAVE_DECL_MKDIR''@|$(HAVE_DECL_MKDIR)|g' \
	      < $(srcdir)/sys_stat_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += sys/stat.h sys/stat.h-t
MOSTLYCLEANDIRS += sys

EXTRA_DIST += sys_stat_.h

## end   gnulib module sys_stat

## begin gnulib module sys_time

BUILT_SOURCES += $(SYS_TIME_H)

# We need the following in order to create <sys/time.h> when the system
# doesn't have one that works with the given compiler.
sys/time.h: sys_time_.h
	@MKDIR_P@ sys
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''HAVE_SYS_TIME_H''@/$(HAVE_SYS_TIME_H)/g' \
	      -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_SYS_TIME_H''@|$(NEXT_SYS_TIME_H)|g' \
	      -e 's/@''REPLACE_GETTIMEOFDAY''@/$(REPLACE_GETTIMEOFDAY)/g' \
	      -e 's/@''HAVE_STRUCT_TIMEVAL''@/$(HAVE_STRUCT_TIMEVAL)/g' \
	      < $(srcdir)/sys_time_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += sys/time.h sys/time.h-t

EXTRA_DIST += sys_time_.h

## end   gnulib module sys_time

## begin gnulib module sysexits

BUILT_SOURCES += $(SYSEXITS_H)

# We need the following in order to create <sysexits.h> when the system
# doesn't have one that works with the given compiler.
sysexits.h: sysexits_.h
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''HAVE_SYSEXITS_H''@|$(HAVE_SYSEXITS_H)|g' \
	      -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_SYSEXITS_H''@|$(NEXT_SYSEXITS_H)|g' \
	      < $(srcdir)/sysexits_.h; \
	} > $@-t
	mv -f $@-t $@
MOSTLYCLEANFILES += sysexits.h sysexits.h-t

EXTRA_DIST += sysexits_.h

## end   gnulib module sysexits

## begin gnulib module time

BUILT_SOURCES += time.h

# We need the following in order to create <time.h> when the system
# doesn't have one that works with the given compiler.
time.h: time_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@NEXT_TIME_H''@|$(NEXT_TIME_H)|g' \
	      -e 's|@REPLACE_LOCALTIME_R''@|$(REPLACE_LOCALTIME_R)|g' \
	      -e 's|@REPLACE_NANOSLEEP''@|$(REPLACE_NANOSLEEP)|g' \
	      -e 's|@REPLACE_STRPTIME''@|$(REPLACE_STRPTIME)|g' \
	      -e 's|@REPLACE_TIMEGM''@|$(REPLACE_TIMEGM)|g' \
	      -e 's|@SYS_TIME_H_DEFINES_STRUCT_TIMESPEC''@|$(SYS_TIME_H_DEFINES_STRUCT_TIMESPEC)|g' \
	      -e 's|@TIME_H_DEFINES_STRUCT_TIMESPEC''@|$(TIME_H_DEFINES_STRUCT_TIMESPEC)|g' \
	      < $(srcdir)/time_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += time.h time.h-t

EXTRA_DIST += time_.h

## end   gnulib module time

## begin gnulib module time_r


EXTRA_DIST += time_r.c

EXTRA_libcpio_a_SOURCES += time_r.c

## end   gnulib module time_r

## begin gnulib module timespec


EXTRA_DIST += timespec.h

## end   gnulib module timespec

## begin gnulib module unistd

BUILT_SOURCES += unistd.h

# We need the following in order to create an empty placeholder for
# <unistd.h> when the system doesn't have one.
unistd.h: unistd_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''HAVE_UNISTD_H''@|$(HAVE_UNISTD_H)|g' \
	      -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_UNISTD_H''@|$(NEXT_UNISTD_H)|g' \
	      -e 's|@''GNULIB_CHOWN''@|$(GNULIB_CHOWN)|g' \
	      -e 's|@''GNULIB_DUP2''@|$(GNULIB_DUP2)|g' \
	      -e 's|@''GNULIB_FCHDIR''@|$(GNULIB_FCHDIR)|g' \
	      -e 's|@''GNULIB_FTRUNCATE''@|$(GNULIB_FTRUNCATE)|g' \
	      -e 's|@''GNULIB_GETCWD''@|$(GNULIB_GETCWD)|g' \
	      -e 's|@''GNULIB_GETLOGIN_R''@|$(GNULIB_GETLOGIN_R)|g' \
	      -e 's|@''GNULIB_LCHOWN''@|$(GNULIB_LCHOWN)|g' \
	      -e 's|@''GNULIB_LSEEK''@|$(GNULIB_LSEEK)|g' \
	      -e 's|@''GNULIB_READLINK''@|$(GNULIB_READLINK)|g' \
	      -e 's|@''GNULIB_SLEEP''@|$(GNULIB_SLEEP)|g' \
	      -e 's|@''HAVE_DUP2''@|$(HAVE_DUP2)|g' \
	      -e 's|@''HAVE_FTRUNCATE''@|$(HAVE_FTRUNCATE)|g' \
	      -e 's|@''HAVE_READLINK''@|$(HAVE_READLINK)|g' \
	      -e 's|@''HAVE_SLEEP''@|$(HAVE_SLEEP)|g' \
	      -e 's|@''HAVE_DECL_GETLOGIN_R''@|$(HAVE_DECL_GETLOGIN_R)|g' \
	      -e 's|@''REPLACE_CHOWN''@|$(REPLACE_CHOWN)|g' \
	      -e 's|@''REPLACE_FCHDIR''@|$(REPLACE_FCHDIR)|g' \
	      -e 's|@''REPLACE_GETCWD''@|$(REPLACE_GETCWD)|g' \
	      -e 's|@''REPLACE_LCHOWN''@|$(REPLACE_LCHOWN)|g' \
	      -e 's|@''REPLACE_LSEEK''@|$(REPLACE_LSEEK)|g' \
	      < $(srcdir)/unistd_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += unistd.h unistd.h-t

EXTRA_DIST += unistd_.h

## end   gnulib module unistd

## begin gnulib module unistd-safer


EXTRA_DIST += dup-safer.c fd-safer.c pipe-safer.c unistd--.h unistd-safer.h

EXTRA_libcpio_a_SOURCES += dup-safer.c fd-safer.c pipe-safer.c

## end   gnulib module unistd-safer

## begin gnulib module unlocked-io


EXTRA_DIST += unlocked-io.h

## end   gnulib module unlocked-io

## begin gnulib module utimens


EXTRA_DIST += utimens.c utimens.h

EXTRA_libcpio_a_SOURCES += utimens.c

## end   gnulib module utimens

## begin gnulib module vasnprintf


EXTRA_DIST += asnprintf.c float+.h printf-args.c printf-args.h printf-parse.c printf-parse.h vasnprintf.c vasnprintf.h

EXTRA_libcpio_a_SOURCES += asnprintf.c printf-args.c printf-parse.c vasnprintf.c

## end   gnulib module vasnprintf

## begin gnulib module verify

libcpio_a_SOURCES += verify.h

## end   gnulib module verify

## begin gnulib module version-etc

libcpio_a_SOURCES += version-etc.h version-etc.c

## end   gnulib module version-etc

## begin gnulib module version-etc-fsf

libcpio_a_SOURCES += version-etc-fsf.c

## end   gnulib module version-etc-fsf

## begin gnulib module vsnprintf


EXTRA_DIST += vsnprintf.c

EXTRA_libcpio_a_SOURCES += vsnprintf.c

## end   gnulib module vsnprintf

## begin gnulib module wchar

BUILT_SOURCES += $(WCHAR_H)

# We need the following in order to create <wchar.h> when the system
# version does not work standalone.
wchar.h: wchar_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_WCHAR_H''@|$(NEXT_WCHAR_H)|g' \
	      -e 's/@''HAVE_WCHAR_H''@/$(HAVE_WCHAR_H)/g' \
	    < $(srcdir)/wchar_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += wchar.h wchar.h-t

EXTRA_DIST += wchar_.h

## end   gnulib module wchar

## begin gnulib module wctype

BUILT_SOURCES += $(WCTYPE_H)

# We need the following in order to create <wctype.h> when the system
# doesn't have one that works with the given compiler.
wctype.h: wctype_.h
	rm -f $@-t $@
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''HAVE_WCTYPE_H''@/$(HAVE_WCTYPE_H)/g' \
	      -e 's/@''INCLUDE_NEXT''@/$(INCLUDE_NEXT)/g' \
	      -e 's|@''NEXT_WCTYPE_H''@|$(NEXT_WCTYPE_H)|g' \
	      -e 's/@''HAVE_ISWCNTRL''@/$(HAVE_ISWCNTRL)/g' \
	      -e 's/@''HAVE_WINT_T''@/$(HAVE_WINT_T)/g' \
	      < $(srcdir)/wctype_.h; \
	} > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += wctype.h wctype.h-t

EXTRA_DIST += wctype_.h

## end   gnulib module wctype

## begin gnulib module xalloc


EXTRA_DIST += xalloc.h xmalloc.c

EXTRA_libcpio_a_SOURCES += xmalloc.c

## end   gnulib module xalloc

## begin gnulib module xalloc-die

libcpio_a_SOURCES += xalloc-die.c

## end   gnulib module xalloc-die

## begin gnulib module xgetcwd


EXTRA_DIST += xgetcwd.c xgetcwd.h

EXTRA_libcpio_a_SOURCES += xgetcwd.c

## end   gnulib module xgetcwd

## begin gnulib module xsize

libcpio_a_SOURCES += xsize.h

## end   gnulib module xsize

## begin gnulib module xstrndup

libcpio_a_SOURCES += xstrndup.h xstrndup.c

## end   gnulib module xstrndup


mostlyclean-local: mostlyclean-generic
	@for dir in '' $(MOSTLYCLEANDIRS); do \
	  if test -n "$$dir" && test -d $$dir; then \
	    echo "rmdir $$dir"; rmdir $$dir; \
	  fi; \
	done; \
	:
