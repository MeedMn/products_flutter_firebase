import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'produit.dart'; // Import your Produit class

class ProduitItem extends StatelessWidget {
  ProduitItem({Key? key, required this.produit}) : super(key: key);
  final Produit produit;
  final FirebaseFirestore db=FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isAdmin() {
      User? user = auth.currentUser;
      return user != null && user.uid == 'IrL2h7cb1MV9LSSxqMSHYXPfSI22';
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(produit.photo),
        ),
        title: Text(
          produit.designation,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Marque: ${produit.marque}'),
            Text('Prix: ${produit.prix} Euro'),
          ],
        ),
        onTap: () {
          _showDetailsDialog(context);
        },
      ),
    );
  }

  void _showDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(produit.designation),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                produit.photo,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Text('Marque: ${produit.marque}'),
              Text('Categorie: ${produit.categorie}'),
              Text('Prix: ${produit.prix} Euro'),
              Text('Quantite: ${produit.quantite}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
            isAdmin() ?
            TextButton(
              onPressed: (){db.collection('produits').doc(produit.id).delete(); Navigator.of(context).pop();},
              child: const Text(
                "Delete",
                style: TextStyle(
                  color: Colors.red,
                ),)
            ):TextButton(
              onPressed: (){},
              child: const Text(
                "Favorite",
                style: TextStyle(
                  color: Color.fromARGB(255, 244, 130, 54),
                ),)
            )
            
            ],);},);}
}
