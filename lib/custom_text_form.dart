import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
 final String value;
 final String label;

  const CustomForm({Key key, this.value,  this.label}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 2,
      initialValue: this.value,
      decoration: InputDecoration(
        labelText: this.label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
