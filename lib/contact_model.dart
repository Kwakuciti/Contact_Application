// To parse this JSON data, do
//
//     final contact = contactFromMap(jsonString);

import 'dart:convert';

Contact contactFromMap(String str) => Contact.fromMap(json.decode(str));

String contactToMap(Contact data) => json.encode(data.toMap());

class Contact {
    Contact({
       required this.name,
        required this.phone,
        required this.email,
        required this.country,
        required this.region,
    });

    String name;
    String phone;
    String email;
    String country;
    String region;

    factory Contact.fromMap(Map<String, dynamic> json) => Contact(
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        country: json["country"],
        region: json["region"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "phone": phone,
        "email": email,
        "country": country,
        "region": region,
    };
}
