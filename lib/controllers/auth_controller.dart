import 'package:bms/controllers/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class AuthController extends GetxController {
  var isLoggedIn = false.obs ;
  @override
  void onInit() {
    // TODO: implement onInit
    redirect();
    super.onInit();
  }
 Future <void> redirect() async{
    var token = await GetStorage().read('login_token');

    if(token!= null){
      isLoggedIn.value=true ;
    }



    Future.delayed(Duration(seconds: 5)).then((value){
      Get.to(
        Welcome_Screen() ,
        preventDuplicates: false,


      );
    }).catchError ((error){
      print(error.toString());
    });
 }
}