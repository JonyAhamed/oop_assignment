class Hero {
  int strength;
  int stamina;
  int charisma;

  Hero(this.strength, this.stamina, this.charisma);

  double calculteRating(double factor) {
    return (((strength + stamina + charisma) / 3) * factor);
  }
}

class DCHero extends Hero {
  String name;
  double factor;
  bool canFly;
  DCHero(this.name, this.factor, this.canFly) : super(3, 4, 5);

  void info() {
    print("Name: $name\nFactor: $factor\nCan Fly: $canFly\n");
  }

  void showRating() {
    print("$name Rating: ${calculteRating(factor)}");
  }
}

class MarvelHero extends Hero {
  String name;
  double factor;
  MarvelHero(this.name, this.factor) : super(3, 4, 5);

  void info() {
    print("Name: $name\nFactor: $factor\n");
  }

  void showRating() {
    print("$name Rating: ${calculteRating(factor)}");
  }
}

main(List<String> args) {
  DCHero dcHero = DCHero("Super Man", 0.75, true);
  dcHero.info();
  MarvelHero marvelHero = MarvelHero("Iron Man", 0.82);
  marvelHero.info();

  dcHero.showRating();
  marvelHero.showRating();
}
