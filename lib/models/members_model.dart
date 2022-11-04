class MembersModel {
  final String id;
  final String name;
  final String lastName;
  final String profession;
  final String photo;
  final String phoneNumber;

  const MembersModel({
    required this.id,
    required this.name,
    required this.lastName,
    required this.profession,
    required this.phoneNumber,
    required this.photo,
  });

  factory MembersModel.fromJson(Map<String, dynamic> json) {
    return MembersModel(
      id: json['id'],
      name: json['name'],
      lastName: json['lastName'],
      photo: json['photo'],
      phoneNumber: json['phoneNumber'],
      profession: json['profession'],
    );
  }
}
