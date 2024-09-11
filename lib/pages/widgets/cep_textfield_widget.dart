import 'package:cosnumo_api_cep/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class CepTextfieldWidget extends StatelessWidget {
  const CepTextfieldWidget(
      {super.key, this.cepController, this.homeController});

  final HomeController? homeController;
  final TextEditingController? cepController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: cepController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: const Text('Informe o CEP'),
        suffixIcon: IconButton(
          onPressed: () {
            homeController!.clear();
            cepController!.text = "";
          },
          icon: const Icon(Icons.close_outlined),
        ),
      ),
    );
  }
}
