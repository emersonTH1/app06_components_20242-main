import 'package:flutter/material.dart';

class CardPage2 extends StatelessWidget {
  const CardPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BIENVENIDOS A CARDS  PARTE 2",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      backgroundColor:
          const Color.fromARGB(125, 141, 158, 245), // Color de fondo suave
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección 1: Encabezado con avatar y botón//
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.0,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Avatar
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("assets/images/linda3.jpeg"),
                  ),
                  SizedBox(width: 16.0),
                  // Nombre y puesto
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "milagro",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Ceo at Apple Inc",
                        ),
                      ],
                    ),
                  ),
                  // Botón de configuración
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.settings, size: 16.0),
                    label: Text("CONFIGURACION"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[50],
                      foregroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),

            // Sección 2: Tarjeta de información con imagen
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.0,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Imagen
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("assets/images/linda2.jpeg"),
                  ),
                  SizedBox(width: 16.0),
                  SizedBox(width: 16.0),
                  // Texto
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The quick, brown fox jumps over",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur sadipscing elitr, sed diam nonumy eirmod tempor.",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),

            // Sección 3: Configuraciones con interruptores
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.0,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Primera fila de configuración
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consetetur",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Colors.redAccent,
                      ),
                    ],
                  ),

                  // Segunda fila de configuración
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consetetur",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: const Color.fromARGB(255, 33, 243, 187),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "hrecho por emerson tomyalla",
                style: TextStyle(
                  color: const Color.fromARGB(125, 141, 158, 245),
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
