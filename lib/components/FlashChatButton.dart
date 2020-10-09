import 'package:flutter/material.dart';

class FlashChatButton extends StatelessWidget {
  final String textButton;
  final Function callback;
  final Color colorButton;

  const FlashChatButton(
      {Key key,
      @required this.textButton,
      @required this.callback,
      @required this.colorButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: this.colorButton,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: this.callback,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            this.textButton,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
