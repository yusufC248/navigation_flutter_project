class UserData{
  String name;
  String age;
  String address;
  String role;
  String photo;

  UserData({
    required this.name,
    required this.age,
    required this.address,
    required this.role,
    required this.photo,
  });
}

var userList = [
  UserData(
      name: "Muhammad Yusuf",
      age: "21",
      address: "Panca Raya Street",
      role: "Mobile Dev",
      photo: "https://i.ibb.co/Kq5k6Td/foto-m-yusuf.jpg",
  ),
  UserData(
    name: "Rose",
    age: "22",
    address: "Melbourn Street",
    role: "Singer",
    photo: "https://i.ibb.co/GdHr438/rose.jpg",
  ),
  UserData(
    name: "Jennie",
    age: "23",
    address: "London Street",
    role: "Singer",
    photo: "https://i.ibb.co/2kpJmQw/jenie.jpg",
  ),
  UserData(
    name: "Lisa",
    age: "20",
    address: "Bangkok City",
    role: "Singer",
    photo: "https://i.ibb.co/kM17dGW/lisa.jpg",
  ),
  UserData(
    name: "Jisoo",
    age: "24",
    address: "Seoul City",
    role: "Singer",
    photo: "https://i.ibb.co/F3vYJ3h/jiso.jpg",
  ),
];

var emptyUser = [
  UserData(
    name: "",
    age: "",
    photo: "https://i.ibb.co/kmVrCMX/no-image-found-360x250.png",
    address: "",
    role: ""
  ),
];