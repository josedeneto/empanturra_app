// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String name;
  String email;
  String phone;
  String passwoard;
  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.passwoard,
  });

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, phone: $phone, passwoard: $passwoard)';
  }
}
