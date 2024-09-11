import 'package:cosnumo_api_cep/controllers/home_controller.dart';
import 'package:cosnumo_api_cep/pages/widgets/card_location.dart';
import 'package:cosnumo_api_cep/pages/widgets/cep_textfield_widget.dart';
import 'package:cosnumo_api_cep/pages/widgets/consultar_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final TextEditingController cepController = TextEditingController();
final HomeController homeController = HomeController();

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    homeController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumindo API CEP'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              CepTextfieldWidget(
                cepController: cepController,
                homeController: homeController,
              ),
              const SizedBox(
                height: 20,
              ),
              ConsultarButtonWidget(
                cepController: cepController,
                homeController: homeController,
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: homeController.isLoading.value,
                child: const CircularProgressIndicator(),
              ),
              Visibility(
                  visible: !homeController.isLoading.value &&
                      homeController.address.value != null,
                  child: CardLocation(
                    address: homeController.address.value,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
