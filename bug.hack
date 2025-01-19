function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code has an uncommon error in Hack related to integer overflow.  If the input `x` is a large enough integer, the factorial calculation will exceed the maximum value that can be represented by an int, resulting in unexpected behavior or an exception. Hack's type system doesn't inherently prevent this.