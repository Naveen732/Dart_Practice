class person {
  String _name;

  person(this._name);

  String get name => _name;
  set name(String value) => _name = value;
}
void main() {
  var p = person("Alice");
  print(p.name); 
  p.name = "Bob"; 
  print(p.name);
}