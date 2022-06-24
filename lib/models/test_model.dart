import 'package:get/get.dart';

class Cat {
  final age = 0.obs;
  final name = 'Null'.obs;
  final isIll = false.obs;

  void increaseAge() {
    age.value++;
  }

  void decreaseAge() {
    age.value--;
  }

  void changeName(String newName) {
    name.value = newName;
  }

  void changeIsIll() {
    isIll.value = !isIll.value;
  }
}
