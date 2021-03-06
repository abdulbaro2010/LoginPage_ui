import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _rememberMe =false;

  Widget _buildEmailTF(){
    return  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: kLabelStyle,
                      ),

                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: kBoxDecorationStyle,
                        height: 60.0,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Your Email',
                            hintStyle: kHintTextStyle,
                          ),
                        ),
                      ),

                    ],
                  );
  }

  Widget _buildPasswordTF(){
    return       Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: kLabelStyle,
                      ),

                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: kBoxDecorationStyle,
                        height: 60.0,
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white,
                          fontFamily: 'OpenSans',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Your Password',
                            hintStyle: kHintTextStyle,
                          ),
                        ),
                      ),

                    ],
                  );
  }

  Widget _buildForgotPasswordTF(){
    return     Container(
                    alignment: Alignment.centerRight,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () => print('Forgot Your Password'),
                      padding: EdgeInsets.only(right: 0.0),
                      child: Text(
                        'Forgot Password',
                        style: kLabelStyle,
                        ),
                    ),
                  );
  }

  Widget _buildRememberMeCheckbox(){
    return  Container(
                    height: 20.0,
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                            value: _rememberMe,
                            checkColor: Colors.green,
                            activeColor: Colors.white,
                            onChanged: (value){
                              setState((){
                              _rememberMe =value;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Remember me',
                          style: kLabelStyle,
                          ),
                      ],
                    ),
                  );
  }

  Widget _buildLoginBtn(){
    return          Container(
                    padding: EdgeInsets.symmetric(
                    vertical: 25.0,
                    ),
                    width: double.infinity,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () => print('Login'),
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      child: Text('Login', style: TextStyle(
                        color: Color(0xFF527DAA),
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      )),
                    ),
                  );
  }

  Widget _buildsignInWith(){
    return  Column(
                   children: [
                     Text('- OR -',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.w400,
                     ),
                     ),
                     SizedBox(height: 20.0),
                     Text('Sign in with', style: kLabelStyle),
                   ],
                  );
  }

  Widget _buildLogo() {
    return  Padding(
                   padding: const EdgeInsets.symmetric(vertical: 30.0),
                   child: Row( 
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                     GestureDetector(
                     onTap: () => print('Login with FB'),
                     child: Container(
                       height: 60.0,
                       width: 60.0,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black26,
                             offset: Offset(0 , 2),
                             blurRadius: 6.0,
                           ),
                         ],
                         image: DecorationImage(
                           image: AssetImage('assets/logos/facebook.jpg')
                         ),
                       ),
                     ),
                   ),

                     GestureDetector(
                     onTap: () => print('Login with Google'),
                     child: Container(
                       height: 60.0,
                       width: 60.0,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black26,
                             offset: Offset(0 , 2),
                             blurRadius: 6.0,
                           ),
                         ],
                         image: DecorationImage(
                           image: AssetImage('assets/logos/google.jpg')
                         ),
                       ),
                     ),
                   ),
                        
                    
                     ],
                   ),
                 );
  }

  Widget _buildSignUp() {
    return         GestureDetector(
                        onTap: () => print('Sign Up'),
                        child: RichText(
                         text: TextSpan(
                           children: [
                             TextSpan(
                               text: 'Dont\'t have an Account?',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.w400,
                               ),
                             ),

                             TextSpan(
                               text: 'Sign Up?',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
  
                        ),
                      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
         child: GestureDetector(
            onTap:() => FocusScope.of(context).unfocus(),
           child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                       Color(0xFF73AEF5),
                       Color(0xFF61A4F1),
                       Color(0xFF478DE0),
                       Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),

              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 30.0),
                      _buildEmailTF(),

                      SizedBox(height: 30.0),
                      _buildPasswordTF(),
                      _buildForgotPasswordTF(),
                      _buildRememberMeCheckbox(),
                      _buildLoginBtn(),
                      _buildsignInWith(),
                      _buildLogo(),
                      _buildSignUp(),
                    ],
                  ),
                ),
              ),
            ],
        ),
         ),
      ),
      
    );
  }
}