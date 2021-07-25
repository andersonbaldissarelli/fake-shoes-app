import 'package:mobx/mobx.dart';
import 'package:shop_cart/shared/models/product.dart';
import 'package:shop_cart/shared/models/sale_product.dart';
part 'cart_controller.g.dart';

class CartController = CartControllerBase with _$CartController;

abstract class CartControllerBase with Store {
  @observable
  ObservableList<SaleProduct> cartProducts = ObservableList.of(<SaleProduct>[]);

  @observable
  String checkout = '0';

  @observable
  String listSize = '0';

  @action
  void addItem(Product product) {
    if (cartProducts.any((element) => element.product == product)) {
      final _index =
          cartProducts.indexWhere((element) => element.product == product);
      final _cartItem = cartProducts[_index];
      cartProducts[_index] = _cartItem.copyWith(
          quantity: _cartItem.quantity + 1,
          sumvalue: (_cartItem.quantity + 1) * _cartItem.product.value);
    } else {
      cartProducts.add(
          SaleProduct(product: product, quantity: 1, sumvalue: product.value));
    }
    attListSize();
  }

  @action
  void removeItem(Product product) {
    if (cartProducts.any((element) => element.product == product)) {
      final _index =
          cartProducts.indexWhere((element) => element.product == product);
      if (cartProducts[_index].quantity > 1) {
        final _cartItem = cartProducts[_index];
        cartProducts[_index] = _cartItem.copyWith(
            quantity: _cartItem.quantity - 1,
            sumvalue: (_cartItem.quantity - 1) * _cartItem.product.value);
      } else {
        cartProducts.removeAt(_index);
      }
    }
    attListSize();
  }

  @action
  void attListSize() {
    double _cartValue = 0.0;
    int _listSize = 0;

    cartProducts.forEach((element) {
      _listSize += element.quantity;
      _cartValue += element.quantity * element.product.value;
    });

    listSize = _listSize.toString();
    checkout = _cartValue.toStringAsFixed(2);
  }
}
