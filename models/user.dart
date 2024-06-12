class User {
  String id;
  String email;
  String password;
  String username;

  User({
    required this.id,
    required this.email,
    required this.password,
    required this.username,
  });

  @override
  String toString() {
    return 'User{id: $id, email: $email, username: $username}';
  }
}
