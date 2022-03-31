import 'dart:convert';

class Data {
  String deviceName;
  String bateria;
  String sensor1;
  String sensor2;
  String sensor3;
  
  Data({
    required this.deviceName,
    required this.bateria,
    required this.sensor1,
    required this.sensor2,
    required this.sensor3,
  });

  Map<String, dynamic> toMap() {
    return {
      'deviceName': deviceName,
      'bateria': bateria,
      'sensor1': sensor1,
      'sensor2': sensor2,
      'sensor3': sensor3,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      deviceName: map['deviceName'] ?? '',
      bateria: map['bateria'] ?? '',
      sensor1: map['sensor1'] ?? '',
      sensor2: map['sensor2'] ?? '',
      sensor3: map['sensor3'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(deviceName: $deviceName, bateria: $bateria, sensor1: $sensor1, sensor2: $sensor2, sensor3: $sensor3)';
  }
}
