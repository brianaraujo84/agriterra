import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/widgets/primary_button_widget.dart';
import 'package:agriterra/presentation/core/widgets/secondary_button_widget.dart';
import 'package:flutter/material.dart';

class RegainPasswordPage extends StatefulWidget {
  @override
  _RegainPasswordPageState createState() => _RegainPasswordPageState();
}

class _RegainPasswordPageState extends State<RegainPasswordPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_constants.recoverPassword),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: formKey,
                child: Padding(
                  padding: EdgeInsets.all(UIHelper.spaceLarge),
                  child: Column(
                    children: [
                      _createEmailInput(),
                      UIHelper.verticalSpaceLarge(),
                      PrimaryButton(
                        onPressed: () {
                          if (!formKey.currentState.validate()) {
                            return;
                          }
                          _closeKeyboard(context);
                        },
                        isValid: true,
                        textButton: _constants.recoverPassword,
                      ),
                      UIHelper.verticalSpaceLarge(),
                      SecondaryButton(
                        onPressed: () {
                          ExtendedNavigator.of(context).pop();
                        },
                        isValid: true,
                        textButton: _constants.back,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createEmailInput() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _controllerEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(labelText: AppConstants.of(context).email),
      validator: validateEmail,
    );
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-z\-0-9]+\.)+[a-z]{2,}))$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return AppConstants.of(context).invalidEmail;
    } else {
      return null;
    }
  }

  void _closeKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  void dispose() {
    _controllerEmail?.dispose();
    super.dispose();
  }
}
