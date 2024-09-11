import 'package:cosnumo_api_cep/models/address_model.dart';
import 'package:flutter/material.dart';

class CardLocation extends StatelessWidget {
  const CardLocation({super.key, this.address});
  final AddressModel? address;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Logradouro: ${address?.logradouro}"),
            Text("Complemento: ${address?.complemento}"),
            Text("Bairro: ${address?.bairro}"),
            Text("Cidade: ${address?.localidade}"),
            Text("UF: ${address?.uf}"),
          ],
        ),
      ),
    );
  }
}
