import 'package:autenticacion_app/pages/registro.dart';
import 'package:flutter/material.dart';

class MeuRegistro extends StatelessWidget {
  final Function()? onTap;
  const MeuRegistro({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal:25),
        decoration: BoxDecoration(color: Colors.grey,
            borderRadius: BorderRadius.circular(10)),
        child:Center(
            child: Text("Registrarse",
                style:TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 20)
            )
        ),
      ),
      onTap:(){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Registro()));
      },
    );
  }
}
