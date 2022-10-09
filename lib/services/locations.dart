import 'dart:ffi';

import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class Location {
  late double latitude;
  late double longitude;

  Future getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
    latitude = position.latitude;
    longitude = position.longitude;
  }
}
