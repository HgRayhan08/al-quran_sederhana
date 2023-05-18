
import 'dart:convert';

ListSuratResponse listSuratResponseFromJson(String str) =>
    ListSuratResponse.fromJson(json.decode(str));

String listSuratResponseToJson(ListSuratResponse data) =>
    json.encode(data.toJson());

class ListSuratResponse {
  int code;
  String status;
  String message;
  List<Datum> data;

  ListSuratResponse({
    required this.code,
    required this.status,
    required this.message,
    required this.data,
  });

  factory ListSuratResponse.fromJson(Map<String, dynamic> json) =>
      ListSuratResponse(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int number;
  int sequence;
  int numberOfVerses;
  Name name;
  Revelation revelation;
  Tafsir tafsir;

  Datum({
    required this.number,
    required this.sequence,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
    required this.tafsir,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: Name.fromJson(json["name"]),
        revelation: Revelation.fromJson(json["revelation"]),
        tafsir: Tafsir.fromJson(json["tafsir"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "sequence": sequence,
        "numberOfVerses": numberOfVerses,
        "name": name.toJson(),
        "revelation": revelation.toJson(),
        "tafsir": tafsir.toJson(),
      };
}

class Name {
  String short;
  String long;
  Translation transliteration;
  Translation translation;

  Name({
    required this.short,
    required this.long,
    required this.transliteration,
    required this.translation,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        long: json["long"],
        transliteration: Translation.fromJson(json["transliteration"]),
        translation: Translation.fromJson(json["translation"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
        "transliteration": transliteration.toJson(),
        "translation": translation.toJson(),
      };
}

class Translation {
  String en;
  String id;

  Translation({
    required this.en,
    required this.id,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "id": id,
      };
}

class Revelation {
  Arab arab;
  En en;
  Id id;

  Revelation({
    required this.arab,
    required this.en,
    required this.id,
  });

  factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: arabValues.map[json["arab"]]!,
        en: enValues.map[json["en"]]!,
        id: idValues.map[json["id"]]!,
      );

  Map<String, dynamic> toJson() => {
        "arab": arabValues.reverse[arab],
        "en": enValues.reverse[en],
        "id": idValues.reverse[id],
      };
}

// ignore: constant_identifier_names
enum Arab { EMPTY, ARAB }

final arabValues = EnumValues({"مدينة": Arab.ARAB, "مكة": Arab.EMPTY});

// ignore: constant_identifier_names
enum En { MECCAN, MEDINAN }

final enValues = EnumValues({"Meccan": En.MECCAN, "Medinan": En.MEDINAN});

// ignore: constant_identifier_names
enum Id { MAKKIYYAH, MADANIYYAH }

final idValues =
    EnumValues({"Madaniyyah": Id.MADANIYYAH, "Makkiyyah": Id.MAKKIYYAH});

class Tafsir {
  String id;

  Tafsir({
    required this.id,
  });

  factory Tafsir.fromJson(Map<String, dynamic> json) => Tafsir(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
