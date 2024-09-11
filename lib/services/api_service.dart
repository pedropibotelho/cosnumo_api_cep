import 'dart:developer';
import 'package:cosnumo_api_cep/constants/api_constants.dart';
import 'package:cosnumo_api_cep/models/address_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  Future<AddressModel?> getAddress({required String cep}) async {
    try {
      var response = await Dio().get(ApiConstants.url(cep));

      if (response.statusCode == 200) {
        return AddressModel.fromJson(response.data);
      }
    } catch (e) {
      log(e.toString());
    }

    return null;
  }
}
