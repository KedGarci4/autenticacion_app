import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formKey = GlobalKey<FormState>();

  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Registro'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children:[
              const SizedBox(height:50),
              const Icon(
                Icons.account_circle_outlined,
                size: 100,
                color: Colors.black,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingresa texto.';
                  }
                  return null;
                },
          
                onSaved: (value) => _email = value!,
          
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                ),
              ),
              const SizedBox(height:30),
              TextFormField(
                validator: (value) {
                  if (value!.length < 6) {
                    return 'La contraseña debe ser de al menos 6 caracteres';
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                ),
                obscureText: true,
              ),
              const SizedBox(height:50),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    // Perform registration logic here
                  }
                },
                child: Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}