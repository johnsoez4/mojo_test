"""This file crashes the Mojo compiler when it runs tests.

# KO - Causes seg fault due to file `crash_mojo_test.mojo`.
$ mojo test

# KO - Discovers only one test file (two tests of three total).
$ mojo test ./tests/*

# KO - Collect option lists tests in only the second test file.
$ mojo test --co ./tests/*
</home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello2.mojo>
  </home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello2.mojo::test_hello2()>
  </home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello2.mojo::test_hello3()>

# OK - Discovers tests in both test files and ignores `crash_mojo_test.mojo`.
$ mojo test ./tests

# OK - Collect option lists tests in both test files and ignores `crash_mojo_test.mojo`.
$ mojo test --co ./tests
</home/johnsoe1/dev/EzMojo/playground/mojo_test/tests>
  </home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello1.mojo>
    </home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello1.mojo::test_hello1()>
  </home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello2.mojo>
    </home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello2.mojo::test_hello2()>
    </home/johnsoe1/dev/EzMojo/playground/mojo_test/tests/test_hello2.mojo::test_hello3()>
"""

# OK
# struct Matrix():
# struct Matrix[]():

# Seg faults
struct Matrix[rows: Int]():
# struct Matrix[rows: Float64]():
# struct Matrix[rows: Intable]():
# struct Matrix[rows: String]():
