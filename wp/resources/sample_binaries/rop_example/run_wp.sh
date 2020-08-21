# This tests a C file that has been compiled with GCC and with a tool that
# compiles the file into a ROP chain.

# Should return UNSAT

set -x

run () {
  bap wp \
    --func=main \
    --inline=.* \
    --compare-post-reg-values=RAX \
    -- main-original main-rop
}

run
