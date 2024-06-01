import 'package:flutter/material.dart';
import 'package:new_application/components/mytextfild.dart';
import 'package:new_application/components/square_title.dart';
import 'package:new_application/my_buttom.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Welcome back you\'ve been missed!",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextFild(
                controller: usernameController,
                hintText: 'username',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextFild(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButtom(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                          thickness: 0.5,
                      color: Colors.grey,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Or continue with",
                      style: TextStyle(color: Colors.white),
                      
                      ),
                    ),
                    Expanded(
                        child: Divider(
                          thickness: 0.5,
                      color: Colors.grey.shade400,
                    )),
                  ],
                ),
              ),


            const SizedBox(
                height: 50,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  SquareTitle(ImagePath: 'assets/Google_Icons-09-512.webp'),
                  SizedBox(width:25,),
                  SquareTitle(ImagePath: 'assets/imageapple.png'),

                ],
              ),
              const SizedBox(
                height: 50,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),
                    
                    ),
                    const SizedBox(width: 5,),
                    Text("Register now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
