import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class loginController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final isLogged = false.obs;
  final rol = ''.obs;

  void login(email, password) {
    if (email == 'a@a.com' && password == '123456') {
      isLogged.value = true;
      rol.value = 'uc';
    } else if (email == 'b@a.com' && password == '123456') {
      isLogged.value = true;
      rol.value = 'uc';
    } else if (email == 'jose@gmail.com' && password == 'pikachu11') {
      isLogged.value = true;
      rol.value = 'us';
    } else {
      isLogged.value = false;
      rol.value = '';
    }
  }
}
