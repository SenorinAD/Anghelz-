
import 'package:flutter/material.dart';
import 'package:subdisakayforreal/findpool/find_pool_confirm.dart';

class MyLocation extends StatelessWidget {
  const MyLocation ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4FAE5A),
          title: const Text("Find Pool"),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.radio_button_checked_outlined,
                        color: Colors.blue,),
                      border: OutlineInputBorder(),
                      labelText: 'Pickup',
                      hintText: 'Search Pickup Location',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.radio_button_checked_outlined,
                        color: Colors.red,),
                      border: OutlineInputBorder(),
                      labelText: 'Drop-off',
                      hintText: 'Search Drop-off Location',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, //background color of button
                        side: BorderSide(width:3, color:Colors.black), //border width and color
                        elevation: 7, //elevation of button
                        shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Confirm()),
                        );
                      },
                      child: Text('Find Pool'),
                    )
                ),
              ],
            )
        )
    );
  }
}