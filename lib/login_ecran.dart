import 'package:atelier4_m_menfalouti_iir5g4/liste_produits.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class loginEcran extends StatelessWidget {
  const loginEcran({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot){
        if(!snapshot.hasData){
          return SignInScreen();
        }
        return ListeProduits();
      }
      );
  }
}