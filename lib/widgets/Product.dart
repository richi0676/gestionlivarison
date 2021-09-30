import 'package:flutter/material.dart';
import 'package:livraisonpro/widgets/Direction.dart';
import 'package:livraisonpro/widgets/Login.dart';

class Product extends StatefulWidget{
  String image;
  String name;
  String adresse;
  String prix;

  Product(this.image, this.name, this.adresse, this.prix);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductState();
  }
  
}
class ProductState extends State<Product>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Produit"),
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
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Image(
              image: AssetImage(widget.image),
              height: 150,
            ),
          ),

          SizedBox(height: 10,),

          Center(
            child: Text(widget.name, style: Theme.of(context).textTheme.headline4,),
          ),

          SizedBox(height: 40,),
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(widget.prix),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.radar_sharp),
              title: Text(widget.adresse),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: Text("Voir dans la map"),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Direction(),
                    ));
                  },
                ),
              ),
            ],
          ),




        ],

      ),

    );
  }
  
}