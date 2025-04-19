from src.math import sub, add, mul, div


def test_sum():
    assert add(1, 2) == 3

def test_sub():
    assert sub(2, 1) == 1

def test_mul():
    assert mul(2, 1) == 2

def test_div():
    assert div(6, 2) == 3
