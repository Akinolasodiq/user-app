import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';

class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView>
    with SingleTickerProviderStateMixin {
  double spending = 3000;
  double limit = 200;
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        progress = (limit / spending).clamp(0.0, 1.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Order Now,\nPay Later",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 30),

          
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: TColor.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: TColor.primaryText.withOpacity(0.20),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatBox(
                          icon: Icons.room_service,
                          title: "Total Spending",
                          value: "₹$spending",),
                      _buildStatBox(
                          icon: Icons.credit_card,
                          title: "Pay-later Limit",
                          value: "₹$limit",),
                    ],
                  ),
                  const SizedBox(height: 20),

                 
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: progress),
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOut,
                    builder: (context, value, _) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: LinearProgressIndicator(
                          value: value,
                          minHeight: 12,
                          backgroundColor: TColor.placeholder,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            TColor.secondary,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 12),

                  
                  Text(
                    "Offer Available: ${(progress * 100).toStringAsFixed(1)}%",
                    style: TextStyle(
                      color: TColor.secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
        
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
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Order Now, Pay Later",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 20),

           
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline,
                    size: 20, color: TColor.secondaryText, ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Pay-later orders are added to your next bill. Spend more to unlock higher limits!",
                    style: TextStyle(
                      fontSize: 13,
                      color: TColor.secondaryText,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatBox({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: TColor.secondary.withOpacity(0.1),
          child: Icon(icon, size: 32, color: TColor.secondary),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: TColor.secondaryText,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
