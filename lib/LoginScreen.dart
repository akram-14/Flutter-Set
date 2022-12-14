import 'package:flutter/material.dart';
import 'package:flutter_set/HomeScreen.dart';
import 'package:flutter_set/RegistrationScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
final TextEditingController emailController =  TextEditingController();
final TextEditingController passwordController =  TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value ){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixIcon: Icon(Icons.mail),
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        label: Text("Email Address"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),


    );
    final passwordField = TextFormField(
      controller: passwordController,
      obscureText: true,
      onSaved: (value ){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixIcon: Icon(Icons.password),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          label: Text("password"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),


    );
    final loginButten = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.red,
      child: MaterialButton(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      onPressed: ( ){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
    },

        child: Text(
            "Login",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 180,
                    child: Image.asset("assets/coum.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45,),
                  emailField,
                  SizedBox(height: 30,),
                  passwordField,
                  SizedBox(height: 45,),
                  loginButten,
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text("Don't have an accunte?"),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationScreen()));
                        },
                        child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
