import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'main_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> _controller = Completer();
  List<Marker> markers = [];

  @override
  void initState() {
    intilize();
    super.initState();
  }

  intilize() {
    Marker firstMarker = Marker(
        markerId: MarkerId("EESL"),
        position: LatLng(28.62694, 77.37522),
        infoWindow: InfoWindow(title: "Noida 63- EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
    Marker secondMarker = Marker(
        markerId: MarkerId("EESL-2"),
        position: LatLng(28.634085, 77.219547),
        infoWindow: InfoWindow(title: "Connaught Place - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
    Marker thirdMarker = Marker(
        markerId: MarkerId("EESL-3"),
        position: LatLng(28.500514, 77.410917),
        infoWindow: InfoWindow(title: "Advant Noida - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueRed)); //Image.asset("assets/images/Icon-1.png")
    Marker fourthMarker = Marker(
        markerId: MarkerId("EESL-4"),
        position: LatLng(28.573121, 77.208768),
        infoWindow: InfoWindow(title: "Dilli Hatt, New Delhi - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
    Marker fifthMarker = Marker(
        markerId: MarkerId("EESL-5"),
        position: LatLng(28.667284, 77.423950),
        infoWindow: InfoWindow(title: "Ghaziabad, UP - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker sixthMarker = Marker(
        markerId: MarkerId("EESL-6"),
        position: LatLng(19.122804, 72.844603),
        infoWindow: InfoWindow(title: "Andheri West, Mumbai - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
    Marker seventhMarker = Marker(
        markerId: MarkerId("EESL-7"),
        position: LatLng(15.511408789846252, 73.83760781503662),
        infoWindow: InfoWindow(title: "Goa Legislative Assembly - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
    Marker eighthMarker = Marker(
        markerId: MarkerId("EESL-8"),
        position: LatLng(13.085471595760938, 80.2015847265852),
        infoWindow: InfoWindow(
            title: "Thirumangalam Metro Station, Chennai - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker ninthMarker = Marker(
        markerId: MarkerId("EESL-9"),
        position: LatLng(13.155297096518817, 77.56725835338301),
        infoWindow: InfoWindow(title: "Yelahanka Bengaluru- EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
    Marker tenthMarker = Marker(
        markerId: MarkerId("EESL-10"),
        position: LatLng(30.696473920699383, 76.83508079984439),
        infoWindow: InfoWindow(
            title: "HAREDA, Akshay Urja Bhawan, Panchkula - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker eleventhMarker = Marker(
        markerId: MarkerId("EESL-11"),
        position: LatLng(21.08644590850972, 79.0639464882092),
        infoWindow:
            InfoWindow(title: "Airport Metro Station, Nagpur - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor
            .hueGreen)); //Image.asset("assets/images/Icon-1.png")
    Marker twelevethMarker = Marker(
        markerId: MarkerId("EESL-12"),
        position: LatLng(9.97715335777097, 76.27775974005559),
        infoWindow: InfoWindow(title: "Ernakulam, Kochi, Kerala - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker thirteenthMarker = Marker(
        markerId: MarkerId("EESL-13"),
        position: LatLng(18.998526240025026, 72.82683043461728),
        infoWindow: InfoWindow(
            title:
                "NKDA Parking Lot,Tata Memorial Cancer Hospital, Kolkata - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker fouteenthMarker = Marker(
        markerId: MarkerId("EESL-14"),
        position: LatLng(22.579841607304235, 88.45986445553027),
        infoWindow: InfoWindow(
            title: "NKDA Parking Lot, Axis Mall, Kolkata - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker fifteenthMarker = Marker(
        markerId: MarkerId("EESL-15"),
        position: LatLng(23.238165486112468, 77.42652488068033),
        infoWindow: InfoWindow(
            title: "NRANVP,Prayas Bhawan Nava Raipur, Bhopal - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker sixteenthMarker = Marker(
        markerId: MarkerId("EESL-16"),
        position: LatLng(28.617867745656227, 77.2130817286409),
        infoWindow: InfoWindow(
            title:
                "Near Chelmsford Club, Opp. CSIR Building, Sansad Marg Area, New Delhi - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker seventeenthMarker = Marker(
        markerId: MarkerId("EESL-17"),
        position: LatLng(13.087613044433393, 80.28497838240845),
        infoWindow:
            InfoWindow(title: "High Court Metro Station, Chennai - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker eighteenthMarker = Marker(
        markerId: MarkerId("EESL-18"),
        position: LatLng(22.57908626676384, 88.47167289601207),
        infoWindow:
            InfoWindow(title: "Biswa Bangla Gate Rotary, Kolkata - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker nineteenthMarker = Marker(
        markerId: MarkerId("EESL-19"),
        position: LatLng(8.491919107957223, 76.95640783024761),
        infoWindow: InfoWindow(
            title:
                "State Council For Child Welfare, Thycaud, Thiruvananthapuram, Kerala - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    Marker twentythMarker = Marker(
        markerId: MarkerId("EESL-20"),
        position: LatLng(28.609809437716823, 77.36246446982771),
        infoWindow:
            InfoWindow(title: "Tata Advance Systems, Noida, UP - EV Charger"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen));
    setState(() {
      markers.add(firstMarker);
      markers.add(secondMarker);
      markers.add(thirdMarker);
      markers.add(fourthMarker);
      markers.add(fifthMarker);
      markers.add(sixthMarker);
      markers.add(seventhMarker);
      markers.add(eighthMarker);
      markers.add(ninthMarker);
      markers.add(tenthMarker);
      markers.add(eleventhMarker);
      markers.add(twelevethMarker);
      markers.add(thirteenthMarker);
      markers.add(fouteenthMarker);
      markers.add(fifteenthMarker);
      markers.add(sixteenthMarker);
      markers.add(seventeenthMarker);
      markers.add(eighteenthMarker);
      markers.add(nineteenthMarker);
      markers.add(twentythMarker);
    });
  }

  /*static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.632686962603053, 77.442169693253),
    zoom: 14.4746,
  );*/
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 167, 222, 105),
          title: Text("Electica"),
          centerTitle: true,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        drawer: MainDrawer(),
        body: SafeArea(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  mapType: MapType
                      .normal, // satelite map - hybrid and for normal map normal
                  //onTap: (LatLng) {
                  //},
                  //myLocationEnabled: true,
                  //myLocationButtonEnabled: true,
                  zoomGesturesEnabled: true,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(23.34545429374644, 79.21487108252785),
                      zoom: 4.4746),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  markers: markers.map((e) => e).toSet(),
                ))));
  }
}
