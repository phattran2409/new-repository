
class PopularModel {
  String name; 
  String iconPath;  
  String level;  
  String duration; 
  String calories; 
  bool isSelected;  
  
  PopularModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    this.isSelected = false,  
  });

  static List<PopularModel> getPopularModel() {
    List<PopularModel> populars = [];

    populars.add(PopularModel(
      name: 'Honey Pancake',
      level: 'easy',
      duration: '30 min',
      calories: '200 cal',
      iconPath: 'assets/icons/salad.svg',
      isSelected: true,
    ));
    populars.add(PopularModel(
      name: 'plate',
      level: 'easy',
      duration: '30 min',
      calories: '300 cal',
      iconPath: 'assets/icons/plate.svg',
    ));
    populars.add(PopularModel(
      name: 'PanCakes',
      level: 'medium',
      duration: '45 min',
      calories: '400 cal',
      iconPath: 'assets/icons/pancakes.svg',
    ));
    populars.add(PopularModel(
      name: 'Pie',
      level: 'hard',
      duration: '60 min',
      calories: '500 cal',
      iconPath: 'assets/icons/pie.svg',
    ));
    populars.add(PopularModel(
      name: 'sandwich',
      level: 'hard',
      duration: '60 min',
      calories: '600 cal',
      iconPath: 'assets/icons/sandwich.svg',
    ));

    return populars;  
  }
}
