# The modified binary adds a null check after the call to malloc. In the case
# that malloc returns NULL, the modified binary will hit an assert_fail.

# Should return SAT.

run () {
  bap wp \
    --func=main \
    --trip-asserts \
    --compare-post-reg-values=RAX \
    -- main_1 main_2
}

run
