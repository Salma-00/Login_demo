import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled3/signup_screen.dart';

import 'components.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Hero(
                    tag: 'welcome',
                    child: Image(
                      image: AssetImage('assets/images/welcome1.png'),
                      height: 200.0,
                      width: 300.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Log in to your existent account',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (value)
                    {
                      if(value!.isEmpty){
                        return'email must not be empty';
                      }
                      return null;
                    },
                    label: 'Email',
                    prefix: Icons.person,
                    prefixIconColor:Colors.deepPurple,
                    radius: 50.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (value)
                      {
                        if(value!.isEmpty){
                          return'password is too short';
                        }
                        return null;
                      },
                      label: 'password',
                      prefix: Icons.lock,
                      prefixIconColor: Colors.deepPurple,
                      suffixIconColor: Colors.deepPurple,
                      radius: 50.0,
                      suffix: isPassword ? Icons.visibility: Icons.visibility_off,
                      isPassword: isPassword,
                      suffixPressed: ()
                      {
                        setState(() {
                          isPassword = ! isPassword;
                        });
                      }
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),

                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 6.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Forgot Password?',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 60.0,
                    width: 200.0,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text(
                        'LOG IN',
                      ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.deepPurple,
                       elevation: 5.0,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(50.0),
                       ),
                     ),

                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    'Or connect using',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                      ElevatedButton.icon(
                          onPressed: (){},
                          icon: const Icon(FontAwesomeIcons.facebookF) ,
                          label: const Text(
                            'Facebook'
                          ),
                        style:ElevatedButton.styleFrom(
                          primary: Colors.blue.shade800,
                          minimumSize: const Size(150, 45.0),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: (){},
                        icon: const Icon(FontAwesomeIcons.google,) ,
                        label: const Text(
                            'Google'
                        ),
                        style:ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(150, 45),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      const Text(
                          'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 1),
                                  pageBuilder: (_, __, ___) =>  SignupScreen()),
                          );
                        },
                        child: const Text(
                          'Sing Up',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
