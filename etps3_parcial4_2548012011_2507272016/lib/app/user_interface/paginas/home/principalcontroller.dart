import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utils/mapa_style.dart';

class PrincipalController extends ChangeNotifier {
  Map<MarkerId, Marker> _markers = {};

  final initialCameraPosition =
      const CameraPosition(target: LatLng(13.6979572, -89.1733809), zoom: 12);

  Set<Marker> get markers => _markers.values.toSet();

  PrincipalController();
  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(MapStyle);
  }

  void onTap(LatLng position) {
    final markerId = MarkerId(_markers.length.toString());
    final maker = Marker(markerId: markerId, position: position);
    _markers[markerId] = maker;
    notifyListeners();
  }
}
