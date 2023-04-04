class User {
  String nim;
  String password;
  String name;
  String kelas;
  String tempatLahir;
  String tanggalLahir;
  String detail;
  String urlFoto;

  User(
      {required this.nim,
      required this.password,
      this.name = '',
      this.kelas = '',
      this.tempatLahir = '',
      this.tanggalLahir = '',
      this.detail = '',
      this.urlFoto = ''});
}

List<User> userList = [
  User(
    nim: 'admin',
    password: 'admin',
  ),
  User(
      nim: '123200069',
      password: 'abid',
      name: 'Abid Bilal',
      kelas: 'IF-A',
      tempatLahir: 'Yogyakarta',
      tanggalLahir: '7 Des 2001',
      detail: 'Jadi kaya banget sampe bisa beli miayam tanpa mikir',
      urlFoto: 'assets/images/foto.jpg'),
];
