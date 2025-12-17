// Context: You have a fixed library of classes: Number and Addition (which sums two numbers). You cannot modify these class files.
// Part 1: Define an interface/mixin Evaluator that allows these classes to return a generic integer result.
// Part 2: Later, you decide you want to pretty-print these expressions (e.g., "(1 + 2)").
// Challenge: Implement the "Pretty Print" functionality for both Number and Addition without editing the original Number or Addition classes or the Evaluator interface. Use extensions or mixins to solve this "Expression Problem."

// Assuming the original classes are defined in a library we cannot modify:



class Number {
  final int value;
  Number(this.value);
}

class Addition {
  final Number left;
  final Number right;
  Addition(this.left, this.right);
}

extension Evaluator on Number {
  int evaluate() {
    return value;
  }
}

extension AdditionEvaluator on Addition {
  int evaluate() {
    return left.evaluate() + right.evaluate();
  }
}

extension NumberPrettyPrinter on Number {
  String prettyPrint() {
    return value.toString();
  }
}

extension AdditionPrettyPrinter on Addition {
  String prettyPrint() {
    return "(${left.prettyPrint()} + ${right.prettyPrint()})";
  }
}

void main() {
  Number num1 = Number(1);
  Number num2 = Number(2);

  Addition expr = Addition(num1, num2);

  print("Evaluation:");
  print("Number 1: ${num1.evaluate()}");
  print("Number 2: ${num2.evaluate()}");
  print("Addition: ${expr.evaluate()}");

  print("\nPretty Print:");
  print("Number 1: ${num1.prettyPrint()}");
  print("Number 2: ${num2.prettyPrint()}");
  print("Addition: ${expr.prettyPrint()}");
}
