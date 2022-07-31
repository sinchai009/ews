import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ListDataMapModel {
  final String id;
  final String stationId;
  final String title;
  final String tumbon;
  final String amphoe;
  final String province;
  final String postcode;
  final String project;
  final String utmx;
  final String utmy;
  final String lat;
  final String lng;
  final String image;
  final String type;
  final String status;
  ListDataMapModel({
    required this.id,
    required this.stationId,
    required this.title,
    required this.tumbon,
    required this.amphoe,
    required this.province,
    required this.postcode,
    required this.project,
    required this.utmx,
    required this.utmy,
    required this.lat,
    required this.lng,
    required this.image,
    required this.type,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'station_id': stationId,
      'title': title,
      'tumbon': tumbon,
      'amphoe': amphoe,
      'province': province,
      'postcode': postcode,
      'project': project,
      'utmx': utmx,
      'utmy': utmy,
      'lat': lat,
      'lng': lng,
      'image': image,
      'type': type,
      'status': status,
    };
  }

  factory ListDataMapModel.fromMap(Map<String, dynamic> map) {
    return ListDataMapModel(
      id: (map['id'] ?? '') as String,
      stationId: (map['station_id'] ?? '') as String,
      title: (map['title'] ?? '') as String,
      tumbon: (map['tumbon'] ?? '') as String,
      amphoe: (map['amphoe'] ?? '') as String,
      province: (map['province'] ?? '') as String,
      postcode: (map['postcode'] ?? '') as String,
      project: (map['project'] ?? '') as String,
      utmx: (map['utmx'] ?? '') as String,
      utmy: (map['utmy'] ?? '') as String,
      lat: (map['lat'] ?? '') as String,
      lng: (map['lng'] ?? '') as String,
      image: (map['image'] ?? '') as String,
      type: (map['type'] ?? '') as String,
      status: (map['status'] ?? '') as String,
    );
  }

  factory ListDataMapModel.fromJson(String source) =>
      ListDataMapModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
