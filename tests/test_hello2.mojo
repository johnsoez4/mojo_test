# test_hello

from src.funcs import hello, MESSAGE
from testing import assert_true


fn main() raises:
    """Run all ApiMessage tests."""
    test_hello2()
    test_hello3()


fn test_hello2() raises:
    print("# test_hello2")

    assert_true(hello() == MESSAGE)


fn test_hello3() raises:
    print("# test_hello3")

    assert_true(hello() == MESSAGE)
