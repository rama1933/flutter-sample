class Iphone {
  String name;
  String imageAsset;
  String released;
  String lcd;
  String chip;
  int price;

  Iphone({
    required this.name,
    required this.imageAsset,
    required this.released,
    required this.lcd,
    required this.chip,
    required this.price,
  });
}

var iphoneList = [
  Iphone(
    name: 'Iphone 13 Pro',
    imageAsset: 'assets/images/13pro.jpg',
    released: '2021',
    lcd: 'Retina XDR',
    chip: 'Apple A15 Bionic',
    price: 999,
  ),
  Iphone(
    name: 'Iphone 13',
    imageAsset: 'assets/images/13.jpg',
    released: '2021',
    lcd: 'Retina XDR',
    chip: 'Apple A15 Bionic',
    price: 906,
  ),
  Iphone(
    name: 'Iphone 12 Pro',
    imageAsset: 'assets/images/12pro.jpg',
    released: '2020',
    lcd: 'Super Retina XDR',
    chip: 'Apple A14 Bionic',
    price: 816,
  ),
  Iphone(
    name: 'Iphone 12',
    imageAsset: 'assets/images/12.jpg',
    released: '2020',
    lcd: 'Super Retina XDR',
    chip: 'Apple A14 Bionic',
    price: 702,
  ),
  Iphone(
    name: 'Iphone 11 Pro',
    imageAsset: 'assets/images/11pro.jpg',
    released: '2019',
    lcd: 'Super Retina XDR',
    chip: 'Apple A13 Bionic',
    price: 650,
  ),
  Iphone(
    name: 'Iphone 11',
    imageAsset: 'assets/images/11.jpg',
    released: '2019',
    lcd: 'Liquid Retina HD',
    chip: 'Apple A13 Bionic',
    price: 580,
  )
];
