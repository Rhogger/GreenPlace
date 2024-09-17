import '../enums/categories.dart';
import '../enums/sunlight.dart';
import '../enums/umidity.dart';
import '../models/plant.dart';

var aloeVera = PlantModel(
  name: 'Aloe Vera',
  description:
      'Aloe Vera é uma planta suculenta popular por suas propriedades medicinais. Ela é conhecida por seu gel interno que ajuda a tratar queimaduras e feridas. Esta planta é de fácil cuidado e se adapta bem a diferentes condições de luz, mas prefere luz solar indireta. Ideal para ambientes internos e um toque de verde na decoração.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.succulents, Category.indoor],
  imageUrl: 'assets/images/plants/aloe_vera.png',
);

var bostonFern = PlantModel(
  name: 'Boston Fern',
  description:
      'O Boston Fern é uma planta de interior adorada por sua exuberância e folhagem verde. Ela prospera em ambientes úmidos e com pouca luz direta, tornando-a ideal para salas e banheiros. Suas folhas finas e delicadas adicionam um toque de elegância a qualquer espaço. Requer cuidados regulares com rega e umidade para se manter saudável.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.ferns, Category.indoor],
  imageUrl: 'assets/images/plants/boston_fern.png',
);

var cactus = PlantModel(
  name: 'Cactus',
  description:
      'Os cactos são plantas desérticas que se destacam pela resistência e facilidade de cuidado. Eles requerem pouca água e prosperam em condições de sol direto, tornando-os ideais para ambientes secos e ensolarados. Com uma variedade de formas e tamanhos, os cactos são perfeitos para adicionar um toque exótico à decoração.',
  umidity: Umidity.veryDry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.succulents, Category.outdoor],
  imageUrl: 'assets/images/plants/cactus.png',
);

var orchid = PlantModel(
  name: 'Orchid',
  description:
      'As orquídeas são plantas sofisticadas e exóticas, conhecidas por suas flores vibrantes e duradouras. Elas preferem luz indireta e ambientes úmidos, fazendo delas uma excelente escolha para salas de estar ou escritórios. Com uma ampla gama de cores e padrões, as orquídeas trazem um toque de elegância e beleza ao ambiente.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.flowering, Category.indoor],
  imageUrl: 'assets/images/plants/orchid.png',
);

var rose = PlantModel(
  name: 'Rose',
  description:
      'As rosas são uma das flores mais populares e amadas, conhecidas por suas cores vibrantes e fragrância. Elas prosperam sob luz solar direta e necessitam de solo bem drenado para crescerem saudáveis. Ideal para jardins e canteiros, as rosas trazem beleza e um aroma encantador para qualquer espaço ao ar livre.',
  umidity: Umidity.moist,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/rose.png',
);

var spiderPlant = PlantModel(
  name: 'Spider Plant',
  description:
      'A Spider Plant é uma planta resistente e de fácil cuidado, ideal para ambientes internos. Ela é conhecida por suas folhas longas e arqueadas e por suas pequenas “filhotes” que podem ser facilmente propagados. A Spider Plant é eficiente em purificar o ar e adiciona um toque verde e fresco ao seu ambiente.',
  umidity: Umidity.dry,
  sunlight: Sunlight.shade,
  categories: [Category.plant, Category.indoor],
  imageUrl: 'assets/images/plants/spider_plant.png',
);

var mint = PlantModel(
  name: 'Mint',
  description:
      'A hortelã é uma erva aromática popular na culinária e na medicina. Ela prefere sol indireto e solo úmido, e é conhecida por seu aroma refrescante e suas propriedades digestivas. Além de ser uma planta de fácil cultivo, a hortelã pode ser utilizada em uma variedade de receitas e bebidas.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.herbs, Category.indoor],
  imageUrl: 'assets/images/plants/mint.png',
);

var tomato = PlantModel(
  name: 'Tomato',
  description:
      'O tomate é uma planta de vegetais que precisa de muito sol para crescer e produzir frutos saudáveis. Ideal para jardins e vasos, o tomate exige solo bem drenado e rega regular. Suas frutas versáteis são usadas em uma variedade de pratos culinários e são uma adição popular a qualquer horta caseira.',
  umidity: Umidity.wet,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.vegetables, Category.outdoor],
  imageUrl: 'assets/images/plants/tomato.png',
);

var basil = PlantModel(
  name: 'Basil',
  description:
      'O manjericão é uma erva culinária que adora luz solar indireta e solo bem drenado. Com suas folhas aromáticas e saborosas, é um ingrediente essencial em muitas receitas de cozinha. O manjericão é fácil de cultivar e pode ser mantido em vasos dentro de casa ou no jardim, trazendo frescor e sabor às suas refeições.',
  umidity: Umidity.dry,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.herbs, Category.indoor],
  imageUrl: 'assets/images/plants/basil.png',
);

