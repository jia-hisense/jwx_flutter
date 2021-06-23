import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jwx_flutter/bloc/models/user.dart';
import 'package:jwx_flutter/bloc/view_models/auth_provider.dart';
import 'package:jwx_flutter/bloc/view_models/user_provider.dart';
import 'package:jwx_flutter/generated/l10n.dart';
import 'package:jwx_flutter/ui/widgets/buttons.dart';
import 'package:jwx_flutter/utils/colors.dart';
import 'package:jwx_flutter/utils/decorations.dart';
import 'package:jwx_flutter/utils/validator.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();

  String _username, _password;

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);

    final usernameField = TextFormField(
      autofocus: false,
      validator: Validator.validateEmail,
      onSaved: (value) => _username = value,
      decoration: InputDecoration(
        hintText: S.current.usernameHintText,
        fillColor: Colors.black87,
        filled: true,
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      validator: (value) => value.isEmpty ? S.current.passwordHintText : null,
      onSaved: (value) => _password = value,
      decoration: InputDecoration(
        hintText: S.current.usernameHintText,
        fillColor: Colors.black87,
        filled: true,
      ),
    );

    var loading = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Text(" Authenticating ... Please wait")
      ],
    );

    final protocolLabel = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "登录即表示同意",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        TextButton(
          child: Text(
            "《用户服务协议》",
            style: TextStyle(
              color: jwxPrimaryColor,
              fontSize: 12,
            ),
          ),
          onPressed: () {
//            Navigator.pushReplacementNamed(context, '/reset-password');
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(0),),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
        TextButton(
          child: Text(
            "《隐私协议》",
            style: TextStyle(
              color: jwxPrimaryColor,
              fontSize: 12,
            ),
          ),
          onPressed: () {
            // Navigator.pushReplacementNamed(context, '/register');
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(0)),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
      ],
    );

    var doLogin = () {
      final form = formKey.currentState;

      if (form.validate()) {
        form.save();

        final Future<Map<String, dynamic>> successfulMessage =
            auth.login(_username, _password);

        successfulMessage.then((response) {
          if (response['status']) {
            User user = response['user'];
            Provider.of<UserProvider>(context, listen: false).setUser(user);
            Navigator.pushReplacementNamed(context, '/dashboard');
          } else {
            Flushbar(
              title: "Failed Login",
              message: response['message']['message'].toString(),
              duration: Duration(seconds: 3),
            ).show(context);
          }
        });
      } else {
        print("form is invalid");
      }
    };

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background.png"),
                    fit: BoxFit.cover),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Container(
                  width: 350,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 120.0),
                        Center(
                          child: Text(
                            "手机号快捷登录/注册",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        usernameField,
                        SizedBox(height: 25.0),
                        passwordField,
                        SizedBox(
                          height: 5.0,
                        ),
                        protocolLabel,
                        SizedBox(height: 20.0),
                        auth.loggedInStatus == AuthStatus.Authenticating
                            ? loading
                            : longButtons(S.current.login, doLogin),
                        SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
