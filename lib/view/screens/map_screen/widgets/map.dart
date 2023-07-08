
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task2/controllers/location_controller.dart';
import 'package:machine_task2/view/screens/screen_four/screen_four.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

LocationController loc = LocationController();

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      width: 270.w,
      child: OpenStreetMapSearchAndPick(
          center: LatLong(11, 77),
          buttonColor: Colors.blue,
          buttonText: 'Set Location',
          onPicked: (pickedData) {
            loc.setLocation(pickedData.address);
            detail.place = pickedData.address;
          }),
    );
  }
}