var zebraPlant = PlantModel(
  name: 'Zebra Plant',
  description:
      'A Zebra Plant é uma planta tropical conhecida por suas folhas vistosas com padrões de listras brancas e verdes. Ela prospera em ambientes com luz indireta e exige um nível de umidade constante para se manter saudável. Ideal para interiores, adiciona um toque de exótico e elegância ao ambiente. Requer cuidados regulares para manter a umidade adequada e garantir o crescimento contínuo.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.tropical, Category.indoor],
  imageUrl: 'assets/images/plants/zebra_plant.png',
);

var lavender = PlantModel(
  name: 'Lavender',
  description:
      'Lavender é uma planta aromática apreciada por seu perfume e suas flores roxas. Ela prefere exposição direta ao sol e um solo bem drenado e seco. Ideal para jardins e vasos ao ar livre, a lavanda também é conhecida por suas propriedades calmantes e relaxantes. Além de embelezar o ambiente, é excelente para quem busca uma planta de baixa manutenção.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.herbs, Category.outdoor],
  imageUrl: 'assets/images/plants/lavender.png',
);

var pothos = PlantModel(
  name: 'Pothos',
  description:
      'O Pothos é uma planta de interior extremamente fácil de cuidar, conhecida por sua capacidade de prosperar em condições de pouca luz. Suas folhas verdes e vistosas caem em cascata, criando um visual luxuriante e atraente. Ideal para ambientes internos, o Pothos também ajuda a purificar o ar e é perfeito para quem busca uma planta resistente e de baixa manutenção.',
  umidity: Umidity.dry,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.indoor],
  imageUrl: 'assets/images/plants/pothos.png',
);

var bougainvillea = PlantModel(
  name: 'Bougainvillea',
  description:
      'Bougainvillea é uma planta trepadeira vibrante, conhecida por suas flores coloridas que exigem sol direto para florescer. Ideal para jardins e áreas externas, ela adiciona um toque exuberante e vibrante a qualquer espaço. Requer solo bem drenado e uma exposição completa ao sol para um crescimento saudável e uma abundância de flores.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.vines, Category.outdoor],
  imageUrl: 'assets/images/plants/bougainvillea.png',
);

var philodendron = PlantModel(
  name: 'Philodendron',
  description:
      'O Philodendron é uma planta tropical que se adapta bem a ambientes internos com luz indireta. Conhecida por suas folhas grandes e exuberantes, a planta adiciona um toque de verde tropical ao ambiente. É fácil de cuidar e resistente, sendo ideal para quem deseja uma planta que cresça bem em interiores e exija pouca manutenção.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.tropical, Category.indoor],
  imageUrl: 'assets/images/plants/philodendron.png',
);

var snakePlant = PlantModel(
  name: 'Snake Plant',
  description:
      'A Snake Plant é uma das plantas mais resistentes e de baixa manutenção, conhecida por sua capacidade de tolerar pouca luz e pouca água. Suas folhas rígidas e eretas adicionam uma textura interessante ao ambiente. Ideal para interiores, a Snake Plant também é eficiente na purificação do ar, tornando-a uma escolha popular para qualquer espaço.',
  umidity: Umidity.veryDry,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.indoor],
  imageUrl: 'assets/images/plants/snake_plant.png',
);

var petunia = PlantModel(
  name: 'Petunia',
  description:
      'As Petúnias são plantas de exterior adoradas por suas flores coloridas e vistosas. Elas prosperam sob sol direto e requerem solo bem drenado. Perfeitas para jardins e vasos ao ar livre, as Petúnias trazem uma explosão de cor e frescor ao seu espaço exterior. São ideais para quem busca adicionar beleza e vivacidade ao ambiente.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/petunia.png',
);

var fiddleLeafFig = PlantModel(
  name: 'Fiddle Leaf Fig',
  description:
      'O Fiddle Leaf Fig é uma planta tropical imponente com folhas grandes e brilhantes. Ela prefere luz indireta e é ideal para ambientes internos, oferecendo um visual moderno e elegante. Embora exija alguns cuidados especiais, como rega moderada e umidade adequada, sua aparência exuberante compensa o esforço, adicionando um elemento de sofisticação ao espaço.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.tropical, Category.indoor],
  imageUrl: 'assets/images/plants/fiddle_leaf_fig.png',
);

var poinsettia = PlantModel(
  name: 'Poinsettia',
  description:
      'A Poinsettia é uma planta ornamental famosa por suas flores vibrantes que surgem principalmente no inverno. Ela requer luz indireta para manter suas folhas e flores saudáveis. Ideal para ambientes internos durante a temporada de festas, esta planta adiciona cor e elegância ao ambiente. É importante manter a umidade constante e evitar a luz solar direta para preservar sua beleza.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.flowering, Category.indoor],
  imageUrl: 'assets/images/plants/poinsettia.png',
);

var ginger = PlantModel(
  name: 'Ginger',
  description:
      'A Ginger é uma planta tropical comestível que se destaca por suas raízes aromáticas usadas na culinária. Ela precisa de luz indireta e um solo constantemente úmido para prosperar. Ideal para quem gosta de cultivar temperos frescos, a Ginger adiciona um toque exótico aos pratos. Além disso, suas folhas largas criam um ambiente tropical em qualquer espaço.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.tropical, Category.herbs],
  imageUrl: 'assets/images/plants/ginger.png',
);

