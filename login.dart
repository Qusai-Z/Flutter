import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:rs/shared/components/components.dart';

class login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final GlobalKey<FormState> _Key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _Key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email must not be empty !';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Wrong password';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  MaterialButton(
                    onPressed: () {
                      if (_Key.currentState!.validate()) {
                        _Key.currentState!.save();
                        print("saved");
                      }
                    },
                    child: defaultButton(
                        text: 'LOGIN', width: double.infinity, function: () {}),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  SizedBox(
                    height: 10.0,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Don\'t have an account?',
                  //     ),
                  //     TextButton(
                  //       onPressed: () {},
                  //       child: Text(
                  //         'Register Now',
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
