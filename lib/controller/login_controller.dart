import 'package:bms_task/model/user_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController with ChangeNotifier {
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;
  UserDetail? userDetail;

  googleLogIn() async {
    this.googleSignInAccount = await _googleSignIn.signIn();

    this.userDetail = new UserDetail(
      name: this.googleSignInAccount!.displayName,
      email: this.googleSignInAccount!.email,
      image: this.googleSignInAccount!.photoUrl,
    );

    notifyListeners();
  }

  logout() async {
    this.googleSignInAccount = await _googleSignIn.signOut();
    notifyListeners();
  }
}
