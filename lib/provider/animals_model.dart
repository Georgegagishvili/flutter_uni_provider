import 'package:flutter/cupertino.dart';

class Animal {
  String url;
  String description;

  Animal({
    required this.url,
    required this.description,
  });
}

class AnimalsModel extends ChangeNotifier {
  final List<Map> _animalInfo = [
    {
      "name": "cat",
      "url": "https://i.imgur.com/QCz7SdF.jpg",
      "description":
          "The cat (Felis catus) is a domestic species of small"
              " carnivorous mammal.[1][2] It is the only domesticated "
              "species in the family Felidae and is often referred to as "
              "the domestic cat to distinguish it from the wild members "
              "of the family.[4] A cat can either be a house cat,"
              " a farm cat or a feral cat; the latter ranges freely and avoids human contact",
    },
    {
      "name": "lion",
      "url":
          "https://images.news18.com/ibnlive/uploads/2021/08/1628511415_lion-1600x1200.jpg",
      "description": "The lion (Panthera leo) is a large cat of the genus "
          "Panthera native to Africa and India. It has "
          "a muscular, deep-chested body, short, rounded "
          "head, round ears, and a hairy tuft at the end "
          "of its tail. It is sexually dimorphic; adult male"
          " lions are larger than females and have a prominent"
          " mane. It is a social species, forming groups called"
          " prides. A lion's pride consists of a few adult males"
          ", related females, and cubs."
    },
    {
      "name": "tiger",
      "url":
          "https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/portrait-of-a-white-tiger-sergei-gladyshev.jpg",
      "description": "The tiger (Panthera tigris) is the largest living cat "
          "species and a member of the genus Panthera. It is most recognisable"
          " for its dark vertical stripes on orange fur with a white underside."
          " It is an apex predator, primarily preying on ungulates such as deer"
          " and wild boar. It is territorial and generally a solitary but social "
          "predator, requiring large contiguous areas of habitat, which support "
          "its requirements for prey and rearing of its offspring. Tiger cubs"
          " stay with their mother for about two years, then become independent "
          "and leave their mother's home range to establish their own.",
    },
    {
      "name": "ocelot",
      "url":
          "http://cincinnatizoo.org/system/assets/uploads/2011/02/ocelot-3.jpg",
      "description":
          "The ocelot (Leopardus pardalis) is a medium-sized spotted "
              "wild cat that reaches 40–50 cm (15.7–19.7 in) at the shoulders"
              " and weighs between 8 and 15.5 kg (17.6 and 34.2 lb). It was "
              "first described by Carl Linnaeus in 1758. Two subspecies are "
              "recognized. It is native to the southwestern United States,"
              "Mexico, Central and South America, and to the Caribbean islands"
              " of Trinidad and Margarita. It prefers areas close to water "
              "sources with dense vegetation cover and high prey availability.",
    },
  ];
  final Animal _singleAnimalInfo = Animal(
    url: 'https://via.placeholder.com/150',
    description: '',
  );

  List get getAnimalInfo => _animalInfo;

  Animal get getSingleAnimalInfo => _singleAnimalInfo;

  void setAnimal(int index) {
    _singleAnimalInfo.url = _animalInfo[index]['url'];
    _singleAnimalInfo.description = _animalInfo[index]['description'];
    notifyListeners();
  }
}
