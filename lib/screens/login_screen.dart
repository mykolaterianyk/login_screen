import 'package:ionicons/ionicons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/screens/register_screen.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  late bool _passwordVisible;

  void initState() {
    super.initState();
    _passwordVisible = false;
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
                            const Text("WELCOME",
                              style: TextStyle(
                                  fontSize: 40
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
                                prefixIcon: Icon(Ionicons.key),
                                border: OutlineInputBorder(
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

                            const Padding(padding: EdgeInsets.only(left: 20),),
                            Text("Not a member?"),
                            TextButton(onPressed: () {
                              //code
                            },
                              child: GestureDetector(
                                onTap:(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>registerscreen()));
                                },
                                child: Text("Register",
                                  style: const TextStyle(
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
                              child: Text("SING IN",
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
