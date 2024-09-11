enum Sunlight {
  fullSun,
  partialShade,
  indirectLight,
  shade;

  String get readableName {
    switch (this) {
      case Sunlight.fullSun:
        return 'Sol direto';
      case Sunlight.partialShade:
        return 'Meia sombra';
      case Sunlight.indirectLight:
        return 'Lúz indireta';
      case Sunlight.shade:
        return 'Sombra';
    }
  }
}
