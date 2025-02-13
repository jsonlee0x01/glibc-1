/* memcmp with SSE2.
   Copyright (C) 2017-2021 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#if IS_IN (libc)
# ifndef memcmp
#  define memcmp __memcmp_sse2
# endif

# ifdef SHARED
#  undef libc_hidden_builtin_def
#  define libc_hidden_builtin_def(name)

#  undef libc_hidden_def
#  define libc_hidden_def(ignored)
# endif

# undef weak_alias
# define weak_alias(ignored1, ignored2)

# undef strong_alias
# define strong_alias(ignored1, ignored2)
#endif

#include <sysdeps/x86_64/memcmp.S>
