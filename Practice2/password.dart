// Create a class called PasswordValidator.
// Requirements:
// It should have a constructor that takes a int minLength.
// Implement the call method so that instances of the class can be called like a function.
// The call method takes a String password and returns true if valid, false otherwise.

class PasswordValidator {
  final int minLength;

  PasswordValidator(this.minLength);

  bool call(String password) {
    return password.length >= minLength;
  }
}
void main() {
  var validator = PasswordValidator(8);

  print(validator('short')); 
  print(validator('passwordqwe')); 
}