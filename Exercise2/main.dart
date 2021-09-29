import 'controllers/cart_controlller.dart';
import 'models/cart_model.dart';
import 'models/products_model.dart';

void main() {
  cartFunctions();
}

cartFunctions() {

  CartController cartController = CartController();
  
  cartController.addItemInCart(products[1]);
  cartController.addItemInCart(products[1]);
  cartController.addItemInCart(products[3]);
  cartController.getTotalQty();
  cartController.validateShippingFree(); 
  cartController.addItemInCart(products[4]);
  cartController.getTotalQty();
  cartController.getTotalPriceInCart();
  cartController.deleteItemInCart(products[1]);
  cartController.getTotalQty();
  cartController.getTotalPriceInCart();
  cartController.addItemInCart(products[2]);
  cartController.addItemInCart(products[2]);
  cartController.getTotalQty();
  cartController.validateShippingFree();
  
  print("The final result is: ");
  print("Products: $products");
  print("Cart: $cart");

}


