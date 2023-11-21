
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:login_screen/screens/login_screen.dart';

class registerscreen extends StatefulWidget {
  const registerscreen({super.key});

  @override
  State<registerscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<registerscreen> {
  late bool _passwordVisible;
  late bool _passwordVisibleConfirm;
  void initState() {
    super.initState();
    _passwordVisible = false;
    _passwordVisibleConfirm = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 570,
                        width: 300,
                        child: Column(
                          children: [
                            const Text("Create account",
                              style: TextStyle(
                                  fontSize: 40
                              ),
                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
                            TextFormField(
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Ionicons.person),
                                border: OutlineInputBorder(
                                ),
                                labelText: "Name",

                              ),
                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
                            TextFormField(
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Ionicons.mail),
                                border: OutlineInputBorder(
                                ),
                                labelText: "Email",

                              ),
                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 15),),
                            TextFormField(
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Ionicons.key),
                                  border: const OutlineInputBorder(
                                  ),
                                  labelText: "Password",
                                  hintText: "Enter your Password",
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ?Icons.visibility
                                          :Icons.visibility_off,
                                    ),
                                    onPressed:(){
                                      setState(() {
                                        _passwordVisible =!_passwordVisible;
                                      });
                                    },
                                  )
                              ),

                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 15),),
                            TextFormField(
                              obscureText: !_passwordVisibleConfirm,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Ionicons.key),
                                  border: const OutlineInputBorder(
                                  ),
                                  labelText: "Confirm password",
                                  hintText: "Confirm your password",
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisibleConfirm
                                          ?Icons.visibility
                                          :Icons.visibility_off,
                                    ),
                                    onPressed:(){
                                      setState(() {
                                        _passwordVisibleConfirm =!_passwordVisibleConfirm;
                                      });
                                    },
                                  )
                              ),

                            ),
                            const Padding(padding: EdgeInsets.only(left: 20),),
                            const Text("Already have account?"),
                            TextButton(onPressed: () {
                              //code
                            },
                              child: GestureDetector(
                                onTap:(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                                },
                                child: const Text("Login",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 15),),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                shadowColor: Colors.white,
                              ),
                              onPressed: (){},
                              child: const Text("SING UP",
                                style:TextStyle(
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
