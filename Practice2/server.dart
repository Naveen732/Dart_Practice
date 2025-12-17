// Create a class called Server.
// Every time a new Server() is instantiated, increment a counter.
// The counter should be shared across all instances (not unique to one object).
// Create a static method Server.showActiveServers() that prints the total count.

class Server {
  static int _activeServers = 0;

  Server() {
    _activeServers++;
  }

  static void showActiveServers() {
    print("Active Servers: $_activeServers");
  }
}
void main() {
  Server server1 = Server();
  Server.showActiveServers(); 

  Server server2 = Server();
  Server.showActiveServers(); 

  Server server3 = Server();
  Server.showActiveServers(); 
}