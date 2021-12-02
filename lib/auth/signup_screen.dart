import 'package:flutter/material.dart';
import 'package:ipanda/widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController anyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
         controller: anyController,
          data: Icons.phone,
          isObsecre: true,
          enabled: false,
        ),
        CustomTextField(
          controller: anyController,
          data: Icons.lock,
          isObsecre: false,
          enabled: false,
        ),
      ],
    );
  }
}
