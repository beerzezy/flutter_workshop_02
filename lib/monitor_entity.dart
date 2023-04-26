// To parse this JSON data, do
//
//     final monitor = monitorFromJson(jsonString);

import 'dart:convert';

Monitor monitorFromJson(String str) => Monitor.fromJson(json.decode(str));

String monitorToJson(Monitor data) => json.encode(data.toJson());

class Monitor {
  Monitor({
    required this.dpC,
    required this.dpF,
    required this.temperatureF,
    required this.temperatureC,
    required this.lightCalculationReading,
    required this.deviceType,
    required this.humidityRh,
    required this.lightLux,
    required this.airPressure,
    required this.vpd,
    required this.co2,
    required this.co2Temperature,
    required this.co2Rh,
    required this.voc,
    required this.channel1,
    required this.channel2,
    required this.channel3,
    required this.channel4,
    required this.channel5,
    required this.channel6,
    required this.channel7,
    required this.channel8,
    required this.near,
    required this.clear,
    required this.flicker,
    required this.par,
    required this.gain,
    required this.tint,
    required this.deviceId,
    required this.pluggedIn,
    required this.batteryV,
    this.electricImpId,
    required this.deviceV,
    required this.signalStrength,
    required this.createdAt,
  });

  double dpC;
  double dpF;
  double temperatureF;
  double temperatureC;
  LightCalculationReading lightCalculationReading;
  int deviceType;
  double humidityRh;
  double lightLux;
  double airPressure;
  double vpd;
  int co2;
  double co2Temperature;
  double co2Rh;
  int voc;
  double channel1;
  double channel2;
  double channel3;
  double channel4;
  double channel5;
  double channel6;
  double channel7;
  double channel8;
  double near;
  double clear;
  int flicker;
  int par;
  int gain;
  double tint;
  int deviceId;
  bool pluggedIn;
  double batteryV;
  dynamic electricImpId;
  double deviceV;
  int signalStrength;
  DateTime createdAt;

  factory Monitor.fromJson(Map<String, dynamic> json) => Monitor(
        dpC: json["dpC"]?.toDouble(),
        dpF: json["dpF"]?.toDouble(),
        temperatureF: json["temperatureF"]?.toDouble(),
        temperatureC: json["temperatureC"]?.toDouble(),
        lightCalculationReading:
            LightCalculationReading.fromJson(json["lightCalculationReading"]),
        deviceType: json["deviceType"],
        humidityRh: json["humidityRh"]?.toDouble(),
        lightLux: json["lightLux"]?.toDouble(),
        airPressure: json["airPressure"]?.toDouble(),
        vpd: json["vpd"]?.toDouble(),
        co2: json["co2"],
        co2Temperature: json["co2Temperature"]?.toDouble(),
        co2Rh: json["co2Rh"]?.toDouble(),
        voc: json["voc"],
        channel1: json["channel1"]?.toDouble(),
        channel2: json["channel2"]?.toDouble(),
        channel3: json["channel3"]?.toDouble(),
        channel4: json["channel4"]?.toDouble(),
        channel5: json["channel5"]?.toDouble(),
        channel6: json["channel6"]?.toDouble(),
        channel7: json["channel7"]?.toDouble(),
        channel8: json["channel8"]?.toDouble(),
        near: json["near"]?.toDouble(),
        clear: json["clear"]?.toDouble(),
        flicker: json["flicker"],
        par: json["par"],
        gain: json["gain"],
        tint: json["tint"]?.toDouble(),
        deviceId: json["deviceId"],
        pluggedIn: json["pluggedIn"],
        batteryV: json["batteryV"]?.toDouble(),
        electricImpId: json["electricImpId"],
        deviceV: json["deviceV"]?.toDouble(),
        signalStrength: json["signalStrength"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "dpC": dpC,
        "dpF": dpF,
        "temperatureF": temperatureF,
        "temperatureC": temperatureC,
        "lightCalculationReading": lightCalculationReading.toJson(),
        "deviceType": deviceType,
        "humidityRh": humidityRh,
        "lightLux": lightLux,
        "airPressure": airPressure,
        "vpd": vpd,
        "co2": co2,
        "co2Temperature": co2Temperature,
        "co2Rh": co2Rh,
        "voc": voc,
        "channel1": channel1,
        "channel2": channel2,
        "channel3": channel3,
        "channel4": channel4,
        "channel5": channel5,
        "channel6": channel6,
        "channel7": channel7,
        "channel8": channel8,
        "near": near,
        "clear": clear,
        "flicker": flicker,
        "par": par,
        "gain": gain,
        "tint": tint,
        "deviceId": deviceId,
        "pluggedIn": pluggedIn,
        "batteryV": batteryV,
        "electricImpId": electricImpId,
        "deviceV": deviceV,
        "signalStrength": signalStrength,
        "createdAt": createdAt.toIso8601String(),
      };
}

class LightCalculationReading {
  LightCalculationReading({
    required this.channels,
    required this.tint,
    required this.gain,
    required this.ppfd,
    required this.pfdRed,
    required this.pfdGreen,
    required this.pfdBlue,
    required this.pfdIr,
  });

  List<double> channels;
  double tint;
  int gain;
  double ppfd;
  double pfdRed;
  double pfdGreen;
  double pfdBlue;
  double pfdIr;

  factory LightCalculationReading.fromJson(Map<String, dynamic> json) =>
      LightCalculationReading(
        channels: List<double>.from(json["channels"].map((x) => x?.toDouble())),
        tint: json["tint"]?.toDouble(),
        gain: json["gain"],
        ppfd: json["ppfd"]?.toDouble(),
        pfdRed: json["pfdRed"]?.toDouble(),
        pfdGreen: json["pfdGreen"]?.toDouble(),
        pfdBlue: json["pfdBlue"]?.toDouble(),
        pfdIr: json["pfdIr"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "channels": List<dynamic>.from(channels.map((x) => x)),
        "tint": tint,
        "gain": gain,
        "ppfd": ppfd,
        "pfdRed": pfdRed,
        "pfdGreen": pfdGreen,
        "pfdBlue": pfdBlue,
        "pfdIr": pfdIr,
      };
}
