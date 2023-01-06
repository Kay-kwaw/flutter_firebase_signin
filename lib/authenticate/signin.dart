import 'package:anonsignin/authenticate/auth.dart';
import 'package:anonsignin/authenticate/register.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  //Text fields states

  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.white, Color.fromARGB(255, 255, 255, 255)])),
      child: Scaffold(
        // By defaut, Scaffold background is white
        // Set its value to transparent
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(196, 225, 56, 9),
                    blurRadius: 1,
                    offset: Offset(2, 6), // Shadow position
                  ),
                ]),
            child: Stack(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 90, horizontal: 0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shadowColor: Color.fromARGB(196, 225, 56, 9),
                          side: const BorderSide(
                              color: Color.fromARGB(196, 225, 56, 9)),
                          foregroundColor: Color.fromARGB(196, 225, 56, 9)),
                      onPressed: () {},
                      child: const Text("  Login  "),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 90, horizontal: 0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shadowColor: Color.fromARGB(196, 225, 56, 9),
                          side: const BorderSide(
                              color: Color.fromARGB(196, 225, 56, 9)),
                          foregroundColor: Color.fromARGB(196, 225, 56, 9)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: const Text(" Register"),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 30),
                            child: TextFormField(
                              //A function that takes in the value
                              //Basically track what the user is typing and store them in a kind of local state variable
                              onChanged: (val) {
                                setState(() {
                                  email = val;
                                });
                              },
                              textAlign: TextAlign.left,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(196, 247, 13, 13),
                                      width: 1.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color.fromARGB(196, 225, 56, 9),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(196, 225, 56, 9),
                                      width: 1.0),
                                ),
                                hintText: 'kwawkumi@gmail.com',
                                labelText: "Email",
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.00, horizontal: 30.00),
                          child: TextFormField(
                            onChanged: (val) {
                              setState(() {
                                password = val;
                              });
                            },
                            obscureText: true,
                            textAlign: TextAlign.left,
                            autofocus: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.5),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(196, 225, 56, 9),
                                    width: 1.0),
                              ),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Color.fromARGB(196, 225, 56, 9),
                              ),
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: Color.fromARGB(196, 225, 56, 9),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(196, 225, 56, 9),
                                    width: 1.0),
                              ),
                              hintText: 'Password',
                              labelText: "Password",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.00, horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text("Password Recovery"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                shadowColor:
                                    const Color.fromARGB(196, 255, 192, 153),
                                side: const BorderSide(
                                    color: Color.fromARGB(196, 255, 192, 153)),
                                foregroundColor:
                                    const Color.fromARGB(196, 255, 192, 153)),
                            onPressed: () async {
                              print(email);
                              print(password);
                            },
                            child: const Text(
                              "      Login     ",
                            ),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}