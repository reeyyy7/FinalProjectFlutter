import 'package:finallproject/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:finallproject/models/login_request.dart';
import 'package:finallproject/pages/home_page.dart';
import 'package:finallproject/services/auth_service.dart';
import 'package:finallproject/storages/auth_storage.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    getCredentialFromLocal();
  }

  getCredentialFromLocal() async {
    final String token = await AuthStorage().getCredentialFromLocal();
    if (token != null) {
      print(token);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
          (route) => false);
    } else {
      print('Null Token');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                "Kembali",
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
                  controller: emailController,
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
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: Text("Forgot Password?"),
                      onPressed: () {},
                    )
                  ],
                ),
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
                    AuthService()
                        .signinWithEmailAndPassword(
                            request: LoginRequestModel(
                                email: emailController.text,
                                password: passwordController.text))
                        .then((value) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                          (route) => true);
                    });
                  },
                  child: const Text(
                    "Login",
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
                    Text("Don't have account?"),
                    TextButton(
                      child: Text("Sign Up"),
                      onPressed: () {
                        Get.toNamed(RouteName.register_page);
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
