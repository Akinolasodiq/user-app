import 'package:flutter/material.dart';
import 'package:food_delivery/view/more/Restaurant_list_view.dart';
import '../../common/color_extension.dart';

class ChooseRestaurant extends StatefulWidget {
  const ChooseRestaurant({super.key});

  @override
  State<ChooseRestaurant> createState() => _ChooseRestaurantState();
}

class _ChooseRestaurantState extends State<ChooseRestaurant> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Container(
      padding: const EdgeInsets.all(25),
      width: media.width,
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: TColor.primaryText.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Close Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: TColor.textfield,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close, color: TColor.primaryText, size: 20),
                ),
              )
            ],
          ),

          const SizedBox(height: 20),

          // Title
          Text(
            "Choose Restaurant",
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Select where you want to order from",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 30),

          // Button
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: TColor.primaryGradient),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: TColor.primary.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RestaurantListView()));
              },
              icon: const Icon(Icons.restaurant, color: Colors.white, size: 22),
              label: const Text(
                "Choose Restaurant",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
