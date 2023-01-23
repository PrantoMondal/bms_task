import 'package:bms_task/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/constants.dart';
class HomePage extends StatefulWidget {
  static String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: Styles.primaryColor,
      ),
      backgroundColor: Styles.bgColor,
      body: LoginUI(),
    );
  }

  LoginUI() {
    return Consumer<LoginController>(builder: (context, model, child) {
      // if we are already logged in
      if (model.userDetail != null) {
        return Center(
          child: moviePageUI(model),
        );
      } else {
        return loginController(context);
      }
    });
  }

  moviePageUI(LoginController model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
          Image.network(model.userDetail!.image ?? "").image,
          radius: 50,
        ),

        Text(model.userDetail!.name ?? ""),
        Text(model.userDetail!.email ?? ""),
        ActionChip(
            avatar: Icon(Icons.logout),
            label: Text("Logout"),
            onPressed: () {
              Provider.of<LoginController>(context, listen: false).logout();
            })
      ],
    );
  }

  loginController(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              child: Image.asset(
                "assets/images/google.png",
                width: 240,
              ),
              onTap: () {
                Provider.of<LoginController>(context, listen: false)
                    .googleLogIn();
              }),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
              child: Image.asset(
                "assets/images/facebook.png",
                width: 240,
              ),
              onTap: () {
              //   Provider.of<LoginController>(context, listen: false)
              //       .facebooklogin();
               }
              ),
        ],
      ),
    );
  }
}