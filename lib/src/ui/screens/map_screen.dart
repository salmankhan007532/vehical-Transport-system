import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vehicle_transport_system/src/ui/screens/marker_detail_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(34.025917, 71.560135); 

  // Set of Markers
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId('sf'),
          position: _center,
          infoWindow: const InfoWindow(
            title: 'Salman',
            snippet: 'vehical : Texi',
          ),
          icon: BitmapDescriptor.defaultMarker,
          onTap: (){
              Get.to(const MarkerDetailScreen());
          }
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
        markers: _markers,
      ),
    );
  }
}
