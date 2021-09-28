import 'package:flutter/material.dart';

import 'detail_form_view.dart';
import 'user_data.dart';

class DisplayListUser extends StatelessWidget {
  const DisplayListUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemBuilder: (context, index){
          final UserData user = userList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FormDetail(user: user);
              }));
            },
            child: Card(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            Image.network(user.photo, width: 150, height: 200,)
                          ]
                        )
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            Text(user.name, style: TextStyle(fontSize: 28),),
                            Text("Role: "+user.role, style: TextStyle(fontSize: 22),),
                            Text("Age: "+user.age, style: TextStyle(fontSize: 22),),
                            Text("Address: "+user.address, style: TextStyle(fontSize: 22),),
                          ]
                        ),
                      )
                    ],
                ),
            ),
          );
        },
        itemCount: userList.length,
    );
  }
}
