extension Unique<E, Id> on List<E> {
  List<E> unique({Id Function(E element)? id, bool deepCopy = true}) {
    final ids = <Id>{};

    final list = (deepCopy ? List<E>.from(this) : this)
      ..retainWhere(
        (x) => ids.add(id != null ? id(x) : x as Id),
      );

    return list;
  }
}
