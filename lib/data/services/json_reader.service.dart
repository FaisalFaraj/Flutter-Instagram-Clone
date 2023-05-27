import 'dart:convert';

import 'package:flutter/services.dart';

// this service class reads JSON files in the lib/datasource/ folder
class JSONReaderService {
  // ignore: non_constant_identifier_names
  final String DATA_PATH = 'lib/data/datasource/';

  Future<List> readJsonFile(String fileName) async {
    final String response = await rootBundle.loadString('$DATA_PATH$fileName.json');
    final data = await json.decode(response);
    return data;
  }
}
