// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
    DateTime? createdAt;
    String? name;
    String? avatar;
    String? id;
    List<Qualification>? qualifications;
    String? query;
    String? username;
    String? email;
    dynamic address;
    String? password;
    String? age;
    String? status;
    String? userId;
    String? institute;
    String? phoneNumber;
    String? chargedItems;
    String? overdueItems;
    String? holdItems;
    String? fineAmount;
    String? role;
    String? welcomePhoneNumber;
    int? phone;
    List<String>? qualification;
    String? job;
    List<int>? mark;
    String? title;
    String? desc;
    String? degree;
    String? completionData;

    Welcome({
        this.createdAt,
        this.name,
        this.avatar,
        this.id,
        this.qualifications,
        this.query,
        this.username,
        this.email,
        this.address,
        this.password,
        this.age,
        this.status,
        this.userId,
        this.institute,
        this.phoneNumber,
        this.chargedItems,
        this.overdueItems,
        this.holdItems,
        this.fineAmount,
        this.role,
        this.welcomePhoneNumber,
        this.phone,
        this.qualification,
        this.job,
        this.mark,
        this.title,
        this.desc,
        this.degree,
        this.completionData,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        id: json["id"],
        qualifications: json["qualifications"] == null ? [] : List<Qualification>.from(json["qualifications"]!.map((x) => Qualification.fromJson(x))),
        query: json["query"],
        username: json["username"],
        email: json["email"],
        address: json["address"],
        password: json["password"],
        age: json["age"],
        status: json["status"],
        userId: json["user ID"],
        institute: json["institute"],
        phoneNumber: json["phone number"],
        chargedItems: json["charged items"],
        overdueItems: json["overdue items"],
        holdItems: json["hold items"],
        fineAmount: json["fine amount"],
        role: json["role"],
        welcomePhoneNumber: json["phone_number"],
        phone: json["phone"],
        qualification: json["qualification"] == null ? [] : List<String>.from(json["qualification"]!.map((x) => x)),
        job: json["job"],
        mark: json["mark"] == null ? [] : List<int>.from(json["mark"]!.map((x) => x)),
        title: json["title"],
        desc: json["desc"],
        degree: json["degree"],
        completionData: json["\"completionData"],
    );

    Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "id": id,
        "qualifications": qualifications == null ? [] : List<dynamic>.from(qualifications!.map((x) => x.toJson())),
        "query": query,
        "username": username,
        "email": email,
        "address": address,
        "password": password,
        "age": age,
        "status": status,
        "user ID": userId,
        "institute": institute,
        "phone number": phoneNumber,
        "charged items": chargedItems,
        "overdue items": overdueItems,
        "hold items": holdItems,
        "fine amount": fineAmount,
        "role": role,
        "phone_number": welcomePhoneNumber,
        "phone": phone,
        "qualification": qualification == null ? [] : List<dynamic>.from(qualification!.map((x) => x)),
        "job": job,
        "mark": mark == null ? [] : List<dynamic>.from(mark!.map((x) => x)),
        "title": title,
        "desc": desc,
        "degree": degree,
        "\"completionData": completionData,
    };
}

class AddressClass {
    String street;
    String suite;
    String city;
    String zipcode;
    Geo geo;

    AddressClass({
        required this.street,
        required this.suite,
        required this.city,
        required this.zipcode,
        required this.geo,
    });

    factory AddressClass.fromJson(Map<String, dynamic> json) => AddressClass(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: Geo.fromJson(json["geo"]),
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo.toJson(),
    };
}

class Geo {
    String lat;
    String lng;

    Geo({
        required this.lat,
        required this.lng,
    });

    factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}

class Qualification {
    String? degree;
    String? completionData;
    String? email;
    String? address;
    String? completionDate;

    Qualification({
        this.degree,
        this.completionData,
        this.email,
        this.address,
        this.completionDate,
    });

    factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
        degree: json["degree"],
        completionData: json["completionData"],
        email: json["email"],
        address: json["address"],
        completionDate: json["completionDate"],
    );

    Map<String, dynamic> toJson() => {
        "degree": degree,
        "completionData": completionData,
        "email": email,
        "address": address,
        "completionDate": completionDate,
    };
}
