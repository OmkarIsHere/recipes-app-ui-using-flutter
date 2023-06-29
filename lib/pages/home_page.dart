import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/pageview_recipe_list.dart';

class HomePage extends StatefulWidget {
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
          ],
        ),
      ),
    );
  }
}
