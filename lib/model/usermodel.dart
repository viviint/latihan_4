import 'dart:convert';

class Usermodel {
  String? displayname;
  String? username;
  String? email;
  String? phone;
  String? dob;
  Usermodel({
    this.displayname,
    this.username,
    this.email,
    this.phone,
    this.dob,
  });

  Usermodel copyWith({
    String? displayname,
    String? username,
    String? email,
    String? phone,
    String? dob,
  }) {
    return Usermodel(
      displayname: displayname ?? this.displayname,
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      dob: dob ?? this.dob,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displayname': displayname,
      'username': username,
      'email': email,
      'phone': phone,
      'dob': dob,
    };
  }

  factory Usermodel.fromMap(Map<String, dynamic> map) {
    return Usermodel(
        displayname: map['displayname'],
        username: map['username'],
        email: map['email'],
        phone: map['phone'],
        dob: map['dob']);
  }

  String toJson() => json.encode(toMap());

  factory Usermodel.fromJson(String source) =>
      Usermodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Usermodel(displayname: $displayname, username: $username, email: $email, phone: $phone, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Usermodel &&
        other.displayname == displayname &&
        other.username == username &&
        other.email == email &&
        other.phone == phone &&
        other.dob == dob;
  }

  @override
  int get hashCode {
    return displayname.hashCode ^
        username.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        dob.hashCode;
  }
}
