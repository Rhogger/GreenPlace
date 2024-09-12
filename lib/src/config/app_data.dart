import '../enums/categories.dart';
import '../enums/sunlight.dart';
import '../enums/umidity.dart';
import '../models/plant.dart';

var aloeVera = PlantModel(
  name: 'Aloe Vera',
  description: 'Planta suculenta conhecida por suas propriedades medicinais.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.succulents, Category.indoor],
  imageUrl: 'assets/images/plants/aloe_vera.png',
);

var bostonFern = PlantModel(
  name: 'Boston Fern',
  description: 'Planta de interior que adora umidade e sombra.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.ferns, Category.indoor],
  imageUrl: 'assets/images/plants/boston_fern.png',
);

var cactus = PlantModel(
  name: 'Cactus',
  description: 'Planta desértica que requer pouca água.',
  umidity: Umidity.veryDry,
  sunlight: Sunlight.fullSun,
  categories: [Category.succulents, Category.outdoor],
  imageUrl: 'assets/images/plants/cactus.png',
);

var orchid = PlantModel(
  name: 'Orchid',
  description: 'Planta com flores exóticas que prefere luz indireta.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.flowering, Category.indoor],
  imageUrl: 'assets/images/plants/orchid.png',
);

var rose = PlantModel(
  name: 'Rose',
  description: 'Planta com flores populares que precisa de sol direto.',
  umidity: Umidity.moist,
  sunlight: Sunlight.fullSun,
  categories: [Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/rose.png',
);

var spiderPlant = PlantModel(
  name: 'Spider Plant',
  description: 'Planta resistente que se adapta bem a ambientes internos.',
  umidity: Umidity.dry,
  sunlight: Sunlight.partialShade,
  categories: [Category.indoor],
  imageUrl: 'assets/images/plants/spider_plant.png',
);

var mint = PlantModel(
  name: 'Mint',
  description: 'Erva aromática que gosta de sol indireto e solo úmido.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.herbs, Category.indoor],
  imageUrl: 'assets/images/plants/mint.png',
);

var tomato = PlantModel(
  name: 'Tomato',
  description: 'Planta de vegetais que requer sol direto para frutificar.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.vegetables, Category.outdoor],
  imageUrl: 'assets/images/plants/tomato.png',
);

var basil = PlantModel(
  name: 'Basil',
  description:
      'Erva culinária que prefere luz solar indireta e solo bem drenado.',
  umidity: Umidity.dry,
  sunlight: Sunlight.indirectLight,
  categories: [Category.herbs, Category.indoor],
  imageUrl: 'assets/images/plants/basil.png',
);

var zebraPlant = PlantModel(
  name: 'Zebra Plant',
  description: 'Planta tropical com folhas vistosas e que requer luz indireta.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.tropical, Category.indoor],
  imageUrl: 'assets/images/plants/zebra_plant.png',
);

var lavender = PlantModel(
  name: 'Lavender',
  description: 'Planta aromática que prefere sol direto e solo seco.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.herbs, Category.outdoor],
  imageUrl: 'assets/images/plants/lavender.png',
);

var pothos = PlantModel(
  name: 'Pothos',
  description: 'Planta de interior de fácil cuidado que tolera pouca luz.',
  umidity: Umidity.dry,
  sunlight: Sunlight.indirectLight,
  categories: [Category.indoor],
  imageUrl: 'assets/images/plants/pothos.png',
);

var bougainvillea = PlantModel(
  name: 'Bougainvillea',
  description: 'Planta trepadeira que necessita de sol direto para florescer.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.vines, Category.outdoor],
  imageUrl: 'assets/images/plants/bougainvillea.png',
);

var philodendron = PlantModel(
  name: 'Philodendron',
  description:
      'Planta tropical que cresce bem em ambientes internos com luz indireta.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.tropical, Category.indoor],
  imageUrl: 'assets/images/plants/philodendron.png',
);

var snakePlant = PlantModel(
  name: 'Snake Plant',
  description:
      'Planta resistente que tolera pouca luz e precisa de pouca água.',
  umidity: Umidity.veryDry,
  sunlight: Sunlight.indirectLight,
  categories: [Category.indoor],
  imageUrl: 'assets/images/plants/snake_plant.png',
);

var petunia = PlantModel(
  name: 'Petunia',
  description:
      'Planta de exterior com flores coloridas que precisa de sol direto.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/petunia.png',
);

var fiddleLeafFig = PlantModel(
  name: 'Fiddle Leaf Fig',
  description: 'Planta tropical com folhas grandes que prefere luz indireta.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.tropical, Category.indoor],
  imageUrl: 'assets/images/plants/fiddle_leaf_fig.png',
);

var poinsettia = PlantModel(
  name: 'Poinsettia',
  description:
      'Planta ornamental que floresce em inverno e precisa de luz indireta.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.flowering, Category.indoor],
  imageUrl: 'assets/images/plants/poinsettia.png',
);

var ginger = PlantModel(
  name: 'Ginger',
  description:
      'Planta tropical comestível que requer luz indireta e solo úmido.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.tropical, Category.herbs],
  imageUrl: 'assets/images/plants/ginger.png',
);

var sunflower = PlantModel(
  name: 'Sunflower',
  description: 'Planta que precisa de sol direto e solo bem drenado.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/sunflower.png',
);

var chili = PlantModel(
  name: 'Chili Pepper',
  description:
      'Planta de vegetais que requer sol direto para produzir pimentas.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.vegetables, Category.outdoor],
  imageUrl: 'assets/images/plants/chili_pepper.png',
);

var bamboo = PlantModel(
  name: 'Bamboo',
  description:
      'Planta de crescimento rápido que pode ser cultivada tanto dentro quanto fora.',
  umidity: Umidity.moist,
  sunlight: Sunlight.partialShade,
  categories: [Category.indoor, Category.outdoor],
  imageUrl: 'assets/images/plants/bamboo.png',
);

var lemonBalm = PlantModel(
  name: 'Lemon Balm',
  description:
      'Erva aromática que prefere luz solar indireta e solo bem drenado.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.herbs, Category.indoor],
  imageUrl: 'assets/images/plants/lemon_balm.png',
);

var maranta = PlantModel(
  name: 'Maranta',
  description: 'Planta de interior que gosta de luz indireta e umidade.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.indoor, Category.tropical],
  imageUrl: 'assets/images/plants/maranta.png',
);

var kalanchoe = PlantModel(
  name: 'Kalanchoe',
  description: 'Planta suculenta que gosta de sol direto e pouca água.',
  umidity: Umidity.veryDry,
  sunlight: Sunlight.fullSun,
  categories: [Category.succulents, Category.indoor],
  imageUrl: 'assets/images/plants/kalanchoe.png',
);

var begonia = PlantModel(
  name: 'Begonia',
  description: 'Planta de interior que se adapta bem a luz indireta e umidade.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.indoor, Category.flowering],
  imageUrl: 'assets/images/plants/begonia.png',
);

var celosia = PlantModel(
  name: 'Celosia',
  description:
      'Planta ornamental que precisa de sol direto e solo bem drenado.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/celosia.png',
);

var cyclamen = PlantModel(
  name: 'Cyclamen',
  description: 'Planta que prefere luz indireta e solo úmido.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.flowering, Category.indoor],
  imageUrl: 'assets/images/plants/cyclamen.png',
);

final List<PlantModel> allPlantsList = [
  aloeVera,
  bostonFern,
  cactus,
  orchid,
  rose,
  spiderPlant,
  mint,
  tomato,
  basil,
  zebraPlant,
  lavender,
  pothos,
  bougainvillea,
  philodendron,
  snakePlant,
  petunia,
  fiddleLeafFig,
  poinsettia,
  ginger,
  sunflower,
  chili,
  bamboo,
  lemonBalm,
  maranta,
  kalanchoe,
  begonia,
  celosia,
  cyclamen,
];

final List<PlantModel> myPlantsList = [
  aloeVera,
  bostonFern,
  orchid,
  mint,
  lavender,
  pothos,
  snakePlant,
  sunflower,
  celosia,
];

final List<PlantModel> myWateredPlantsList = [
  aloeVera,
  bostonFern,
  orchid,
  mint,
  lavender,
  pothos,
  snakePlant,
  sunflower,
  celosia,
];

final List<PlantModel> lastSearchList = [
  mint,
  philodendron,
  fiddleLeafFig,
  lemonBalm,
  cyclamen,
];
