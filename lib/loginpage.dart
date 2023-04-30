import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfield = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  bool passToggle = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome Back',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formfield,
          child: Column(
            children: [
              Container(
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(7)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "CONTINUE WITH FACEBOOK",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(7)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    CircleAvatar(
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png"),
                      radius: 13,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "CONTINUE WITH GOOGLE",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 128, 125, 125),
                      height: 2,
                      width: double.infinity,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'or',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 128, 125, 125),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 128, 125, 125),
                      height: 2,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailcontroller,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Email";
                  }
                  final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value);
                  if (!emailValid) {
                    return "Enter valid Email";
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter the Password";
                  }
                  final bool passValid =
                  RegExp(r'^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8}$')
                      .hasMatch(value);
                  if (!passValid) {
                    return "Password must have 8 characters with atleast 1 Alphabet and 1 number and 1 special character";
                  } else if (passcontroller.text.length < 8) {
                    return "Password length should be more than 8 characters";
                  }
                },
                keyboardType: TextInputType.emailAddress,
                controller: passcontroller,
                obscureText: passToggle,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.amber),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(
                        passToggle ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'forgot password',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  if (_formfield.currentState!.validate()) {
                    print('sucesss');
                    emailcontroller.clear();
                    passcontroller.clear();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff123456),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Need an account?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 128, 125, 125),
                      )),
                  Text('Sign up', style: TextStyle(color: Colors.blue))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
