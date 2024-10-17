import 'package:flutter/material.dart';

@immutable
abstract class ClientException implements Exception {}

class RestClientException implements ClientException {
  const RestClientException({this.message, this.statusCode});

  final String? message;
  final int? statusCode;

  @override
  String toString() => 'RestClientException('
      'message: $message, '
      'statusCode: $statusCode'
      ')';
}
