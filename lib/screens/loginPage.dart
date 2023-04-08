import 'package:flutter/material.dart';
import 'package:p_as_projects/screens/homePage.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const routename = 'LoginPage';

  Future<String> _loginUser(LoginData data) async {
    if(data.name == 'bug@expert.com' && data.password == '123456'){
      return '';
    } else {
      return 'Wrong credentials';
    }
  } // _loginUser

  Future<String> _signUpUser(SignupData data) async {
    return 'To be implemented';
  } // _signUpUser

  Future<String> _recoverPassword(String email) async {
    return 'Recover password functionality needs to be implemented';
  } // _recoverPassword

  @override
  Widget build(BuildContext context) {
    
    return FlutterLogin(
      title: 'login_flow',
       theme: LoginTheme(
        primaryColor: Colors.greenAccent,
        errorColor: Colors.red,
        titleStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'Quicksand',
          letterSpacing: 4,
        ),
        /*
        bodyStyle: TextStyle(
          fontStyle: FontStyle.normal,
          decoration: TextDecoration.underline,
        ),
        textFieldStyle: TextStyle(
          color: Colors.black,
        ),
        */
        
        buttonStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 5,
          //margin: EdgeInsets.only(top: 15),
          //shape: ContinuousRectangleBorder(
              //borderRadius: BorderRadius.circular(20.0)),
        ),
        
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          contentPadding: EdgeInsets.zero,
          errorStyle: TextStyle(
            color: Colors.red,
          ),
          labelStyle: TextStyle(fontSize: 12),
        ),
        
        buttonTheme: LoginButtonTheme(
          splashColor: Colors.purple,
          backgroundColor: Colors.pinkAccent,
          elevation: 9.0,
          highlightElevation: 6.0,
          
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          // shape: CircleBorder(side: BorderSide(color: Colors.green)),
          // shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(55.0)),
        ),
        
      ),

      onLogin: _loginUser,
      onSignup: _signUpUser,
      onRecoverPassword: _recoverPassword,
      onSubmitAnimationCompleted: () async{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  } // build
} // LoginScreen