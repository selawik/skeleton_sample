enum Category {
  all,
  favorite,
  car,
  home,
  kids;

  bool get isAll => this == Category.all;

  @override
  String toString() {
    switch (this) {
      case Category.all:
        return 'Все';
      case Category.favorite:
        return 'Избранное';
      case Category.car:
        return 'Машина';
      case Category.home:
        return 'Дом';
      case Category.kids:
        return 'Дети';
    }
  }
}
