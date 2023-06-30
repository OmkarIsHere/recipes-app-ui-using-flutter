import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes/models/recipe.dart';

class PopularRecipeList extends StatefulWidget {
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
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Expanded(
                   Container(
                    width: 75,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage('images/${recipes[index].recipeImage}'),
                      ),
                    ),
                  ),
                // ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      Text(
                        recipes[index].recipeName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '${recipes[index].recipeMaker}\'s recipe ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff9a9db0),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: recipes[index].endColor,
                      child: Text(
                        recipes[index].recipeMaker[0],
                        style: TextStyle(
                          color: recipes[index].startColor,
                        ),
                      ),
                    ),
                    // const Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('svg/ic_share.svg'),
                        const SizedBox(width: 5,),
                        SvgPicture.asset('svg/ic_save.svg'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
