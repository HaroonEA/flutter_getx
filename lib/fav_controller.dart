import 'package:get/get.dart';

class FavController extends GetxController {
  RxList<String> fruitList = ['Orange', ' Apple', 'Mango', 'Banana'].obs;
  RxList tempFruitList = [].obs;

  addToFav(String value) {
    tempFruitList.add(value);
  }

  removeFromFav(String value) {
    tempFruitList.remove(value);
  }
}
