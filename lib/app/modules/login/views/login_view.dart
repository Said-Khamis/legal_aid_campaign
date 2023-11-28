import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/tanzania.jpeg"),
                fit: BoxFit.cover)),
        child: Stack(
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 child: null,
                  decoration:  BoxDecoration(
                     color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.9)
                  ),
               ),
               Align(
                alignment: Alignment.center,
                 child: _formLogin(context),
               ),
             ],
          ),
      ),
    );
  }

  _formLogin(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width > 400
              ? MediaQuery.of(context).size.width / 3
              : MediaQuery.of(context).size.width,
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0)),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width > 400
              ? MediaQuery.of(context).size.width / 3
              : MediaQuery.of(context).size.width,
          child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0))),
        ),
        const SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () {
            Get.snackbar("hi", "Login");
          },
          child: Container(
            width: MediaQuery.of(context).size.width > 400
                ? MediaQuery.of(context).size.width / 3
                : MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
            child: const Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
