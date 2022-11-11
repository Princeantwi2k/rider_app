import 'package:flutter/material.dart';
import 'package:rider_app/backgroud.dart';
import 'package:rider_app/login_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Background(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Hello again
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(
                          'assets/piclogo.png',
                          width: 170,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    const Text("Rider App",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white)),
                    const SizedBox(
                      height: 200,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const LoginPage()));
                        },
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //not a member? register now

                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          const Text("Dont have an account? ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          GestureDetector(
                            child: const Text("Register now!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
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
          ))
    ]);
  }
}
