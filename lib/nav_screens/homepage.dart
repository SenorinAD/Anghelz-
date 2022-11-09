import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:subdisakayforreal/findpool/find_pool_route.dart';
import 'package:latlong2/latlong.dart' as latlng;
import 'package:subdisakayforreal/offerpool/offer_pool_route.dart';


class HomeMap extends StatelessWidget {
  const HomeMap({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color(0xff4FAE5A),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          FlutterMap(
            options: MapOptions(
              center: latlng.LatLng(14.7861079261, 121.032138605),
              zoom: 18.0,
            ),
            layers: [
              TileLayerOptions(
                  urlTemplate: "https://api.mapbox.com/styles/v1/anghelz/cl7vk44tj000d14nzu4rgg7xo/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYW5naGVseiIsImEiOiJjbDd2anV6NHUwYzh4M3ZveHdudGQ0dHU1In0.m5vUkL5mWj1JxmojY55ZCg",
                  additionalOptions: {
                    'accessToken': 'pk.eyJ1IjoiYW5naGVseiIsImEiOiJjbDd2anV6NHUwYzh4M3ZveHdudGQ0dHU1In0.m5vUkL5mWj1JxmojY55ZCg',
                    'id': 'mapbox.mapbox-streets-v8'
                  }
              ),
              //Map Marker
              /* MarkerLayerOptions(
                markers: [
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: latlng.LatLng(51.5, -0.09),
                      builder: (ctx) =>
                          Container(
                            child: FlutterLogo(),
                          )
                  )
                ]
            )*/
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(10, 400, 10, 10),
                    height: 50,
                    width: 150,
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
                          MaterialPageRoute(builder: (context) => const MyRoute()),
                        );
                      },
                      child: Text('Offer Ride'),
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 400, 10, 10),
                    height: 50,
                    width: 150,
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
                          MaterialPageRoute(builder: (context) => const MyLocation()),
                        );
                      },
                      child: Text('Take a Ride'),
                    )),
              ],),
          ),
        ],
      ),
    );
  }

}


/**
 * child: BottomNavigationBar(
    onTap: onTabTapped,
    backgroundColor: HexColor('#ffffff'),
    selectedItemColor: HexColor('#35408f'),
    unselectedItemColor: HexColor('#35408f'),
    currentIndex: _currentIndex,
    selectedLabelStyle: GoogleFonts.poppins(),
    unselectedLabelStyle: GoogleFonts.lato(),
    showUnselectedLabels: false,
    items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.dashboard), label: 'Dashboard'),
    BottomNavigationBarItem(
    icon: Icon(Icons.archive), label: 'Archive'),
    BottomNavigationBarItem(
    icon: Icon(Icons.settings), label: 'Settings'),
    ],
    ),
 */