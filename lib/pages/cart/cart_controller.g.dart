// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on CartControllerBase, Store {
  final _$cartProductsAtom = Atom(name: 'CartControllerBase.cartProducts');

  @override
  ObservableList<SaleProduct> get cartProducts {
    _$cartProductsAtom.reportRead();
    return super.cartProducts;
  }

  @override
  set cartProducts(ObservableList<SaleProduct> value) {
    _$cartProductsAtom.reportWrite(value, super.cartProducts, () {
      super.cartProducts = value;
    });
  }

  final _$checkoutAtom = Atom(name: 'CartControllerBase.checkout');

  @override
  String get checkout {
    _$checkoutAtom.reportRead();
    return super.checkout;
  }

  @override
  set checkout(String value) {
    _$checkoutAtom.reportWrite(value, super.checkout, () {
      super.checkout = value;
    });
  }

  final _$listSizeAtom = Atom(name: 'CartControllerBase.listSize');

  @override
  String get listSize {
    _$listSizeAtom.reportRead();
    return super.listSize;
  }

  @override
  set listSize(String value) {
    _$listSizeAtom.reportWrite(value, super.listSize, () {
      super.listSize = value;
    });
  }

  final _$CartControllerBaseActionController =
      ActionController(name: 'CartControllerBase');

  @override
  void addItem(Product product) {
    final _$actionInfo = _$CartControllerBaseActionController.startAction(
        name: 'CartControllerBase.addItem');
    try {
      return super.addItem(product);
    } finally {
      _$CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(Product product) {
    final _$actionInfo = _$CartControllerBaseActionController.startAction(
        name: 'CartControllerBase.removeItem');
    try {
      return super.removeItem(product);
    } finally {
      _$CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void attListSize() {
    final _$actionInfo = _$CartControllerBaseActionController.startAction(
        name: 'CartControllerBase.attListSize');
    try {
      return super.attListSize();
    } finally {
      _$CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartProducts: ${cartProducts},
checkout: ${checkout},
listSize: ${listSize}
    ''';
  }
}
