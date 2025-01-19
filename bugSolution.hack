function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x > 12) { //Factorial of 13 exceeds the max value of int
    return 0; // Handle the overflow by returning 0
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
//Alternative Solution using an iterative approach to avoid stack overflow and large number handling
function fooIterative(x: int): int {
  var result = 1;
  for (var i = 1; i <= x; i++) {
    if (result > INT_MAX / i) { //Check for overflow during each multiplication step
        return 0; //or throw exception
    }
    result *= i; 
  }
  return result; 
}

function main(): void {
  echo fooIterative(5);
} 