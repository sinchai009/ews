import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AllMapModel {
  final String id;
  final String stnId;
  final String ondate;
  final String soil;
  final String temp;
  final String moisture;
  final String vBattery;
  final String vCharger;
  final String aCharger;
  final String pCharger;
  final String wCharger;
  final String r15m;
  final String r12h;
  final String r24h;
  final String rc15m;
  final String rc12h;
  final String rc24h;
  final String pm25;
  final String pm10;
  final String regDate;
  final String upd;
  AllMapModel({
    required this.id,
    required this.stnId,
    required this.ondate,
    required this.soil,
    required this.temp,
    required this.moisture,
    required this.vBattery,
    required this.vCharger,
    required this.aCharger,
    required this.pCharger,
    required this.wCharger,
    required this.r15m,
    required this.r12h,
    required this.r24h,
    required this.rc15m,
    required this.rc12h,
    required this.rc24h,
    required this.pm25,
    required this.pm10,
    required this.regDate,
    required this.upd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stn_id': stnId,
      'ondate': ondate,
      'soil': soil,
      'temp': temp,
      'moisture': moisture,
      'v_battery': vBattery,
      'v_charger': vCharger,
      'a_charger': aCharger,
      'p_charger': pCharger,
      'w_charger': wCharger,
      'r15m': r15m,
      'r12h': r12h,
      'r24h': r24h,
      'rc15m': rc15m,
      'rc12h': rc12h,
      'rc24h': rc24h,
      'pm25': pm25,
      'pm10': pm10,
      'reg_date': regDate,
      'upd': upd,
    };
  }

  factory AllMapModel.fromMap(Map<String, dynamic> map) {
    return AllMapModel(
      id: (map['id'] ?? '') as String,
      stnId: (map['stn_id'] ?? '') as String,
      ondate: (map['ondate'] ?? '') as String,
      soil: (map['soil'] ?? '') as String,
      temp: (map['temp'] ?? '') as String,
      moisture: (map['moisture'] ?? '') as String,
      vBattery: (map['v_battery'] ?? '') as String,
      vCharger: (map['v_charger'] ?? '') as String,
      aCharger: (map['a_charger'] ?? '') as String,
      pCharger: (map['p_charger'] ?? '') as String,
      wCharger: (map['w_charger'] ?? '') as String,
      r15m: (map['r15m'] ?? '') as String,
      r12h: (map['r12h'] ?? '') as String,
      r24h: (map['r24h'] ?? '') as String,
      rc15m: (map['rc15m'] ?? '') as String,
      rc12h: (map['rc12h'] ?? '') as String,
      rc24h: (map['rc24h'] ?? '') as String,
      pm25: (map['pm25'] ?? '') as String,
      pm10: (map['pm10'] ?? '') as String,
      regDate: (map['reg_date'] ?? '') as String,
      upd: (map['upd'] ?? '') as String,
    );
  }

  factory AllMapModel.fromJson(String source) => AllMapModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
