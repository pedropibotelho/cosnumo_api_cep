import 'package:cosnumo_api_cep/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class ConsultarButtonWidget extends StatelessWidget {
  const ConsultarButtonWidget(
      {super.key, this.cepController, this.homeController});

  final HomeController? homeController;
  final TextEditingController? cepController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (cepController?.text.length == 8) {
          homeController?.searchAddress(cep: cepController!.text);
        } else {
          const snackBar = SnackBar(content: Text('CEP DEVE TER 8 NUMEROS'));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: const Text('Consultar'),
    );
  }
}
