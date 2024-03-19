import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Colors.lightGreen, // Temática verde
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 255, 255), // Temática verde
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/human.png', // Agrega la imagen human.png
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Registro de usuario',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Rol',
                      border: OutlineInputBorder(),
                    ),
                    items: [
                      DropdownMenuItem<String>(
                        value: 'Médico',
                        child: Text('Médico'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Pasante',
                        child: Text('Pasante'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Paciente',
                        child: Text('Paciente'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Estudiante',
                        child: Text('Estudiante'),
                      ),
                    ],
                    onChanged: (String? value) {
                      // Aquí puedes manejar el cambio de valor del DropdownButton
                    },
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Número de empleado',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Correo electrónico',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Agrega aquí la lógica para manejar la información ingresada
                    },
                    child: Text('Registrarse'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
