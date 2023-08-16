import 'dart:convert';

Plants plantsFromJson(String str) => Plants.fromJson(json.decode(str));

String plantsToJson(Plants data) => json.encode(data.toJson());

class Plants {
    List<Plant> plants;

    Plants({
        required this.plants,
    });

    factory Plants.fromJson(Map<String, dynamic> json) => Plants(
        plants: List<Plant>.from(json["plants"].map((x) => Plant.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "plants": List<dynamic>.from(plants.map((x) => x.toJson())),
    };
}

class Plant {
    String plants;
    String img;

    Plant({
        required this.plants,
        required this.img,
    });

    factory Plant.fromJson(Map<String, dynamic> json) => Plant(
        plants: json["plants"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "plants": plants,
        "img": img,
    };
}
