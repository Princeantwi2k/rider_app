import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 215, 237, 247),
        body: SingleChildScrollView(
          child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              //Hello again
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 15),
                    child: Image.asset(
                      'assets/left-arrow-1.png',
                      width: 20,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      bottom: 10.0,
                    ),
                    child: Image.asset(
                      'assets/piclogo.png',
                      width: 220,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0),
                child: Row(
                  children: const [
                    Icon(Icons.business_center_rounded),
                    Text("Ready for Delivery?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200.0),
                child: Text("Sign in to continue",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 17)),
              ),
              const SizedBox(
                height: 30,
              ),
              //email testfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 7, bottom: 7),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Enter rider ID",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //password testfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 7, bottom: 7),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter code",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 200.0,
                ),
                child: Text(
                  "Forgot password?",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //sign in button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (BuildContext context) => const OptPage()));
                  // },
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 148, 203, 219),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))),
                ),
              ),
              const SizedBox(
                height: 60,
              ),

              //not a member? register now

              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    const Text("Dont have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    GestureDetector(
                      child: const Text("Register now!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 198, 40, 40))),
                      // onTap: () {
                      //   Navigator.of(context).push(MaterialPageRoute(
                      //       builder: (BuildContext context) =>
                      //           const RegisterPage()));
                      // },
                    ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
