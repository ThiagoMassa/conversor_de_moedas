import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = 'https://api.hgbrasil.com/finance?format=json&key=5600b590';

void main() async {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
        hintColor: Colors.yellow,
        primaryColor: Colors.black,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
          hintStyle: TextStyle(color: Colors.yellow),
        )),
  ));
}

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(request));
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();
  final libraController = TextEditingController();
  final pesoController = TextEditingController();
  final canadenseController = TextEditingController();
  final australianosController = TextEditingController();
  final ieneController = TextEditingController();
  final bitcoinController = TextEditingController();

  late double dolar;
  late double euro;
  late double libra;
  late double peso;
  late double canadense;
  late double australianos;
  late double iene;
  late double bitcoin;

  void _clearAll() {
    realController.text = "";
    dolarController.text = "";
    euroController.text = "";
    libraController.text = "";
    pesoController.text = "";
    canadenseController.text = "";
    australianosController.text = "";
    ieneController.text = "";
    bitcoinController.text = "";
  }

  void _realChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double real = double.parse(text);
    dolarController.text = (real / dolar).toStringAsFixed(2);
    euroController.text = (real / euro).toStringAsFixed(2);
    libraController.text = (real / libra).toStringAsFixed(2);
    pesoController.text = (real / peso).toStringAsFixed(2);
    canadenseController.text = (real / canadense).toStringAsFixed(2);
    australianosController.text = (real / australianos).toStringAsFixed(2);
    ieneController.text = (real / iene).toStringAsFixed(2);
    bitcoinController.text = (real / bitcoin).toStringAsFixed(5);
  }

  void _dolarChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double dolar = double.parse(text);
    realController.text = (dolar * this.dolar).toStringAsFixed(2);
    euroController.text = (dolar * this.dolar / euro).toStringAsFixed(2);
    libraController.text = (dolar * this.dolar / libra).toStringAsFixed(2);
    pesoController.text = (dolar * this.dolar / peso).toStringAsFixed(2);
    canadenseController.text =
        (dolar * this.dolar / canadense).toStringAsFixed(2);
    australianosController.text =
        (dolar * this.dolar / australianos).toStringAsFixed(2);
    ieneController.text = (dolar * this.dolar / iene).toStringAsFixed(2);
    bitcoinController.text = (dolar * this.dolar / bitcoin).toStringAsFixed(5);
  }

  void _euroChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double euro = double.parse(text);
    realController.text = (euro * this.euro).toStringAsFixed(2);
    dolarController.text = (euro * this.euro / dolar).toStringAsFixed(2);
    libraController.text = (euro * this.euro / libra).toStringAsFixed(2);
    pesoController.text = (euro * this.euro / peso).toStringAsFixed(2);
    canadenseController.text =
        (euro * this.euro / canadense).toStringAsFixed(2);
    australianosController.text =
        (euro * this.euro / australianos).toStringAsFixed(2);
    ieneController.text = (euro * this.euro / iene).toStringAsFixed(2);
    bitcoinController.text = (euro * this.euro / bitcoin).toStringAsFixed(5);
  }

  void _libraChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double libra = double.parse(text);
    realController.text = (libra * this.libra).toStringAsFixed(2);
    dolarController.text = (libra * this.libra / dolar).toStringAsFixed(2);
    euroController.text = (libra * this.libra / euro).toStringAsFixed(2);
    pesoController.text = (libra * this.libra / peso).toStringAsFixed(2);
    canadenseController.text =
        (libra * this.libra / canadense).toStringAsFixed(2);
    australianosController.text =
        (libra * this.libra / australianos).toStringAsFixed(2);
    ieneController.text = (libra * this.libra / iene).toStringAsFixed(2);
    bitcoinController.text = (libra * this.libra / bitcoin).toStringAsFixed(5);
  }

  void _pesoChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double peso = double.parse(text);
    realController.text = (peso * this.peso).toStringAsFixed(2);
    dolarController.text = (peso * this.peso / dolar).toStringAsFixed(2);
    euroController.text = (peso * this.peso / euro).toStringAsFixed(2);
    libraController.text = (peso * this.peso / libra).toStringAsFixed(2);
    canadenseController.text =
        (peso * this.peso / canadense).toStringAsFixed(2);
    australianosController.text =
        (peso * this.peso / australianos).toStringAsFixed(2);
    ieneController.text = (peso * this.peso / iene).toStringAsFixed(2);
    bitcoinController.text = (peso * this.peso / bitcoin).toStringAsFixed(5);
  }

  void _canadenseChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double canadense = double.parse(text);
    realController.text = (canadense * this.canadense).toStringAsFixed(2);
    dolarController.text =
        (canadense * this.canadense / dolar).toStringAsFixed(2);
    euroController.text =
        (canadense * this.canadense / euro).toStringAsFixed(2);
    libraController.text =
        (canadense * this.canadense / libra).toStringAsFixed(2);
    pesoController.text =
        (canadense * this.canadense / peso).toStringAsFixed(2);
    australianosController.text =
        (canadense * this.canadense / australianos).toStringAsFixed(2);
    ieneController.text =
        (canadense * this.canadense / iene).toStringAsFixed(2);
    bitcoinController.text =
        (canadense * this.canadense / bitcoin).toStringAsFixed(5);
  }

  void _australianosChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double australianos = double.parse(text);
    realController.text = (australianos * this.australianos).toStringAsFixed(2);
    dolarController.text =
        (australianos * this.australianos / dolar).toStringAsFixed(2);
    euroController.text =
        (australianos * this.australianos / euro).toStringAsFixed(2);
    libraController.text =
        (australianos * this.australianos / libra).toStringAsFixed(2);
    pesoController.text =
        (australianos * this.australianos / peso).toStringAsFixed(2);
    canadenseController.text =
        (australianos * this.australianos / canadense).toStringAsFixed(2);
    ieneController.text =
        (australianos * this.australianos / iene).toStringAsFixed(2);
    bitcoinController.text =
        (australianos * this.australianos / bitcoin).toStringAsFixed(5);
  }

  void _ieneChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double iene = double.parse(text);
    realController.text = (iene * this.iene).toStringAsFixed(2);
    dolarController.text = (iene * this.iene / dolar).toStringAsFixed(2);
    euroController.text = (iene * this.iene / euro).toStringAsFixed(2);
    libraController.text = (iene * this.iene / libra).toStringAsFixed(2);
    pesoController.text = (iene * this.iene / peso).toStringAsFixed(2);
    canadenseController.text =
        (iene * this.iene / canadense).toStringAsFixed(2);
    australianosController.text =
        (iene * this.iene / australianos).toStringAsFixed(2);
    bitcoinController.text = (iene * this.iene / bitcoin).toStringAsFixed(5);
  }

  void _bitcoinChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double bitcoin = double.parse(text);
    realController.text = (bitcoin * this.bitcoin).toStringAsFixed(2);
    dolarController.text = (bitcoin * this.bitcoin / dolar).toStringAsFixed(2);
    euroController.text = (bitcoin * this.bitcoin / euro).toStringAsFixed(2);
    libraController.text = (bitcoin * this.bitcoin / libra).toStringAsFixed(2);
    pesoController.text = (bitcoin * this.bitcoin / peso).toStringAsFixed(2);
    canadenseController.text =
        (bitcoin * this.bitcoin / canadense).toStringAsFixed(2);
    australianosController.text =
        (bitcoin * this.bitcoin / australianos).toStringAsFixed(2);
    ieneController.text = (bitcoin * this.bitcoin / iene).toStringAsFixed(5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text("\$Conversor\$"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: FutureBuilder<Map>(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                    child: Text(
                  "Carregando Dados...",
                  style: TextStyle(color: Colors.yellow, fontSize: 25.0),
                  textAlign: TextAlign.center,
                ));
              default:
                if (snapshot.hasError) {
                  return Center(
                      child: Text(
                    "Erro ao Carregas Dados...  :(",
                    style: TextStyle(color: Colors.yellow, fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ));
                } else {
                  dolar = snapshot.data!["results"]["currencies"]["USD"]["buy"];
                  euro = snapshot.data!["results"]["currencies"]["EUR"]["buy"];
                  libra = snapshot.data!["results"]["currencies"]["GBP"]["buy"];
                  peso = snapshot.data!["results"]["currencies"]["ARS"]["buy"];
                  canadense =
                      snapshot.data!["results"]["currencies"]["CAD"]["buy"];
                  australianos =
                      snapshot.data!["results"]["currencies"]["AUD"]["buy"];
                  iene = snapshot.data!["results"]["currencies"]["JPY"]["buy"];
                  bitcoin =
                      snapshot.data!["results"]["currencies"]["BTC"]["buy"];

                  return SingleChildScrollView(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Icon(Icons.monetization_on,
                              size: 150.0, color: Colors.yellow),
                          buildTextField(
                              "Reais", "R\$", realController, _realChanged),
                          Divider(),
                          buildTextField("Dólares", "US\$", dolarController,
                              _dolarChanged),
                          Divider(),
                          buildTextField(
                              "Euros", "€", euroController, _euroChanged),
                          Divider(),
                          buildTextField(
                              "Libra", "£", libraController, _libraChanged),
                          Divider(),
                          buildTextField("Peso Argentino", "\$", pesoController,
                              _pesoChanged),
                          Divider(),
                          buildTextField("Dolar Canadense", "C\$",
                              canadenseController, _canadenseChanged),
                          Divider(),
                          buildTextField("Dolar Australianos", "AU\$",
                              australianosController, _australianosChanged),
                          Divider(),
                          buildTextField("Iene Japonês", "¥", ieneController,
                              _ieneChanged),
                          Divider(),
                          buildTextField("Bitcoin", "฿", bitcoinController,
                              _bitcoinChanged)
                        ],
                      ));
                }
            }
          }),
    );
  }
}

Widget buildTextField(
    String label, String prefix, TextEditingController c, Function(String) f) {
  return TextField(
    controller: c,
    decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.yellow),
        border: OutlineInputBorder(),
        prefixText: prefix),
    style: TextStyle(color: Colors.amber, fontSize: 25.0),
    onChanged: f,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  );
}
