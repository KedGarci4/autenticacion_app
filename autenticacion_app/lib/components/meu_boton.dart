import "package:autenticacion_app/pages/principal.dart";
import 'package:flutter/material.dart';

class MeuBoton extends StatelessWidget {
  final Function()? onTap;
   const MeuBoton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal:25),
        decoration: BoxDecoration(color: Colors.greenAccent[700],
        borderRadius: BorderRadius.circular(10)),
        child:Center(
          child: Text("Iniciar Sesión",
          style:TextStyle(
              color: Colors.white,
              fontWeight:FontWeight.bold,
              fontSize: 20)
          )
        ),
      ),
      onTap:(){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => Principal()));
      },
    );
  }
}
