import 'package:flutter/material.dart';
import 'package:livraisonpro/widgets/Login.dart';
import 'package:livraisonpro/widgets/Product.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
  
}
class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Home"),
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
      body: SingleChildScrollView(
        child: Row(
          children: [

            Expanded(
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/écran.jpg"),),
                      title: Text("Ecan"),
                      subtitle: Text("700 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/écran.jpg","Ecran","34 Boulevard Driss Slaoui, Casablanca 20050","700 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/unité centrale.jpg"),),
                      title: Text("Unité centrale"),
                      subtitle: Text("600 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/unité centrale.jpg","Unité centrale","bd de Bourgogne, c.com. Kido, Lahjajma, Quartier: Bourgogne, Casablanca 20013","600 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/souris.jpg"),),
                      title: Text("Souris"),
                      subtitle: Text("60 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/souris.jpg","Souris","3 Avenue Ahmed Charci, Casablanca 20240","60 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/clavier.jpg"),),
                      title: Text("Clavier"),
                      subtitle: Text("100 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/clavier.jpg","Clavier","Clinique Val D'Anfa, 19 Boulevard Franklin Roosevelt, Casablanca 20100","100 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/casque.jpg"),),
                      title: Text("Casque"),
                      subtitle: Text("200 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/casque.jpg","Casque","Zone. Ind. Benm'Sik Sidi Othman, Rue 2 N?71-72, Casablanca 20100","200 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/imprimante.jpg"),),
                      title: Text("Imprimante"),
                      subtitle: Text("900 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/imprimante.jpg","Imprimante","25-27 Rue Arraihane Hay Raha, Casablanca 20200","900 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/disque dur.jpg"),),
                      title: Text("Disque dur"),
                      subtitle: Text("250 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/disque dur.jpg","Disque dur","Boulevard Modibo Keita, Casablanca","250 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/micro.JPG"),),
                      title: Text("Micro"),
                      subtitle: Text("220 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/micro.JPG","Micro","Avenue 2 Mars, Casablanca 20550","220 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/ram.jpg"),),
                      title: Text("Ram"),
                      subtitle: Text("250 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/ram.jpg","Ramr","31 Avenue Oukaïmeden, Casablanca","250 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/product.jpg"),),
                      title: Text("Carte mémoire"),
                      subtitle: Text("150 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/product.jpg","Carte mémoire","1160، Boulevard Mohamed VI، Casablanca 20000","150 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/usb.jpg"),),
                      title: Text("Usb"),
                      subtitle: Text("120 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/usb.jpg","Usb","HAY IFRIQUIA RUE 32 BENMSIK، Casablanca","150 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/carte graphique.jpg"),),
                      title: Text("Carte graphique"),
                      subtitle: Text("1500 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/carte graphique.jpg","Carte graphique","292 Boulevard de Témara, Casablanca","1500 dh")),
                        );
                      },
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/pc portable.jpg"),),
                      title: Text("Pc portable"),
                      subtitle: Text("8000 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/pc portable.jpg","Pc portable","Boulevard de Fes, Casablanca","8000 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/phone.jpg"),),
                      title: Text("Téléphone"),
                      subtitle: Text("2500 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/phone.jpg","Téléphone","70 Rue 71, Casablanca 20480","2550 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/scanner.jpg"),),
                      title: Text("Scanner"),
                      subtitle: Text("1100 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/scanner.jpg","Scanner","Boulevard El Qods, Casablanca","1100 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/tablette.jpg"),),
                      title: Text("Tablette"),
                      subtitle: Text("1800 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/tablette.jpg","Tablette","Casablanca 20320","1800 dh")),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image(image: AssetImage("assets/images/wifi.jpg"),),
                      title: Text("Wifi"),
                      subtitle: Text("600 DH"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Product("assets/images/wifi.jpg","Wifi","Boulevard de la Grande Ceinture, Casablanca 20320","600 dh")),
                        );
                      },
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
  
}