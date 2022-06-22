import 'package:get/get.dart';
import 'package:getx/models/product.dart';

class ShoppingController extends GetxController {
  var products = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 2));
    var productResult = [
      Product(
        id: 1,
        price: 30,
        productDescription: 'Description1',
        productImage: 'abd',
        productName: 'First Product',
      ),
      Product(
        id: 2,
        price: 40,
        productDescription: 'Description2',
        productImage: 'abd',
        productName: 'Second Product',
      ),
      Product(
        id: 3,
        price: 30.5,
        productDescription: 'Description3',
        productImage: 'abd',
        productName: 'Third Product',
      ),
      Product(
        id: 4,
        price: 35.5,
        productDescription: 'Description4',
        productImage: 'abd',
        productName: 'Forth Product',
      ),
    ];
    products.value = productResult;
  }
}
