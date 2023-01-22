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
      if(model.userDetail != null){
        return Center(
          child: moviePageUI(model),
        );

      }
      else{
        return loginController(context);
      }
    },);
  }

  moviePageUI(moviePageController model) {}

  
}
