import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

mixin MessagesMixin on GetxController {
  void messageListener(Rxn<MessageModel> message) {
    ever<MessageModel?>(message, (model) {
      if (model != null) {
        return Fluttertoast.showToast(
          msg: model.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0,
        );
      }
    });
  }
}

class MessageModel {
  final String title;
  final String message;
  final MessageType type;

  MessageModel({
    required this.title,
    required this.message,
    required this.type,
  });

  MessageModel.error({
    required this.title,
    required this.message,
  }) : type = MessageType.error;

  MessageModel.info({
    required this.title,
    required this.message,
  }) : type = MessageType.info;
}

enum MessageType { error, info }

// Adicionar comportamentos em classes existentes
extension MessageTypeExtension on MessageType {
  Color color() {
    // O this faz referência a instância de MessageType
    switch (this) {
      case MessageType.error:
        return Colors.red[600] ?? Colors.red;
      case MessageType.info:
        return Colors.blue[200] ?? Colors.blue;
    }
  }
}
