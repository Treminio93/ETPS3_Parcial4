import 'package:etps3_parcial4_2548012011_2507272016/app/user_interface/paginas/home/principalcontroller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PrincipalPage extends StatefulWidget {
  // PrincipalPage({Key? key}) : super(key: key);

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final _controler = PrincipalController();

  final _initialCameraPosition =
      const CameraPosition(target: LatLng(13.6979572, -89.1733809), zoom: 12);

  @override
  Widget build(BuildContext context) {
    final Set<Marker> listMarkers = {};

    listMarkers.add(const Marker(
      markerId: MarkerId("1"),
      position: LatLng(13.707555556517736, -89.14164035699251),
      infoWindow:
          InfoWindow(title: "MovilSV Soyapango", snippet: "Sucursal Soyapango"),
      icon: BitmapDescriptor.defaultMarker,
    ));

    listMarkers.add(const Marker(
        markerId: MarkerId("2"),
        position: LatLng(13.699785292573196, -89.1983210480986),
        infoWindow: InfoWindow(
            title: "MovilSV Calle Arce", snippet: "Sucursal Calle Arce")));

    listMarkers.add(const Marker(
        markerId: MarkerId("3"),
        position: LatLng(13.700722024734848, -89.22420859664523),
        infoWindow: InfoWindow(
            title: "MovilSV Salvador Del Mundo",
            snippet: "Sucursal principal Salvador del mundo"),
        icon: BitmapDescriptor.defaultMarker));

    listMarkers.add(const Marker(
        markerId: MarkerId("4"),
        position: LatLng(13.6860819, -89.1894334),
        infoWindow: InfoWindow(
            title: "MovilSV San Jacinto", snippet: "Sucursal San Jacinto")));

    return Scaffold(
        appBar: AppBar(
          title: const Text("MovilSV"),
        ),
        body: Center(
            child: GoogleMap(
          onMapCreated: _controler.onMapCreated,
          initialCameraPosition: _initialCameraPosition,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: true,
          markers: listMarkers,
        )));
  }
}
