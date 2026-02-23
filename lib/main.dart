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

