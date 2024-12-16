import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // Define la cantidad de pestañas
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Oculta el banner de depuración
        title: 'TabBar Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Inicio'),
            bottom: const TabBar(
              isScrollable: true, // Hace que las pestañas sean desplazables si hay muchas
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Inicio'),
                Tab(icon: Icon(Icons.article), text: 'Noticias'),
                Tab(icon: Icon(Icons.settings), text: 'Configuraciones'),
                Tab(icon: Icon(Icons.sports_soccer), text: 'Deportes'),
                Tab(icon: Icon(Icons.message), text: 'Mensajes'),
                Tab(icon: Icon(Icons.movie), text: 'Entretenimiento'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  'Bienvenido a inicio',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Bienvenido a Noticias',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Bienvenido a configuraciones',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Bienvenido a la pestaña de deportes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Bienvenido a la pestaña de mensajes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Bienvenido a la pestaña de entretenimiento',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
