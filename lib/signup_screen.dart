import 'package:flutter/material.dart';
import 'package:untitled3/welcome_screen.dart';

import 'components.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var emailController = TextEditingController();
  var accountController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.deepPurple,
            size: 40.0,
          ),
        ),
      ),
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
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/welcome1.png'),
                      radius: 50,
                      ),
                    ),
                  Text(
                    'Let\'s Get Started!',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Create an account to get all features',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: accountController,
                    type: TextInputType.text,
                    validate: (value)
                    {

                    },
                    label: 'Account Name',
                    prefix: Icons.person,
                    prefixIconColor:Colors.deepPurple,
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 20.0,
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
                    prefix: Icons.email,
                    prefixIconColor:Colors.deepPurple,
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: phoneController,
                    type: TextInputType.number,
                    validate: (value)
                    {
                    },
                    label: 'Phone',
                    prefix: Icons.phone_android,
                    prefixIconColor:Colors.deepPurple,
                    radius: 50.0,
                  ),
                  SizedBox(
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

                  SizedBox(
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
                      label: 'Confirm password',
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
                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    height: 60.0,
                    width: 200.0,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        'CREATE',
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
                    height: 80.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      const Text(
                        'Already have an account?',
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 1),
                                pageBuilder: (_, __, ___) => WelcomeScreen())
                          );
                        },
                        child: const Text(
                          'Login here',
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
      backgroundColor: Colors.white,
    );
  }
}
