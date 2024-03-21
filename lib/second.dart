import 'package:flutter/material.dart';

import 'calculadora_page.dart'; // Importante: asegúrate de tener la página de la calculadora importada

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introducción a la diabetes'),
        backgroundColor: Colors.lightGreen, // Temática verde
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/Diabetes1.jpg',
                  width: 250,
                  height: 250,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '¿Qué es la diabetes?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'La diabetes es una enfermedad crónica que afecta la forma en que el cuerpo utiliza la glucosa en sangre.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Tipos de diabetes:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1. Diabetes tipo 1: Se produce cuando el cuerpo no produce suficiente insulina, una hormona necesaria para convertir el azúcar en energía.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2. Diabetes tipo 2: Se desarrolla cuando el cuerpo no produce suficiente insulina o no puede utilizarla adecuadamente.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '3. Diabetes gestacional: Ocurre durante el embarazo y generalmente desaparece después del parto, pero aumenta el riesgo de desarrollar diabetes tipo 2 en el futuro.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Síntomas de la diabetes:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '- Aumento de la sed y la micción frecuente.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Pérdida de peso inexplicada.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Fatiga y debilidad.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Visión borrosa.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Tratamiento de la diabetes:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'El tratamiento puede incluir cambios en el estilo de vida, como dieta y ejercicio, medicamentos orales o inyectables, e insulina en casos de diabetes tipo 1 o avanzada tipo 2.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InfoPage()),
                    );
                  },
                  child: Text('Más Información'),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalculadoraPage()),
                    );
                  },
                  child: Text('Calculadora de Diabetes'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infografía'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Image.asset(
            'assets/info.jpg',
          ),
        ),
      ),
    );
  }
}
