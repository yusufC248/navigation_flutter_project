import 'package:flutter/material.dart';
import 'package:navigation_flutter_project/detail_form_view.dart';
import 'display_list_user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
              children:<Widget> [
                ElevatedButton(onPressed: () {
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
