mixin logger {
  void log(String msg) {
    print("log: $msg");
  }
}

class service with logger {
  void run() {
    log("service started");
  }
}
void main() {
  var s = service();
  s.run();
}