import 'package:get/get.dart';

final Controller controller = Get.put(Controller());

class Controller extends GetxController{

  RxList drinks = [].obs;
  RxList alcoholicDrinks = [].obs;
  RxList nonalcoholicDrinks = [].obs;
  RxList random = [].obs;

  List<Map<String,dynamic>>list = [];

  List letters = [
    {"alphabet":"A", "letter":"a"},
    {"alphabet":"B", "letter":"b"},
    {"alphabet":"C", "letter":"c"},
    {"alphabet":"D", "letter":"d"},
    {"alphabet":"E", "letter":"e"},
    {"alphabet":"F", "letter":"f"},
    {"alphabet":"G", "letter":"g"},
    {"alphabet":"H", "letter":"h"},
    {"alphabet":"I", "letter":"i"},
    {"alphabet":"J", "letter":"j"},
    {"alphabet":"K", "letter":"k"},
    {"alphabet":"L", "letter":"l"},
    {"alphabet":"M", "letter":"m"},
    {"alphabet":"N", "letter":"n"},
    {"alphabet":"O", "letter":"o"},
    {"alphabet":"P", "letter":"p"},
    {"alphabet":"Q", "letter":"q"},
    {"alphabet":"R", "letter":"r"},
    {"alphabet":"S", "letter":"s"},
    {"alphabet":"T", "letter":"t"},
    {"alphabet":"U", "letter":"u"},
    {"alphabet":"V", "letter":"v"},
    {"alphabet":"W", "letter":"w"},
    {"alphabet":"X", "letter":"x"},
    {"alphabet":"Y", "letter":"y"},
    {"alphabet":"Z", "letter":"z"},
  ];

  RxString first = "a".obs;

}
