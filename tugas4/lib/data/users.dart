class User {
  String name;
  String password;
  String nim;
  String kelas;

  User({required this.name, required this.password, this.nim = '', this.kelas = 'IF-A'});
}

List<User> userList = [
  User(
    name: 'admin',
    password: 'admin',
    nim: '1111111111',
  ),
  User(
    name: 'abid',
    password: 'abid',
    nim: '123200069',
  ),
  User(
    name: 'agil',
    password: 'agil',
    nim: '1232000mbuh',
  ),
  
  User(
    name: 'edwin',
    password: 'edwin',
    nim: '1232000mbuh',
  ),
];
