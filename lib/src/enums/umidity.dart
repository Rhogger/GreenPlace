enum Umidity {
  veryDry,
  dry,
  moist,
  wet;

  String get readableName {
    switch (this) {
      case Umidity.veryDry:
        return 'Muito seco';
      case Umidity.dry:
        return 'Seco';
      case Umidity.moist:
        return 'Úmido';
      case Umidity.wet:
        return 'Muito úmido';
    }
  }
}
