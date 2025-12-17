// Create a class IDCard.
// It should have fields name and idNumber.
// Once an IDCard is created, neither the name nor the ID should ever change (use final).
// Create a const constructor for this class so that if two cards are created with the exact same data as constants, they are the canonical instance.

class IDCard {
  final String name;
  final String idNumber;

  const IDCard(this.name, this.idNumber);
}
void main() {
  const card1 = IDCard("Alice", "12345");
  const card2 = IDCard("Alice", "12345");
  const card3 = IDCard("Bob", "67890");

  print(identical(card1, card2)); 
  print(identical(card1, card3)); 
}