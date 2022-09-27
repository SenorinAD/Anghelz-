
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subdisakayforreal/loginscreen/login_page.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
        backgroundColor: Color(0xff4FAE5A),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 20, right: 16),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Icon(Icons.person,
                  color: Colors.green,
                ),
                SizedBox(width: 8),
                Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Profile",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey),
              ],
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                showDialog(
                    context: context, builder: (BuildContext context){
                      return AlertDialog(
                        title: Text("Share History"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          Text("Option1"),
                          Text("Option2"),
                          Text("Option3")
                        ],
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          }, child: Text("Close")),
                        ],
                      );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Share History",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                  ),
                  Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                showDialog(
                    context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Registered Car"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Toyota"),
                        Text("Fortuner"),
                        Text("Cruiser")
                      ],
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("Close")),
                    ],
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Registered Car",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                  Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(Icons.volume_up,
                  color: Colors.green,
                ),
                SizedBox(width: 8),
                Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notify me if Rides Available", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(value: true, onChanged: (bool val){},
                ),
              ),
              ],
            ),
            SizedBox(height: 60,),
            Center(
              child: OutlinedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginScreen()),
              );}, child: Text("SIGN OUT",
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 2.2,
                color: Colors.black
              ),),),
            )
          ],
        ),
      ),
    );
  }
}
