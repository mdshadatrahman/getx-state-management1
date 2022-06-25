import 'package:get/get.dart';

class Cat {
  final age = 0.obs;
  final name = 'Null'.obs;
  final isIll = false.obs;

  void increaseAge() {
    age.value++;
  }

  void decreaseAge() {
    if(age.value <= 0){
      age.value = 0;
    } else {
      age.value--;
    }

  }

  void changeName(String newName) {
    name.value = newName;
  }

  void changeIsIll() {
    isIll.value = !isIll.value;
  }
}
