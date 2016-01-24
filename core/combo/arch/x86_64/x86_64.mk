# This file contains feature macro definitions specific to the
# base 'x86_64' platform ABI.
#
# It is also used to build full_x86_64-eng / sdk_x86_64-eng  platform images
# that are run in the emulator under KVM emulation (i.e. running directly on
# the host development machine's CPU).

ARCH_X86_HAVE_SSSE3 := true
ARCH_X86_HAVE_MOVBE := false # Only supported on Atom.
ARCH_X86_HAVE_POPCNT := false
ARCH_X86_HAVE_SSE4 := false
ARCH_X86_HAVE_SSE4_1 := false
ARCH_X86_HAVE_SSE4_2 := false


# CFLAGS for this arch
arch_variant_cflags := \
    -march=x86-64 -mno-popcnt -mno-sse4 -mno-sse4.1 -mno-sse4.2
