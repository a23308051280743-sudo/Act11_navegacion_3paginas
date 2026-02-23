import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina2.dart';
import 'package:myapp/widgets/pagina3.dart';

void main() {
  runApp(const MiAppGaleria());
}

class MiAppGaleria extends StatelessWidget {
  const MiAppGaleria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Flutter',
      // Definimos la ruta inicial
      initialRoute: '/',
      // Mapa de rutas: Aquí registramos nuestras páginas
      routes: {
        '/': (context) => const PaginaInicial(),
        '/segunda': (context) => const SegundaPagina(),
        '/tercera': (context) => const TerceraPagina(),
      },
    );
  }
}

// --- PÁGINA 1: INICIO ---
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple[200], // Morado claro
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Página Inicial",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              icon: const Icon(Icons.arrow_forward),
              label: const Text("Ir a la Segunda Página"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[50]),
            ),
          ],
        ),
      ),
    );
  }
}