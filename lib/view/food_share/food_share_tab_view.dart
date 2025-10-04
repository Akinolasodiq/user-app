import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodShareTabView extends StatelessWidget {
  const FoodShareTabView({super.key});

  @override
  Widget build(BuildContext context) {
       final foodShareContainerList = [
      {
        "icon": Icons.groups_2_outlined,
        "iconColor": const Color(0xFF16A34A),
        "iconBackgroundColor": const Color(0xFFDCFCE7),
        "title": "Create Group Order",
        "subtitle": "Start a group with friends or open a random group."
      },
      {
        "icon": Icons.person_pin_circle_outlined,
        "iconColor": const Color(0xFFEA580C),
        "iconBackgroundColor": const Color(0xFFFFEDD5),
        "title": "Random Search",
        "subtitle":
            "Find nearby people who created a random group to order together."
      }
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: foodShareContainerList.length,
          separatorBuilder: (_, __) => const SizedBox(height: 24),
          itemBuilder: (context, index) {
            final fSCObj = foodShareContainerList[index];
            return buildCard(
              icon: fSCObj["icon"] as IconData,
              iconColor: fSCObj["iconColor"] as Color,
              iconBackgroundColor: fSCObj["iconBackgroundColor"] as Color,
              title: fSCObj["title"].toString(),
              subtitle: fSCObj["subtitle"].toString(),
            );
          },
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFE0F2F1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Why FoodShare?",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: TColor.primaryText),
                ),
                const SizedBox(height: 12),
                buildInfoRow(Icons.fire_truck_outlined, "Save on delivery charges"),
                buildInfoRow(Icons.local_offer_outlined,
                    "Bigger orders mean more discounts"),
                buildInfoRow(
                    Icons.payments_outlined, "Order together, pay separately"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildCard({
  required IconData icon,
  required Color iconColor,
  required Color iconBackgroundColor,
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  borderRadius: BorderRadius.circular(24)),
              child: Icon(
                icon,
                color: iconColor,
                size: 36,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: TColor.primaryText,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: TColor.secondaryText,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget buildInfoRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        Icon(
          icon,
          size: 24,
          color: const Color(0xFF00BFA5),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style:
              GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF757575)),
        ),
      ],
    ),
  );
}
