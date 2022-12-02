// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String name;
  String email;
  String phone;
  String password;
  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, phone: $phone, passwoard: $password)';
  }
}
