set -x

dummy_dir=../../dummy

compile () {
  make
}

run () {
  bap $dummy_dir/hello_world.out --pass=wp \
    --wp-compare=true \
    --wp-file1=main_1.bpj \
    --wp-file2=main_2.bpj \
    --wp-function=main \
    --wp-gdb-filename=diff_data_location.gdb \
    --wp-mem-offset=1
}

compile && run