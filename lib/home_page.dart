import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  double valorDolar;
  double valorEuro;

  void calcularValor(String text){
    setState(() {
      valorDolar = (5.44 * double.parse(text));
      valorEuro = (6.56 * double.parse(text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Conversor de moedas')),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.attach_money, size: 120.0, color: Colors.amber),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Digite o valor(Reais):",
                    labelStyle: TextStyle(color: Colors.white)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
                onChanged: (text){
                  calcularValor(text);
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              ),
              Center(
                  child: Text('Dólares:   ' + (valorDolar != null ? valorDolar.toString() : '0.00'), style: TextStyle(color: Colors.white, fontSize: 25.0))
              ),
              Center(
                  child: Text('Euros:   ' + (valorEuro != null ? valorEuro.toString() : '0.00'), style: TextStyle(color: Colors.white, fontSize: 25.0))
              ),
            ],
          ),
        ),
      ),
    );
  }
}