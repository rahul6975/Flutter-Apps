import 'dart:convert';

Teams teamsFromJson(String str) => Teams.fromJson(json.decode(str));



String teamsToJson(Teams data) => json.encode(data.toJson());

class Teams {
  Teams({
    required this.data,
    required this.meta,
  });

  List<Datum> data;
  Meta meta;

  factory Teams.fromJson(Map<String, dynamic> json) => Teams(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.fullName,
    required this.name,
  });

  int id;
  String abbreviation;
  String city;
  String conference;
  String division;
  String fullName;
  String name;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        abbreviation: json["abbreviation"],
        city: json["city"],
        conference: json["conference"],
        division: json["division"],
        fullName: json["full_name"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "abbreviation": abbreviation,
        "city": city,
        "conference": conference,
        "division": division,
        "full_name": fullName,
        "name": name,
      };
}

class Meta {
  Meta({
    required this.totalPages,
    required this.currentPage,
    required this.nextPage,
    required this.perPage,
    required this.totalCount,
  });

  int totalPages;
  int currentPage;
  dynamic nextPage;
  int perPage;
  int totalCount;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        totalPages: json["total_pages"],
        currentPage: json["current_page"],
        nextPage: json["next_page"],
        perPage: json["per_page"],
        totalCount: json["total_count"],
      );

  Map<String, dynamic> toJson() => {
        "total_pages": totalPages,
        "current_page": currentPage,
        "next_page": nextPage,
        "per_page": perPage,
        "total_count": totalCount,
      };
}
