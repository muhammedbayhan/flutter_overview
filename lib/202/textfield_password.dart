import 'package:flutter/material.dart';

class TextFieldPasswordView extends StatefulWidget {
  TextFieldPasswordView({super.key,required this.hintText});
 final String hintText;
  @override
  State<TextFieldPasswordView> createState() => _TextFieldPasswordViewState();
}

class _TextFieldPasswordViewState extends State<TextFieldPasswordView> {
  bool showPassword = false;

  void changeVisibility() {
    setState(() {
          showPassword = !showPassword;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: showPassword,
           //obscuringCharacter: "#",
            decoration: InputDecoration(
                suffixIcon: showPassword == false
                    ? IconButton(onPressed: changeVisibility, icon: Icon(Icons.visibility_off))
                    :IconButton(onPressed: changeVisibility, icon: Icon(Icons.visibility)),
                border: OutlineInputBorder(),
                hintText: widget.hintText),
          ),
        ),
      ),
    );
  }
}
