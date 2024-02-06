import 'package:calculadora_basica/ui_calculate/widgets/widgets_calculator.dart';
import 'package:flutter/material.dart';

class CalculadoraUi extends StatefulWidget {
  const CalculadoraUi({super.key});

  @override
  State<CalculadoraUi> createState() => _CalculadoraUi();
}

class _CalculadoraUi extends State<CalculadoraUi> {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  String respuesta = 'Respuesta';
  double imc = 0.0;

  void calcular() {
    setState(() {
      double peso = double.parse(_pesoController.text);
      double altura = double.parse(_alturaController.text);
      imc = peso / (altura * altura);
      respuesta = imc.toStringAsFixed(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Mi primer calculador')),
      ),
      body: SingleChildScrollView(
        child: MyContainer(
          child: Column(
            children: [
              const Stack(
                children: [MyAppContainer()],
              ),
              _sizeEspacio(),
              MyTextInput(
                  inputController: _pesoController,
                  label: 'Calcula tu Peso en Kg'),
              MyTextInput(
                  inputController: _alturaController,
                  label: 'Calcula tu Altura en Metros'),
              _sizeEspacio(),
              MyText(text: respuesta.toString()),
              MyBotton(
                lblText: const Text('Calcular'),
                press: (() => calcular()),
              ),
              const MyTable(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _sizeEspacio() {
  return const SizedBox(
    height: 30,
  );
}
