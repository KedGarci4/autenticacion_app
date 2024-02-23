import "package:pantalla_cuentagoogle/src/shared/widgets/CustomIconButton.dart";
import 'package:flutter/material.dart';

class PaginaCuentaGoogle extends StatelessWidget {
  const PaginaCuentaGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Scaffold.of(context).openDrawer(); //Me puse a investigar la propiedad "leading", en la página api.flutter.
                },
              );
            },
          ),
          centerTitle:false,
          title: Text('Cuenta de Google'),
          actions: [
            CustomIconButton(
              color:Colors.black,
              icon:Icons.help,
              iconSize:30.0,
              onPressed:(){},
            ),
            CustomIconButton(
              color:Colors.black,
              icon:Icons.search,
              iconSize:30.0,
              onPressed:(){},
            ),
            CustomIconButton(
              color:Colors.black,
              icon:Icons.account_circle_sharp,
              iconSize:30.0,
              onPressed:(){},
            ),
          ],
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              onTap: (value)=>print("Tab: $value"),
              tabs: [
                Tab(
                    child: Text("Página principal",)
                ),
                Tab(
                    child: Text("Información personal",
                  style: TextStyle(color:Colors.grey)
                      ,)
                ),
                Tab(
                    child: Text("Datos y privacidad",
                    style: TextStyle(color:Colors.grey)
                    )
                ),
              ]
            ),
        ),
    ),
    );
  }
}