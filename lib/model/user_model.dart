class User {
  final String username;
  final String phoneNumber;
  final int userSaldo;
  final String photoProfile;

  User({
    required this.username,
    required this.phoneNumber,
    required this.userSaldo,
    required this.photoProfile,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      phoneNumber: json['phone_number'],
      userSaldo: json['user_saldo'],
      photoProfile: json['photo_profile'],
    );
  }
}
