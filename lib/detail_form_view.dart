import 'package:flutter/material.dart';
import 'custom_text_form.dart';
import 'user_data.dart';

class FormDetail extends StatelessWidget {
  final UserData user;

  const FormDetail({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Center(
                  child: Image.network(user.photo, width: 150, height: 200,)
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomForm(
                  value: user.name,
                  label:"Name :",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomForm(
                  value: user.role,
                  label:"Role :",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomForm(
                  value: user.age,
                  label:"Age :",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomForm(
                  value: user.address,
                  label:"Address :",
                ),
              ),
              Center(
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                      },
                    child: Text("Kembali"),
                ),
              ),
            ]
          )
        ),
      ),
    );
  }
}
