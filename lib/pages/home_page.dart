import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/bottom_navigation.dart';
import '../components/pageview_recipe_list.dart';
import '../components/popular_recipe_list.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recipes',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0E0E2D),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    child: SvgPicture.asset('svg/ic_menu.svg'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const PageViewRecipeList(),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,),
              child: Row(
                children: [
                  SvgPicture.asset('svg/ic_popular.svg'),
                  const SizedBox(width: 7,),
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFF9AE89),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const PopularRecipeList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
