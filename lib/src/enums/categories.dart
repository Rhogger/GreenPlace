enum Category {
  plant,
  succulents,
  tropical,
  indoor,
  outdoor,
  lowlight,
  flowering,
  herbs,
  vegetables,
  ferns,
  vines,
  fruitBearing;

  String get readableName {
    switch (this) {
      case Category.plant:
        return 'Todas as plantas';
      case Category.succulents:
        return 'Suculentas e cactos';
      case Category.tropical:
        return 'Clima tropical e úmido';
      case Category.indoor:
        return 'Adaptadas para ambientes internos';
      case Category.outdoor:
        return 'Para ambientes externos';
      case Category.lowlight:
        return 'Toleram pouca luz';
      case Category.flowering:
        return 'Produzem flores';
      case Category.herbs:
        return 'Ervas culinárias e aromáticas';
      case Category.vegetables:
        return 'Vegetais comestíveis';
      case Category.ferns:
        return 'Samambaias e plantas similares';
      case Category.vines:
        return 'Trepadeiras e escaladoras';
      case Category.fruitBearing:
        return 'Frutíferas';
    }
  }
}
