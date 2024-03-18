import 'package:autenticacion_app/components/meu_boton.dart';
import 'package:autenticacion_app/components/meu_registro.dart';
import "package:autenticacion_app/components/meu_textfield.dart";
import "package:autenticacion_app/pages/principal.dart";
import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {InicioSesion({super.key});

  final userController=TextEditingController();
  final passwordController=TextEditingController();

  void iniciarSesion(){

  }

  void registrarse(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      body: SingleChildScrollView(
        child: SafeArea( //Para que no se salga del notch
          child: Center(
            child: Column(
              children: [
                const SizedBox(height:50),
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(height:50),
                Text("¡Bienvenido/a, te hemos echado de menos!",
                style:TextStyle(
                    color: Colors.white,
                    fontSize: 16)
                ),
        
                //TextField de Nombre de usuario
                const SizedBox(height:25),
                MeuTextField(
                  controller: userController,
                  hintText: "Ingresa tu correo electrónico",
                  obscureText: false,
                ),
                //TextField de contraseña
                const SizedBox(height:15),
                MeuTextField(
                  controller: passwordController,
                  hintText: "Ingresa tu contraseña",
                  obscureText: true,
                ),
        
                //Texto de "¿olvidaste tu contraseña?"
                const SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("¿Olvidaste tu contraseña?",
                      style: TextStyle(color: Colors.white)
                      )
                    ],
                  ),
                ),
        
                //Botón de Iniciar Sesión
                const SizedBox(height:25),
                MeuBoton(
                  onTap: iniciarSesion,
                ),
                const SizedBox(height:10),
                MeuRegistro(onTap:registrarse
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}