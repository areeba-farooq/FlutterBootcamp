import 'package:flutter/material.dart';
import 'package:task_one/constants.dart';
import 'package:task_one/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool hidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            Column(
              children: [
                const SizedBox(height: 80,),
                Image.asset('assets/diamond.png', width: 50,height: 50,),
                const SizedBox(height: 10,),
                const Text('SHRINE', style: kAppNameStyle),
                const SizedBox(height: 80,),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      labelText:'UserName',
                        prefixIcon: const Icon(Icons.person, color: Color(0xFF442B2D),),
                        labelStyle: const TextStyle(
                        color: Color(0xFF442B2D)
                      ),
                      enabledBorder: kBorderStyle,
                        focusedBorder: kBorderStyle
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    onTap: (){
                      setState(() {
                        hidden = !hidden;
                      });
                    },
                    controller: _passwordController,
                    obscureText: hidden,
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: const Icon(Icons.lock, color: Color(0xFF442B2D), size: 23,),
                        suffixIcon:  Icon( hidden? Icons.visibility_off : Icons.visibility, color: const Color(0xFF442B2D), size: 23,),

                        labelText: 'Password',
                        labelStyle: const TextStyle(
                            color: Color(0xFF442B2D)
                        ),
                        enabledBorder: kBorderStyle,
                        focusedBorder: kBorderStyle
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                ButtonBar(
                  children: [
                    TextButton(
                      child: const Text('CANCEL'),
                      onPressed: () {
                        //clear the text fields
                        _usernameController.clear();
                        _passwordController.clear();
                      },
                    ),

                    ElevatedButton(
                      child: const Text('NEXT'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary:  const Color(0xFF442B2D)
                      ),
                    ),
                  ],

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
