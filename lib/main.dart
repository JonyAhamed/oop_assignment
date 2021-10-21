class Hero {
  int strength = 3;
  int stamina = 4;
  int charisma = 5;

  void calculateRating() {}
}

class DCHero extends Hero {
  String name = "SuperMan";
  double factor = 0.75;
  bool canFly = true;
  void showRating() {
    ((strength + stamina + charisma) / 3) * factor;
  }

  void dcinfo() {
    print(this.name);
    print(this.factor);
    print(this.canFly);
  }
}

class MarvelHero extends Hero {
  String name = "IronMan";
  double factor = 0.82;
  void showRating() {
    ((strength + stamina + charisma) / 3) * factor;
  }

  void marvelinfo() {
    print(this.name);
    print(this.factor);
  }
}

main(List<String> args) {
  var dcinfo = DCHero();

  var marvelinfo = MarvelHero();

  dcinfo.dcinfo();
  dcinfo.showRating();
  marvelinfo.marvelinfo();
  marvelinfo.showRating();
}
