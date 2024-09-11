enum Category {
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
      case Category.succulents:
        return 'Plantas suculentas e cactos';
      case Category.tropical:
        return 'Plantas de clima tropical e úmido';
      case Category.indoor:
        return 'Plantas adaptadas para ambientes internos';
      case Category.outdoor:
        return 'Plantas para ambientes externos';
      case Category.lowlight:
        return 'Plantas que toleram pouca luz';
      case Category.flowering:
        return 'Plantas que produzem flores';
      case Category.herbs:
        return 'Ervas culinárias e aromáticas';
      case Category.vegetables:
        return 'Vegetais comestíveis';
      case Category.ferns:
        return 'Samambaias e plantas similares';
      case Category.vines:
        return 'Plantas trepadeiras e escaladoras';
      case Category.fruitBearing:
        return 'Plantas frutíferas';
    }
  }
}
