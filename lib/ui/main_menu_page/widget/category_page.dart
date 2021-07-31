import 'package:flutter/material.dart';
import 'package:fooody/change_notifiers/food_item_change_notifier.dart';
import 'package:fooody/models/food_item.dart';
import 'package:fooody/services/fake_api_service.dart';
import 'package:fooody/ui/main_menu_page/widget/food_item_tile.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  _navigateToFoodItem(BuildContext context, FoodItem foodItem) {
    //TODO 6 call function to set food item as current food item of change notifier

    //TODO 7 navigate to food item page
  }

  @override
  Widget build(BuildContext context) {
    // TODO 1
    final foodItemChangeNotifier = Provider.of<FoodItemChangeNotifier>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: GridView.builder(
        //TODO 4 assign foodlist length to gridview builder
        itemCount: foodItemChangeNotifier.currentMenuCategory.foodItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 250,
        ),
        itemBuilder: (context, index) {
          /*
            TODO 5 uncomment function to assign tapped food item to change notifier and Navigate
          */
          return GestureDetector(
            // onTap: () => _navigateToFoodItem(context, foodList[index]),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: FoodItemTile(
                foodItem:
                    foodItemChangeNotifier.currentMenuCategory.foodItems[index],
              ),
              width: 164,
            ),
          );
        },
      ),
    );
  }
}
