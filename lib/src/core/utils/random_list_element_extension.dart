extension RandomListElementExtension<Type> on List<Type> {
  Type getRandomElement() {
    var copyList = List.from(this);

    copyList.shuffle();

    return copyList.first;
  }
}
