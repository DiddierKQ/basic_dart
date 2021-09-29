import '../models/cart_model.dart';

class CartController {
  int minTotalForShippingFree = 500;

  addItemInCart(product) {
    // Validate if the product alredy exist in the cart
    if (validateItemInCart(product)) {
      changeQtyItemInCart(product["id"]);
    } else {
      insertItemInCart(product);
    }
  }

  insertItemInCart(product) {
    cart.add(product); // Add a new product in the cart
    print('It has been added the product: $product["name"] in your cart');
  }

  changeQtyItemInCart(productId) {
    // Change the qty in the cart
    var indexCart = cart.indexWhere((cart) => cart["id"] == productId);
    cart[indexCart]["qty"] = cart[indexCart]["qty"] + 1;
  }

  bool validateItemInCart(product) {
    var indexCart = cart.indexWhere((p) => p["id"] == product["id"]);
    return (indexCart != -1) ? true : false;
  }

  bool validateShippingFree() {
    var totalprice = getTotalPriceInCart();
    if (totalprice >= minTotalForShippingFree) {
      print("The shipping is Free.");
      return true;
    } else {
      print("The shipping is not Free.");
      return false;
    }
  }

  getTotalQty() {
    num totalQtyIncart = 0;
    int itemsInCart = cart.length;
    for (int i = 0; i < itemsInCart; i++) {
      totalQtyIncart += cart[i]["qty"];
    }
    print("You have $totalQtyIncart items in your cart");
    return totalQtyIncart;
  }

  getTotalPriceInCart() {
    num totalPrice = 0;
    int itemsInCart = cart.length; // Number of products in the cart
    for (int i = 0; i < itemsInCart; i++) {
      totalPrice += cart[i]["qty"] * cart[i]["price"];
    }
    print("The total price is: $totalPrice");
    return totalPrice;
  }

  deleteItemInCart(product) {
    var indexCart = cart.indexWhere((p) => p["id"] == product["id"]);
    var productName = cart[indexCart]["name"];
    // Validate if exists the item in the cart
    if (indexCart != -1) {
      // Validate if the qty is up 1
      if (cart[indexCart]["qty"] > 1) {
        cart[indexCart]["qty"]--; // rest 1 qty
        print('It has been removed one $productName from your cart');
      } else {
        cart.removeAt(indexCart); // delete the product
        print("You do not have any $productName");
      }
    } else {
      print("The product was not Found");
    }
  }
}
