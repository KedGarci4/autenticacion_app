import 'package:autenticacion_app/pages/inicio_sesion.dart';
import 'package:autenticacion_app/pages/principal.dart';
import 'package:autenticacion_app/pages/registro.dart';
import 'package:autenticacion_app/routes/mis_routes.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  MisRoutes.IniciarSesion.name: (context) => InicioSesion(),
  MisRoutes.Registro.name: (context) => Registro(),
  MisRoutes.Principal.name: (context) => Principal(),

};