# This test contains a call to foo which returns 3. In main, in the case that
# foo returns 5, we assert_fail. This should be impossible.

# This tests the function spec generated for the function foo.
# The default spec chaoses the caller saved registers based on the input
# registers to the function. In the case where the chaosed value is 5, we
# hit the assert_fail.

# Should return SAT

set -x

compile () {
  make
}

run () {
    bap main --pass=wp --wp-trip-asserts --wp-fun-specs=chaos_caller_saved
}

compile && run
