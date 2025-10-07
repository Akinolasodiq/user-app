import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class ONPLView extends StatelessWidget {
  const ONPLView({super.key});

  @override
  Widget build(BuildContext context) {
    double total = 3000;
    double spent = 1250;
    double payLaterLimit = 200;
<<<<<<< HEAD
    double balance = total - spent;
=======
    double remaining = total - spent;
>>>>>>> 1b62526 (Reconnected project and updated code after system reset)

    // ✅ Progress width ratio
    double progress = (spent / total).clamp(0.0, 1.0);

    List extraFeaturesList = [
      {
        "image": "assets/img/pay_later_benefits_img.png",
        "title": "Pay Later Benefits"
      },
      {"image": "assets/img/usage_history_img.png", "title": "Usage History"},
      {
        "image": "assets/img/top_food_offer_img.png",
        "title": "Top Food Offers"
      },
    ];

    return Scaffold(
      backgroundColor: TColor.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined, color: TColor.primaryText),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Order now Pay later",
          style: GoogleFonts.manrope(
            color: TColor.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage("assets/img/onpl_banner.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "FOOD",
              style: GoogleFonts.manrope(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: TColor.primaryText,
              ),
            ),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF38E07B),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Explore",
                  style: GoogleFonts.manrope(
                    color: TColor.primaryText,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 48),
            Center(
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.manrope(
                    color: const Color(0xFF51946C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    const TextSpan(text: "Spend up to "),
                    TextSpan(
                      text: "₹$total",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    const TextSpan(text: " in total to unlock "),
                    TextSpan(
                      text: "₹$payLaterLimit",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    const TextSpan(text: " Pay Later limit"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD1E6D9),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          height: 8,
                          width: constraints.maxWidth * progress,
                          decoration: BoxDecoration(
                            color: const Color(0xFF38E07B),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
<<<<<<< HEAD
                        "₹$spent",
=======
                        "Spent: ₹$spent",
>>>>>>> 1b62526 (Reconnected project and updated code after system reset)
                        style: GoogleFonts.manrope(
                          color: TColor.primaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
<<<<<<< HEAD
                        "₹$balance",
=======
                        "Remaining: ₹$remaining",
>>>>>>> 1b62526 (Reconnected project and updated code after system reset)
                        style: GoogleFonts.manrope(
                          color: TColor.primaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Extra Features",
              style: GoogleFonts.manrope(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: TColor.primaryText,
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 200,
              child: ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemCount: extraFeaturesList.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final eFObj = extraFeaturesList[index];
                  return _featureCard(
                    image: eFObj["image"],
                    title: eFObj["title"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _featureCard({required String image, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w500,
            color: TColor.primaryText,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