var sunflower = PlantModel(
  name: 'Sunflower',
  description:
      'Os Sunflowers são conhecidos por suas grandes flores amarelas que seguem a luz solar. Eles requerem exposição direta ao sol e um solo bem drenado para crescerem saudáveis e florescerem. Ideal para jardins e áreas externas, os Sunflowers trazem uma sensação de alegria e calor ao ambiente. São fáceis de cultivar e mantêm a beleza por bastante tempo.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/sunflower.png',
);

var chili = PlantModel(
  name: 'Chili Pepper',
  description:
      'O Chili Pepper é uma planta de vegetais que adora sol direto para produzir frutos picantes e saborosos. Ideal para jardins ao ar livre, ele requer um solo bem drenado e muita luz solar para um crescimento ideal. Além de adicionar um toque picante à culinária, os Chili Peppers também trazem uma explosão de cor ao seu jardim. A colheita de seus frutos pode ser feita durante toda a temporada.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.vegetables, Category.outdoor],
  imageUrl: 'assets/images/plants/chili_pepper.png',
);

var bamboo = PlantModel(
  name: 'Bamboo',
  description:
      'O Bamboo é uma planta de crescimento rápido que pode ser cultivada tanto em ambientes internos quanto externos. Suas hastes elegantes adicionam um toque de exotismo e são ideais para criar um ambiente tranquilo e relaxante. O Bamboo se adapta bem a várias condições de luz e exige um solo úmido, sendo perfeito para quem deseja uma planta de baixo cuidado que também é funcional e decorativa.',
  umidity: Umidity.moist,
  sunlight: Sunlight.partialShade,
  categories: [Category.plant, Category.indoor, Category.outdoor],
  imageUrl: 'assets/images/plants/bamboo.png',
);

var lemonBalm = PlantModel(
  name: 'Lemon Balm',
  description:
      'O Lemon Balm é uma erva aromática conhecida por seu aroma cítrico refrescante. Prefere luz solar indireta e um solo bem drenado para se desenvolver adequadamente. Ideal para cultivo interno, a planta pode ser usada para preparar chás e temperos, além de trazer um toque de frescor ao ambiente. É fácil de cuidar e adiciona um aroma agradável ao espaço.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.herbs, Category.indoor],
  imageUrl: 'assets/images/plants/lemon_balm.png',
);

var maranta = PlantModel(
  name: 'Maranta',
  description:
      'A Maranta, também conhecida como planta oração, é ideal para ambientes internos e adora luz indireta e alta umidade. Suas folhas com padrões únicos e cores vibrantes são um destaque visual. A planta é perfeita para quem deseja um toque tropical em casa e é relativamente fácil de cuidar, requerendo apenas um ambiente úmido e um pouco de atenção.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.indoor, Category.tropical],
  imageUrl: 'assets/images/plants/maranta.png',
);

var kalanchoe = PlantModel(
  name: 'Kalanchoe',
  description:
      'O Kalanchoe é uma suculenta que se destaca por suas flores coloridas e sua resistência a condições secas. Prefere luz solar direta e requer pouca água para prosperar. Ideal para interiores, essa planta oferece uma explosão de cor com um cuidado mínimo. É perfeita para quem deseja uma planta atraente e de fácil manutenção.',
  umidity: Umidity.veryDry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.succulents, Category.indoor],
  imageUrl: 'assets/images/plants/kalanchoe.png',
);

var begonia = PlantModel(
  name: 'Begonia',
  description:
      'A Begonia é uma planta de interior que se adapta bem à luz indireta e ambientes úmidos. Conhecida por suas flores coloridas e folhagem variada, ela adiciona um charme especial aos espaços internos. A planta é relativamente fácil de cuidar, proporcionando beleza e cor ao seu ambiente com manutenção mínima.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.indoor, Category.flowering],
  imageUrl: 'assets/images/plants/begonia.png',
);

var celosia = PlantModel(
  name: 'Celosia',
  description:
      'A Celosia é uma planta ornamental vibrante que requer sol direto e solo bem drenado para crescer. Suas flores com texturas únicas e cores intensas adicionam um toque especial ao jardim ou espaço externo. É ideal para quem busca uma planta de baixa manutenção, que traz cor e vida ao ambiente exterior.',
  umidity: Umidity.dry,
  sunlight: Sunlight.fullSun,
  categories: [Category.plant, Category.flowering, Category.outdoor],
  imageUrl: 'assets/images/plants/celosia.png',
);

var cyclamen = PlantModel(
  name: 'Cyclamen',
  description:
      'O Cyclamen é uma planta que prefere luz indireta e solo úmido. Conhecido por suas flores delicadas e coloridas, é ideal para ambientes internos. A planta adiciona um toque de elegância e charme, sendo perfeita para quem deseja uma planta que ofereça beleza e um toque de sofisticação ao espaço.',
  umidity: Umidity.moist,
  sunlight: Sunlight.indirectLight,
  categories: [Category.plant, Category.flowering, Category.indoor],
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
