import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  TextEditingController _azucarController = TextEditingController();
  String _resultado = '';
  Color _colorResultado = Colors.black; // Color por defecto

  void _calcularDiabetes() {
    setState(() {
      double azucar = double.tryParse(_azucarController.text) ?? 0.0;
      if (azucar < 70) {
        _resultado = 'Nivel de azúcar bajo';
        _colorResultado = Colors.red; // Color rojo para nivel bajo
      } else if (azucar >= 70 && azucar <= 130) {
        _resultado = 'Nivel de azúcar normal';
        _colorResultado = Colors.green; // Color verde para nivel normal
      } else if (azucar > 130 && azucar <= 180) {
        _resultado = 'Nivel de azúcar alto';
        _colorResultado = Colors.orange; // Color naranja para nivel alto
      } else {
        _resultado = 'Nivel de azúcar muy alto (grave)';
        _colorResultado = Colors.red; // Color rojo para nivel muy alto
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Diabetes'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calculadora de Diabetes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _azucarController,
              decoration: InputDecoration(
                labelText: 'Ingrese el nivel de azúcar en sangre (mg/dL)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularDiabetes,
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              _resultado,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: _colorResultado, // Aplicar el color del resultado
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _azucarController.dispose();
    super.dispose();
  }
}
