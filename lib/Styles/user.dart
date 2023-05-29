class User {
  String? name;
  String? message;
  String? profilPicture;
  double? time;
  User({
    this.name,
    this.message,
    this.profilPicture,
    this.time,
  });

  static List<User> myUser = [
    User(
        name: 'De Jong',
        message: 'hey! keep doing ',
        profilPicture:
            'https://st3.depositphotos.com/28485044/34807/i/600/depositphotos_348077822-stock-photo-frenkie-jong-napoli-barcelona-soccer.jpg',
        time: 12.34),
    User(
        name: 'Messi',
        message: 'hey! long time no see',
        profilPicture:
            'https://st.depositphotos.com/1837549/1919/i/600/depositphotos_19190963-stock-photo-leo-messi-of-fc-barcelona.jpg',
        time: 12.34),
    User(
        name: 'Rafa Nadal',
        message: 'hey you what\'s up',
        profilPicture:
            'https://st4.depositphotos.com/1587911/20025/i/600/depositphotos_200250934-stock-photo-new-york-august-2017-grand.jpg',
        time: 12.34),
    User(
        name: 'Pedri',
        message: 'hey you what\'s up',
        profilPicture:
            'https://st2.depositphotos.com/8132070/43018/i/600/depositphotos_430180738-stock-photo-kyiv-ukraine-november-2020-pedri.jpg',
        time: 12.34),
    User(
        name: 'Gavi',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            "https://st.depositphotos.com/8132070/52632/i/600/depositphotos_526320612-stock-photo-kyiv-ukraine-november-2021-gavi.jpg",
        time: 12.34),
    User(
        name: 'Sergio Busquets  ',
        message: 'At Home',
        profilPicture:
            'https://st2.depositphotos.com/1837549/9532/i/600/depositphotos_95329312-stock-photo-sergio-busquets-of-fc-barcelona.jpg',
        time: 12.34),
    User(
        name: 'Balde',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            'https://st.depositphotos.com/36221892/61389/i/600/depositphotos_613893372-stock-photo-alejandro-balde-barcelona-uefa-champions.jpg',
        time: 12.34),
    User(
        name: 'Lewandowski',
        message: "Dancing",
        profilPicture:
            'https://st.depositphotos.com/36221892/61389/i/600/depositphotos_613893438-stock-photo-robert-lewandowski-barcelona-uefa-champions.jpg',
        time: 12.34),
    User(
        name: 'Dembélé',
        message: 'Playing Football',
        profilPicture:
            "https://st.depositphotos.com/8132070/52237/i/600/depositphotos_522374844-stock-photo-kyiv-ukraine-november-2021-ousmane.jpg",
        time: 12.34),
    User(
        name: 'Neymar',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            'https://st3.depositphotos.com/3726985/13719/i/600/depositphotos_137199664-stock-photo-villarreal-cf-vs-fc-barcelona.jpg',
        time: 12.34),
    User(
        name: 'Suarez',
        message: 'Studying',
        profilPicture:
            'https://st.depositphotos.com/2218430/5169/i/600/depositphotos_51690967-stock-photo-luis-suarez-of-fc-barcelona.jpg',
        time: 12.34),
  ];
  static List<User> myContact = [
    User(
        name: 'De Jong',
        message: 'Busy ',
        profilPicture:
            'https://st3.depositphotos.com/28485044/34807/i/600/depositphotos_348077822-stock-photo-frenkie-jong-napoli-barcelona-soccer.jpg',
        time: 12.34),
    User(
        name: 'Messi',
        message: 'At work',
        profilPicture:
            'https://st.depositphotos.com/1837549/1919/i/600/depositphotos_19190963-stock-photo-leo-messi-of-fc-barcelona.jpg',
        time: 12.34),
    User(
        name: 'Rafa Nadal',
        message: 'hey you what\'s up',
        profilPicture:
            'https://st4.depositphotos.com/1587911/20025/i/600/depositphotos_200250934-stock-photo-new-york-august-2017-grand.jpg',
        time: 12.34),
    User(
        name: 'Pedri',
        message: 'hey you what\'s up',
        profilPicture:
            'https://st2.depositphotos.com/8132070/43018/i/600/depositphotos_430180738-stock-photo-kyiv-ukraine-november-2020-pedri.jpg',
        time: 12.34),
    User(
        name: 'Gavi',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            "https://st.depositphotos.com/8132070/52632/i/600/depositphotos_526320612-stock-photo-kyiv-ukraine-november-2021-gavi.jpg",
        time: 12.34),
    User(
        name: 'Sergio Busquets  ',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            'https://st2.depositphotos.com/1837549/9532/i/600/depositphotos_95329312-stock-photo-sergio-busquets-of-fc-barcelona.jpg',
        time: 12.34),
    User(
        name: 'Balde',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            'https://st.depositphotos.com/36221892/61389/i/600/depositphotos_613893372-stock-photo-alejandro-balde-barcelona-uefa-champions.jpg',
        time: 12.34),
    User(
        name: 'Lewandowski',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            'https://st.depositphotos.com/36221892/61389/i/600/depositphotos_613893438-stock-photo-robert-lewandowski-barcelona-uefa-champions.jpg',
        time: 12.34),
    User(
        name: 'Dembélé',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            "https://st.depositphotos.com/8132070/52237/i/600/depositphotos_522374844-stock-photo-kyiv-ukraine-november-2021-ousmane.jpg",
        time: 12.34),
    User(
        name: 'Neymar',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            'https://st3.depositphotos.com/3726985/13719/i/600/depositphotos_137199664-stock-photo-villarreal-cf-vs-fc-barcelona.jpg',
        time: 12.34),
    User(
        name: 'Suarez',
        message:
            'hey! believe in you ,waiting for u to make a brilliant performance at ELclasico',
        profilPicture:
            'https://st.depositphotos.com/2218430/5169/i/600/depositphotos_51690967-stock-photo-luis-suarez-of-fc-barcelona.jpg',
        time: 12.34),
  ];
}
