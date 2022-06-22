import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/product.dart';

class CartController extends GetxController {
  var cartItems = [].obs;
  double get totalAmount => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product, BuildContext context) {
    cartItems.add(product);
    // Get.snackbar(
    //   '${product.productName} (${product.price} tk)',
    //   'Added to your cart',
    //   snackPosition: SnackPosition.BOTTOM,
    // );
  }
}
