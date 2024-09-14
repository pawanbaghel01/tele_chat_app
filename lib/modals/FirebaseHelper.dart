
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tele_chat_app/modals/UserModal.dart';

class FirebaseHelper {

  static Future<UserModel?> getUserModelById(String uid) async{
    UserModel? userMode;

   DocumentSnapshot docSnap =await FirebaseFirestore.instance.collection("users").doc(uid).get();
   
   if(docSnap.data() != null){
     userMode= UserModel.fromMap(docSnap.data() as Map<String,dynamic>);
   }

   return userMode;
    }
}