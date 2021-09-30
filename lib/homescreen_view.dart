import 'package:flutter/material.dart';
import 'detail_form_view.dart';
import 'display_list_user.dart';
import 'user_data.dart';

class HomeScreen extends StatelessWidget {
  final UserData user = emptyUser[0];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
              children:<Widget> [
                Expanded(
                    child: DisplayListUser()
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FloatingActionButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                        return FormDetail(user: user);
                      }));
                    },
                    child: Icon(Icons.add, color: Colors.white, size: 20,
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
