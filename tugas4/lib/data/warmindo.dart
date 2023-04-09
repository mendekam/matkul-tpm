class Warmindo {
  String name;
  String description;
  String imageUrl;
  String url;
  bool isLiked = false;

  Warmindo(
      {required this.name,
      required this.description,
      required this.imageUrl,
      required this.url, this.isLiked = false});
}

List<Warmindo> warmindoList = [
  Warmindo(
      name: "Warmindo Raja Rasa",
      description:
          "Warung Makan Indomie Warmindo Raja Rasa dapat rating 4,5 dan 191 ulasan.",
      imageUrl:
          "https://t-2.tstatic.net/travel/foto/bank/images/mie-dogdog.jpg",
      url: "https://goo.gl/maps/7ybAdiTzJ8LzeSg2A"),
  Warmindo(
      name: "Warmindo Burjo Borneo",
      description:
          "Tempat ini terkenal murah, lokasinya persis di timur pintu masuk belakang kampus UPN Veteran Jogja. Selain indomie, menu andalan di sini adalah nasi orak-arik. Nasinya lumayan banyak dan telur orak-ariknya dicampur tempe pakai bumbu serta sambal dan krupuk. Harganya cuma Rp 11.000. Jangan lupa pesan teh tarik juga sebagai pendamping menu.",
      imageUrl:
          "https://fastly.4sqi.net/img/general/600x600/8072299_U8sKdHoJRV_VQMLiy5m-AyEnFdvIXI1ig5EkCXA1Dvg.jpg",
      url: "https://goo.gl/maps/4wvdWhf2CgmWa6nS7"),
  Warmindo(
      name: "Warmindo Pasundan",
      description:
          "Konon paling murah dibandingkan dengan warmindo-warmindo yang lain. Porsinya juga banyak dan rasanya pun lumayan enak. Tenpatnya luas, enak buat nongkrong.",
      imageUrl:
          "https://cdn-2.tstatic.net/kaltim/foto/bank/images/warmindo-instagramdhidhia96.jpg",
      url: "https://goo.gl/maps/8pTjp2qzZycRHijF7"),
  Warmindo(
      name: "Warmindo Amor",
      description:  
          "Tempatnya strategis dan cukup luas, makanan dan pelayanan standar warmindo. Lokasi Jl. Imogiri Tim. No.149, Giwangan, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55163.",
      imageUrl:
          "https://t-2.tstatic.net/travel/foto/bank/images/mie-dogdog.jpg",
      url: "https://goo.gl/maps/PWU4LDQbufG3rMVd9"),
  Warmindo(
      name: "Warmindo Sangkuriang",
      description:
          "Minumannya enak sekali, selain enak harganya juga terjangkau ditanbah pelayanannya yang baik. Cocok buat nongki dan nyantai.",
      imageUrl:
          "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/06/17/2683794005.jpg",
      url: "https://goo.gl/maps/SxyjW2rtzzKYcWps8"),
  Warmindo(
      name: "Warmindo Mimin",
      description:
          "Salahsatu warmindo yang menyediakan tempat duduk cukup banyak. Menunya standar seperti warmindo kebanyakan, rasanya enak dan harga bersahabat. Oh iya, di sini juga ada bubur kacang hijaunya lho.",
      imageUrl:
          "https://cdn-2.tstatic.net/kaltim/foto/bank/images/warmindo-instagramdhidhia96.jpg",
      url: "https://goo.gl/maps/irgskndJhctWPgFc7"),
  Warmindo(
      name: "Warmindo Ciremai",
      description:
          "Warmindo ini punya menu fusion nasi orak-arik dan nasi sarden. Tempatnya luas dan cukup bersih, cocok buat tongkrongan mahasiswa.",
      imageUrl:
          "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/06/17/2683794005.jpg",
      url: "https://goo.gl/maps/XeVX7bjMUyakjs4u5")
];
