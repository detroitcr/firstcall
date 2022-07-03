

// To parse this JSON data, do
//
//     final apiPracticeModel = apiPracticeModelFromJson(jsonString);

import 'dart:convert';

ApiPracticeModel apiPracticeModelFromJson(String str) => ApiPracticeModel.fromJson(json.decode(str));

String apiPracticeModelToJson(ApiPracticeModel data) => json.encode(data.toJson());

class ApiPracticeModel {
    ApiPracticeModel({
        this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
      //  this.support,
    });

    int ?page;
    int ?perPage;
    int ?total;
    int? totalPages;
    List<Datum>? data;
    //Support ?support;

    factory ApiPracticeModel.fromJson(Map<String, dynamic> decodedData) => ApiPracticeModel(
        page: decodedData["page"],
        perPage: decodedData["per_page"],
        total: decodedData["total"],
        totalPages: decodedData["total_pages"],
        data: List<Datum>.from(decodedData["data"].map((x) => Datum.fromJson(x))),
       // support: Support.fromJson(["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        //"support": support.toJson(),
    };
}

class Datum {
    Datum({
        this.id,
        this.name,
        this.year,
        this.color,
        this.pantoneValue,
    });

    int ?id;
    String ?name;
    int? year;
    String? color;
    String ?pantoneValue;

    factory Datum.fromJson(Map<String, dynamic> decodedData) => Datum(
        id: decodedData["id"],
        name: decodedData["name"],
        year: decodedData["year"],
        color: decodedData["color"],
        pantoneValue: decodedData["pantone_value"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "year": year,
        "color": color,
        "pantone_value": pantoneValue,
    };
}

// class Support {
//     Support({
//         this.url,
//         this.text,
//     });

//     String url;
//     String text;

//     factory Support.fromJson(Map<String, dynamic> json) => Support(
//         url: json["url"],
//         text: json["text"],
//     );

//     Map<String, dynamic> toJson() => {
//         "url": url,
//         "text": text,
//     };
// }
