import 'package:flutter/material.dart';
import 'package:recipes/models/recipe.dart';

class PopularRecipeList extends StatefulWidget{
  const PopularRecipeList({super.key});

  @override
  State<StatefulWidget> createState() => _PopularRecipeListState();
  }

class _PopularRecipeListState extends State<PopularRecipeList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return Container(
            height: 100,
            margin:const EdgeInsets.only(bottom: 16),
            padding:const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent,
            ),
            child: Row(
              children: [
                
              ],
            ),
          );
        },
      ),
    );
  }

}


