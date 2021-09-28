import 'package:flutter/material.dart';
import 'display_list_user.dart';
import 'form_empty_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
              children:<Widget> [
                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return FormEmpty();
                  }));
                },
                  child: Text("Pindah Tanpa Data"),
                ),
                Expanded(
                    child: DisplayListUser()
                ),
              ],
          ),
      ),
    );
  }
}
