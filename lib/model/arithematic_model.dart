double calculateData(int opValue, double first, double second) {
  double result = 0;
  switch (opValue) {
    case 0:
      return (first + second);
    case 1:
      result = (first - second);
    case 2:
      result = (first * second);
    case 3:
      result = (first / second);
      break;
    default:
      result = 0;
  }
  return result;
}
