import 'package:flutter/material.dart'; 

class CategoryModel {
  final String name;
  final String iconPath;
  final Color boxColor; 

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor, 
  });

  
static List<CategoryModel> getCategorymodel() { 
  List<CategoryModel> categories = [];  


  categories.add(CategoryModel(
    name: 'Salad',
    iconPath: 'assets/icons/salad.svg', 
    boxColor:  Color.fromARGB(255, 180, 193, 255) 
  )); 
  categories.add(CategoryModel(
    name: 'plate',
    iconPath: 'assets/icons/plate.svg',
    boxColor: Color.fromARGB(255, 248, 209, 243) 
  )); 
  categories.add(CategoryModel(
    name: 'PanCakes',
    iconPath: 'assets/icons/pancakes.svg',
    boxColor: Color.fromARGB(255, 180, 193, 255) 
  )); 
  categories.add(CategoryModel(
    name: 'Pie',
    iconPath: 'assets/icons/pie.svg',
    boxColor: Color.fromARGB(255, 248, 209, 243) 
  )); 
  categories.add(CategoryModel(
    name: 'sandwich',
    iconPath: 'assets/icons/sandwich.svg',
    boxColor: Color.fromARGB(255, 180, 193, 255) 
  )); 
  
  return categories; 
}

} 
