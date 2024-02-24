import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                '\nTu cuenta está protegida',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                children: [
                  Text(
                    'La verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.\n\n',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Ver detalles',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.verified_user,
                size: 100,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 5), // Espacio entre mensajes
          Card(
            color: Colors.white,
            child: ListTile(
              title: const Text(
                '\nVerificación de privacidad',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                children: [
                  Text(
                    'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.\n\n',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Realizar la configuración de privacidad\n',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.shield,
                size: 100,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height:5),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "¿Buscas otra información?",
              style:TextStyle(
                color: Colors.black,
                fontSize:28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height:6),
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              const SizedBox(width: 10),
              Text(
                'Buscar en la Cuenta de Google',
                style: TextStyle(
                  color: Colors.black,
                ),
            ),
          ],

          ),
      ],
    ),
    );
  }
}