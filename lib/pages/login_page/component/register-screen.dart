import 'package:flutter/material.dart';
import '../../boarding_page/component/my_button.dart';
import '../../boarding_page/component/my_textfield.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // Ini adalah AppBar dengan tombol "kembali"
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Sign Up"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              Image.asset(
                'assets/page-1/images/img.png',
                width: 45,
                height: 45,
              ),

              const SizedBox(height: 30),

              Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),

              const SizedBox(height: 25),

              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'E-Mail',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Mobile',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
