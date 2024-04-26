import 'package:finallproject/pages/login_page.dart';
import 'package:finallproject/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Selamat Datang",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              const Text(
                "Silahkan Mendaftar",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/img/logo.png",
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff2378BD)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Username"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff2378BD)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Email"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff2378BD)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff2378BD),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(RouteName.login_page);
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    TextButton(
                      child: Text("Sign In"),
                      onPressed: () {
                        Get.toNamed(RouteName.login_page);
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
