// You have a class User with fields name, age, email, and a method save().
// Requirements:
// Instantiate a User.
// Assign values to name, age, and email.
// Call save().
// Constraint: You must do all of this in a single statement using the Cascade operator (..). You cannot create a variable like var u = User();

class User {
  String name = '';
  int age = 0;
  String email = '';

  void save() {
    print('User saved: Name=$name, Age=$age, Email=$email');
  }
}

void main() {
  User()
    ..name = 'Alice'
    ..age = 30
    ..email = 'QWE@GMAIL.COM'
    ..save();
}
