import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/view/food_share/food_share_tab_view.dart';

class FoodShareView extends StatefulWidget {
  const FoodShareView({super.key});

  @override
  State<FoodShareView> createState() => _FoodShareView();
}

class _FoodShareView extends State<FoodShareView> with SingleTickerProviderStateMixin {
  List<Widget> get tabOptionView => [
        const FoodShareTabView(),
        const Center(
          child: Text(
            "ShareBasket",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: TColor.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: SegmentedTabControl(
                  barDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: TColor.textfield,
                  ),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  height: 50,
                  tabTextColor: TColor.secondaryText,
                  selectedTabTextColor: Colors.white,
                  squeezeIntensity: 2,
                  indicatorPadding: const EdgeInsets.all(4),
                  indicatorDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  tabs: [
                    SegmentTab(
                      label: 'FoodShare',
                      color: TColor.foodShare,
                    ),
                    const SegmentTab(
                      label: 'ShareBasket',
                      gradient: TColor.groceryTabGradient,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: tabOptionView,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
