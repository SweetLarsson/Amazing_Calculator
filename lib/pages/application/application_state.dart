import 'package:get/get.dart';

/// all the files and variables of the class will be declared here in the state
class ApplicationState {
  var index = 0.obs;

  final _page = 0.obs;

  //getter variable
  int get page => _page.value;

  //setter variable
  set page(value) => _page.value = value;
}
