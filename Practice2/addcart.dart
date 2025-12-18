// Write a function called addToCart.
// Requirements:
// Positional Parameter: String item (Required).
// Named Parameters: int quantity (defaults to 1), and double? price (optional/nullable).
// Logic: If price is provided, print "Added [quantity] x [item] at $[price] each". If price is NOT provided, print "Added [quantity] x [item] (Price TBD)".
// Arrow Syntax: Try to write the function body using => if possible (or explain why you can't if it's too complex).

void addToCart(String item, {int quantity = 1, double? price}) =>
    price != null
        ? print("Added $quantity x $item at \$$price each")
        : print("Added $quantity x $item (Price TBD)");
void main() {
  addToCart("Apple", quantity: 3, price: 0.5);
  addToCart("Banana", quantity: 2);
  addToCart("Orange");
}