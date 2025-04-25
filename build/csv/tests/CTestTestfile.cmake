# CMake generated Testfile for 
# Source directory: /home/user/excel-to-bag/src/csv-parser/tests
# Build directory: /home/user/excel-to-bag/build/csv/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test "/home/user/excel-to-bag/build/csv/tests/csv_test")
set_tests_properties(test PROPERTIES  WORKING_DIRECTORY "/home/user/excel-to-bag/src/csv-parser" _BACKTRACE_TRIPLES "/home/user/excel-to-bag/src/csv-parser/tests/CMakeLists.txt;43;add_test;/home/user/excel-to-bag/src/csv-parser/tests/CMakeLists.txt;0;")
subdirs("../_deps/catch2-build")
