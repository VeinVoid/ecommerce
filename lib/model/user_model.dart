class User {
  final int id;
  final String username;
  final String email;
  final String phoneNumber;
  final int userSaldo;
  final String photoProfile;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.userSaldo,
    required this.photoProfile,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      userSaldo: json['user_saldo'],
      photoProfile: json['photo_profile'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
