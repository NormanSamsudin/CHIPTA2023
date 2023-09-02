import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataStream {
  final StreamController<Map<String, dynamic>> _dataController =
      StreamController<Map<String, dynamic>>();

  Stream<Map<String, dynamic>> get dataStream => _dataController.stream;

void fetchDataFromApi(double lat, double long) async {
  try {
    final url = Uri.parse(
      'https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${long}&hourly=temperature_2m,relativehumidity_2m,precipitation,soil_temperature_0cm,soil_moisture_0_1cm,uv_index&forecast_days=1',
    );
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData != null && jsonData is Map<String, dynamic>) {
        _dataController.add(jsonData);
      } else {
        _dataController.addError('No data available');
      }
    } else {
      _dataController.addError('Failed to fetch data');
    }
  } catch (e) {
    _dataController.addError('Error: $e');
  }
}

  void dispose() {
    _dataController.close();
  }
}
