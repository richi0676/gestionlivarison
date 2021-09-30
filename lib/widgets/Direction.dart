import 'package:flutter/material.dart';
import 'package:livraisonpro/widgets/Login.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Direction extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DirectionState();
  }
  
}
class DirectionState extends State<Direction>{
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(33.5724108,-7.6570323);


  late Marker depart = Marker(
      markerId: MarkerId('Magasin informatique'),
      position: LatLng(33.58789731925426, -7.620124501890035),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Départ')
  );

  late Marker arrivee1 = Marker(
      markerId: MarkerId('h1'),
      position: LatLng(33.59686349608252, -7.654283052816627),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Consulat général du Sénégal',
                             snippet: "Ecran")
  );
  late Marker arrivee2 = Marker(
      markerId: MarkerId('h2'),
      position: LatLng(33.595315749275116, -7.651693341109154),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Marjane Market Ryad Anfa',
      snippet: "Unité centrale")
  );
  late Marker arrivee3 = Marker(
      markerId: MarkerId('h3'),
      position: LatLng(33.59002446536572, -7.644210790746672),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Kiki Café',
          snippet: "Souris")
  );
  late Marker arrivee4 = Marker(
      markerId: MarkerId('h4'),
      position: LatLng(33.590639362031226, -7.65474019597997),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'EMID',
      snippet: "Clavier")
  );
  late Marker arrivee5 = Marker(
      markerId: MarkerId('h5'),
      position: LatLng(33.58510459072836, -7.662653506574439),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Modaland S.A.R.L.',
      snippet: "Casque")
  );
  late Marker arrivee6 = Marker(
      markerId: MarkerId('h6'),
      position: LatLng(33.57017843028986, -7.6518220478766805),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Confetex Albo Sarl',
      snippet: "Imprimante")
  );
  late Marker arrivee7 = Marker(
      markerId: MarkerId('h7'),
      position: LatLng(33.56250140907645, -7.6104044500727275),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Les Quatre Cerises',
      snippet: "Disque dur")
  );
  late Marker arrivee8 = Marker(
      markerId: MarkerId('h8'),
      position: LatLng(33.5620744138476, -7.609455156352557),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Mosquée Sonna',
      snippet: "Micro")
  );
  late Marker arrivee9 = Marker(
      markerId: MarkerId('h9'),
      position: LatLng(33.55317578267648, -7.612395286404509),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Institut POLO',
      snippet: "Ram")
  );
  late Marker arrivee10 = Marker(
      markerId: MarkerId('h10'),
      position: LatLng(33.560250336627895, -7.597452572677862),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Clair Sakane',
      snippet: "Carte mémoire")
  );
  late Marker arrivee11 = Marker(
      markerId: MarkerId('h11'),
      position: LatLng(33.55676062594984, -7.590822031008664),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Him Store Casa',
      snippet: "Usb")
  );
  late Marker arrivee12 = Marker(
      markerId: MarkerId('h12'),
      position: LatLng(33.54654840996522, -7.6001911886162015),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'GAMING HOUSE',
      snippet: "Carte graphique")
  );
  late Marker arrivee13 = Marker(
      markerId: MarkerId('h14'),
      position: LatLng(33.547889671096705, -7.604332518998837),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Amazon animalerie',
      snippet: "Pc portable")
  );
  late Marker arrivee14 = Marker(
      markerId: MarkerId('h15'),
      position: LatLng(33.54467955140941, -7.597637725841417),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Pâtisserie Tre Fiori',
      snippet: "Téléphone")
  );
  late Marker arrivee15 = Marker(
      markerId: MarkerId('h16'),
      position: LatLng(33.543323650339524, -7.58564775197315),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'CIH Bank',
      snippet: "Scanner")
  );
  late Marker arrivee16 = Marker(
      markerId: MarkerId('h17'),
      position: LatLng(33.575895995124036, -7.569593331266184),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'RÉSIDENCE FAL EL KHEIR',
      snippet: "Tablette")
  );
  late Marker arrivee17 = Marker(
      markerId: MarkerId('h18'),
      position: LatLng(33.57735804681146, -7.573098372826554),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: 'Centre de Formation Lydec',
      snippet: "Wifi")
  );

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        actions: [
          TextButton(
            child: Text("Log out", style: TextStyle(color: Colors.red),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          )
        ],
      ),
      body: GoogleMap(
        markers: {depart, arrivee1, arrivee2,arrivee3,arrivee4,arrivee5,arrivee6,arrivee7,arrivee8,arrivee9,arrivee10,arrivee11,arrivee12,arrivee13,arrivee14,arrivee15,arrivee16,arrivee17},
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 8.0
        ),
        onTap: (pos) {

        },
      ),
    );
  }
  
}