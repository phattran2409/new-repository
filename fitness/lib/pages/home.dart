
import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_model.dart';
import 'package:fitness/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categoies = [];
  List<DietModel> diets = [];
  List<PopularModel> populars = [];
  void _getCategories() {
    categoies = CategoryModel.getCategorymodel();
  }

  void _getDiets() {
    diets = DietModel.getDietModel();
  }

  void _getPopulars() {
    populars = PopularModel.getPopularModel();
  }

  @override
  void initState() {
    super.initState();
    _getCategories();
    _getDiets();
    _getPopulars();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          WidgetSearch(),
          SizedBox(height: 40),
          CategorySection(categories: categoies),
          SizedBox(height: 40),
          DietSection(diets: diets),
          SizedBox(height: 40),
          PopularSection(populars: populars),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Break fast',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,

      leading: GestureDetector(
        onTap: () {
          // Handle the tap event here
          print('Back button tapped!');
        },

        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          alignment: Alignment.center,
          width: 20,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/ArrowLeft.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Handle the tap event here
            print('Menu button tapped!');
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class DietSection extends StatelessWidget {
  const DietSection({super.key, required this.diets});

  final List<DietModel> diets;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: const Text(
            'Recomandation for Diet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: diets.length,
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => const SizedBox(width: 35),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                width: 200,
                height: 500,
                decoration: BoxDecoration(
                  color: diets[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: diets[index].boxColor,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          diets[index].iconPath,
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          diets[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 75, 75, 75),
                          ),
                        ),
                        Text(
                          '${diets[index].level} | ${diets[index].duration} | ${diets[index].calories}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 75, 75, 75),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: diets[index].boxColor,
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 3, 107, 192),
                            Color.fromARGB(255, 102, 167, 220),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),

                      child: const Center(
                        child: Text(
                          'View',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategorySection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: const Text(
            'Category',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => const SizedBox(width: 35),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          categories[index].iconPath,
                          height: 20,
                          width: 20,
                          color: categories[index].boxColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 75, 75, 75),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class WidgetSearch extends StatelessWidget {
  const WidgetSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 46, 47, 47),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 224, 224, 224),
                blurRadius: 5.0,
                spreadRadius: 1.0,
                offset: Offset(0.0, 3.0), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: const Color(0xffF7F8F8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Container(
                width: 100,
                margin: const EdgeInsets.all(4),
                padding: const EdgeInsets.all(4),
                alignment: Alignment.center,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const VerticalDivider(
                        color: Color.fromARGB(255, 218, 221, 221),
                        thickness: 1,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/icons/fillters.svg',
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PopularSection extends StatelessWidget {
  const PopularSection({super.key, required this.populars});
  final List<PopularModel> populars;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Text(
              'Popular',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 250,
            child: ListView.builder(
              itemCount: populars.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 141, 224, 224),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          SizedBox(width: 10),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 162, 228, 228),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                populars[index].iconPath,
                                height: 20,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 200,
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      populars[index].name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 75, 75, 75),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      '${populars[index].level} | ${populars[index].duration} | ${populars[index].calories}',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 75, 75, 75),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
