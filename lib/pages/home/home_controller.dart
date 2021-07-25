import 'package:mobx/mobx.dart';
import 'package:shop_cart/shared/models/product.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  List<Product> products = [
    Product(
      value: 20.0,
      name: "Naike",
      image: 'assets/images/naike.png',
    ),
    Product(
      value: 40.0,
      name: "Atitas",
      image: 'assets/images/atitas.png',
    ),
    Product(
      value: 60.0,
      name: "All Estar",
      image: 'assets/images/allestar.png',
    ),
    Product(
      value: 80.0,
      name: "Pumba",
      image: 'assets/images/pumba.png',
    ),
    Product(
      value: 100.0,
      name: "Olimpyakus",
      image: 'assets/images/olimpyakus.png',
    ),
  ];
}
