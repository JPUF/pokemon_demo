import 'package:dio/dio.dart';

class Api {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://pokeapi.co/api/v2/",
      receiveTimeout: 15000,
      connectTimeout: 15000,
      sendTimeout: 15000,
    ),
  );

  Api._internalInstance();

  static final _singleton = Api._internalInstance();

  factory Api() => _singleton;
}
