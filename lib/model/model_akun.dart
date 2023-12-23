class UserFake{
int uniqKey;
String username;
String name;
String password;
String imageAsset;

UserFake({
  required this.uniqKey,
  required this.username,
  required this.name,
  required this.password,
  required this.imageAsset,
});
}

var fakeUserList = [
  UserFake(
    uniqKey: 123,
    username: 'isno',
    name: 'Isno Wahno Putro',
    password: 'isno123',
    imageAsset: 'images/user1.png'
  ),
  UserFake(
    uniqKey: 321,
    username: 'willson',
    name: 'David Willson',
    password: 'wilson123',
    imageAsset: 'images/user2.png')
];