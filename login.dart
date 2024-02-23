import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/signUp.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool pass = true;

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffffae392),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.only(
            left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
        child: Column(children: [
          const Text(
            'Login Now',
            style: TextStyle(
              fontFamily: 'IbarraRealNova-Regular',
              fontSize: 42,
              color: Color(0xfff1A5D1A),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'IbarraRealNova-Regular',
                  fontSize: 14,
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(
                    0xfff1A5D1A,
                  ),
                ))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passwordController,
            obscureText: pass,
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'IbarraRealNova-Regular',
                  fontSize: 14,
                ),
                suffixIcon: IconButton(
                  icon: pass
                      ? const Icon(Icons.visibility_off_sharp)
                      : const Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      pass = !pass;
                    });
                  },
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(
                    0xfff1A5D1A,
                  ),
                ))),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(100, 8, 100, 8),
                backgroundColor: const Color(0xfff1A5D1A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {},
              child: const FittedBox(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xffffae392),
                    fontFamily: 'IbarraRealNova-Regular',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Or Login With',
            style: TextStyle(
              fontFamily: 'IbarraRealNova-Regular',
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(45, 10, 45, 10),
                  backgroundColor: const Color(0xfffFDF4D6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'asset/fb.png',
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Login With Facebook',
                      style: TextStyle(
                        fontFamily: 'IbarraRealNova-Regular',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfff7D7763),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                  backgroundColor: const Color(0xfffFDF4D6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'asset/google.png',
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Login With Google',
                      style: TextStyle(
                        fontFamily: 'IbarraRealNova-Regular',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfff7D7763),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Don\'t Have an Account?',
            style: TextStyle(
              fontFamily: 'IbarraRealNova-Regular',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(100, 8, 100, 8),
                backgroundColor: const Color(0xfff1A5D1A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const register()),
                );
              },
              child: const FittedBox(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xffffae392),
                    fontFamily: 'IbarraRealNova-Regular',
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
        ]),
      )),
    );
  }
}
