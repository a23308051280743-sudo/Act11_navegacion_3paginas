import 'package:flutter/material.dart';
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Página", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100], // Rosa claro
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://picsum.photos/300/200', // Imagen aleatoria de la red
                height: 200,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[50]),
              child: const Text("Ir a la Tercera Página"),
            ),
          ],
        ),
      ),
    );
  }
}