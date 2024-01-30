import 'dart:ffi';

class PlaceModel {
  String? name;
  Double? rate;
  String? image;

  PlaceModel({required this.name,required this.rate, required this.image});

  factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
        name: json["name"],
        rate: json["rate"],
        image: json["image"]
    );
  }
}