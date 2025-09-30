# test_hello

from src.funcs import hello, MESSAGE
from testing import assert_true


fn main() raises:
    """Run all ApiMessage tests."""
    test_hello1()


fn test_hello1() raises:
    print("# test_hello1")

    assert_true(hello() == MESSAGE)
