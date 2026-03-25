// IMPORT
import 'package:flutter/material.dart';

// ETAPA1 - Esqueleto da tela
// Objetivo: entender a estrutura do flutter

void main() => runApp(
      MaterialApp(
        home: ChurrascoApp(),
      ),
    ); // MaterialApp

class ChurrascoApp extends StatelessWidget {

  String _resultado = "";
  void _calcular(){
    
  }
  @override
  Widget build(BuildContext context) {
    // Esqueleto visual da tela - como a tag <html>
    return Scaffold(
      // Local onde ficarão a maioria dos nossos elementos
      appBar: AppBar(
        title: Text("Calculadora de Churras"),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Aqui é onde estarão os elementos/widgets
            Text(
              "Bem vindo a Calculando o churras! ♨️", 
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 36),
            //Mulheres
            Text(
              "Informe o número de convidados:", 
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Quantidade de mulheres:",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            // Homens
            TextField(
              decoration: InputDecoration(
                labelText: "Quantidade de homens:",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: _calcular,
              child: Text("Calcular"),
            ),
            SizedBox(height: 36),
            Text(
              _resultado,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}