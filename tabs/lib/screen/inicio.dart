import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  void _handleKeyEvent(RawKeyEvent event) {
    if (event is RawKeyDownEvent && event.logicalKey == LogicalKeyboardKey.tab) {
      // Calcular el siguiente índice, asegurando que no se pase del límite
      int nextIndex = (_tabController.index + 1) % _tabController.length;

      // Mover al siguiente índice
      _tabController.index = nextIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: const Color.fromARGB(255, 17, 236, 53),
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.white,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: 'Inicio'),
            Tab(icon: Icon(Icons.article), text: 'Noticias'),
            Tab(icon: Icon(Icons.settings), text: 'Configuraciones'),
            Tab(icon: Icon(Icons.sports_soccer), text: 'Deportes'),
            Tab(icon: Icon(Icons.message), text: 'Mensajes'),
            Tab(icon: Icon(Icons.movie), text: 'Entretenimiento'),
          ],
        ),
      ),
      body: RawKeyboardListener(
        focusNode: FocusNode()..requestFocus(), // Aseguramos que el foco esté activo
        onKey: _handleKeyEvent,
        child: TabBarView(
          controller: _tabController,
          children: const [
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
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
