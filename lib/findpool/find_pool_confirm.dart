import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlng;


class Confirm extends StatefulWidget {
  const Confirm({Key? key}) : super(key: key);

  @override
  State<Confirm> createState() => _BookingState();
}

class _BookingState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAE5A),
        title: const Text("Find Pool"),
      ),
      body: Container(
        child:FlutterMap(
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
      ),
    );
  }
}

