import 'package:flutter/material.dart';

import 'custom_text_form.dart';

class FormEmpty extends StatelessWidget {
  const FormEmpty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Center(
                      child: Image.network(
                        "https://i.ibb.co/kmVrCMX/no-image-found-360x250.png",
                        width: 150,
                        height: 200,
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomForm(
                      label:"Name :",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomForm(
                      label:"Role :",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomForm(
                      label:"Age :",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomForm(
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
