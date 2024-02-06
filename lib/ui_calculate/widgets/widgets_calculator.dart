import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput(
      {super.key, required this.inputController, required this.label});

  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70, bottom: 45),
        child: TextFormField(
          controller: inputController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              prefixIcon: const Icon(Icons.person),
              labelStyle: const TextStyle(color: Colors.black38),
              labelText: label,
              alignLabelWithHint: true),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  const MyText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black87, fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}

class MyBotton extends StatelessWidget {
  const MyBotton({super.key, required this.lblText, required this.press});

  final Text lblText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        child: lblText,
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: child,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(31, 228, 226, 226).withOpacity(0.5),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
    );
  }
}

class MyAppContainer extends StatelessWidget {
  const MyAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
        ),
      ),
    );
  }
}

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Table(
          border: TableBorder.all(),
          children: const [
            TableRow(children: [
              Text('Menor a 18.5'),
              Text('Bajo de Peso'),
            ]),
            TableRow(children: [
              Text('De 18.5 a 24.9'),
              Text('Peso Normal'),
            ]),
            TableRow(children: [
              Text('De 25 a 29.9'),
              Text('Sobre Peso'),
            ]),
            TableRow(children: [
              Text('>30'),
              Text('Obesidad'),
            ]),
          ],
        ));
  }
}
