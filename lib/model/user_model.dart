class UserModel {
  final String title;
  final String firstName;
  final String lastName;
  final String sex;
  final String country;
  final String email;
  final String profileImage;

  UserModel({
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.sex,
    required this.country,
    required this.email,
    required this.profileImage,
  });

  factory UserModel.fromJson(Map<String, dynamic> user) {
    return UserModel(
      title: user['name']['title'],
      firstName: user['name']['first'],
      lastName: user['name']['last'],
      sex: user['gender'],
      country: user['location']['country'],
      email: user['email'],
      profileImage: user['picture']['medium'],
    );
  }
}
