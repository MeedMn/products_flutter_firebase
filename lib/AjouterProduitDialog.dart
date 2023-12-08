import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AjouterProduitDialog extends StatefulWidget {
  @override
  _AjouterProduitDialogState createState() => _AjouterProduitDialogState();
}

class _AjouterProduitDialogState extends State<AjouterProduitDialog> {
  TextEditingController designationController = TextEditingController();
  TextEditingController marqueController = TextEditingController();
  TextEditingController categorieController = TextEditingController();
  TextEditingController prixController = TextEditingController();
  TextEditingController photoController = TextEditingController();
  TextEditingController quantiteController = TextEditingController();

  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Ajouter un produit'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: designationController,
              decoration: InputDecoration(labelText: 'Désignation'),
            ),
            TextField(
              controller: marqueController,
              decoration: InputDecoration(labelText: 'Marque'),
            ),
            TextField(
              controller: categorieController,
              decoration: InputDecoration(labelText: 'Catégorie'),
            ),
            TextField(
              controller: prixController,
              decoration: InputDecoration(labelText: 'Prix'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: photoController,
              decoration: InputDecoration(labelText: 'URL de la photo'),
            ),
            TextField(
              controller: quantiteController,
              decoration: InputDecoration(labelText: 'Quantité'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Annuler'),
        ),
        TextButton(
          onPressed: () {
            db.collection('produits').add({
              'designation': designationController.text,
              'marque': marqueController.text,
              'categorie': categorieController.text,
              'prix': double.parse(prixController.text),
              'photo': photoController.text,
              'quantite': int.parse(quantiteController.text),
            });
            Navigator.pop(context);
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}