
import 'package:flutter/material.dart';

class DietModel {
  final String name;
  final String iconPath;
  final Color boxColor;
  final String level; 
  final String duration;
  final String calories;
  DietModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
    required this.level,
    required this.duration,  
    required this.calories, 
  });
  
  static List<DietModel> getDietModel() {
    List<DietModel> diets = [];

    diets.add(DietModel(
      name: 'Honey Pancake',
      level: 'easy',  
      duration: '30 min', 
      calories: '200 cal',  
      iconPath: 'assets/icons/salad.svg',
      boxColor: Color.fromARGB(255, 180, 193, 255),
    ));
    diets.add(DietModel(
      name: 'plate',
      level: 'easy', 
      duration: '30 min', 
      calories: '300 cal',
      iconPath: 'assets/icons/plate.svg',
      boxColor: Color.fromARGB(255, 248, 209, 243),
    ));
    diets.add(DietModel(
      name: 'PanCakes',
      level:  'medium',
      duration: '45 min', 
      calories: '400 cal',  
      iconPath: 'assets/icons/pancakes.svg',
      boxColor: Color.fromARGB(255, 180, 193, 255),
    ));
    diets.add(DietModel(
      name: 'Pie',
      level: 'hard',  
      duration: '60 min', 
      calories: '500 cal',   
      iconPath: 'assets/icons/pie.svg',
      boxColor: Color.fromARGB(255, 248, 209, 243),
    ));
    diets.add(DietModel(
      name: 'sandwich',
      level: 'hard',
      duration: '60 min',
      calories: '600 cal',     
      iconPath: 'assets/icons/sandwich.svg',
      boxColor: Color.fromARGB(255, 180, 193, 255),
    ));

    return diets;
  }  
  
}
