import 'package:get/get.dart';

class RestClient extends GetConnect {
  RestClient(){
    httpClient.baseUrl = 'https://matheusbispodev.github.io/';
  }
}