import 'package:flutter/material.dart';

void main() {
  runApp(const MiIcono());
}

class MiIcono extends StatelessWidget {
  const MiIcono({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
        appBar: AppBar(
          title: const Text('Andrea Tavizon Mat:22308051281103'),
          titleTextStyle: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto a blanco
          fontSize: 20, // Opcional: ajusta el tamaño de la fuente
          fontWeight: FontWeight.bold, // Opcional: ajusta el peso de la fuente
          ),
          backgroundColor: const Color.fromARGB(255, 87, 89, 99),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribuye el espacio uniformemente
            children: const [
              IconWithSubtitle(
                icon: Icons.favorite,
                subtitle: 'Favorito',
              ),
              IconWithSubtitle(
                icon: Icons.star,
                subtitle: 'Destacados',
              ),
              IconWithSubtitle(
                icon: Icons.notifications,
                subtitle: 'Alertas',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;

  const IconWithSubtitle({
    super.key,
    required this.icon,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40.0), // Icono
        const SizedBox(height: 8.0), // Espacio entre el icono y el texto
        Text(subtitle), // Subtítulo
      ],
    );
  }
}
