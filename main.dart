import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sonny's Bakery",
            style: GoogleFonts.sail(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          foregroundColor: Color(0xFFF54927),
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Color(0xFFFACEC8),
              child: Text(
                'Freshly Baked Everyday for Your Mornings~',
                style: GoogleFonts.sail(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            menuCard(
              'https://sarahsvegankitchen.com/wp-content/uploads/2024/05/Vegan-Croissants-1.jpg',
              'Butter Croissant',
              'Flaky and Buttery Croissant',
              'RM 10.00',
            ),
            menuCard(
              'https://zhangcatherine.com/wp-content/uploads/2022/03/choc-croissan.jpg',
              'Pain Au Chocolat',
              'Flaky skin filled with Rich Chocolate',
              'RM 12.00',
            ),
            menuCard(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbN9K0rK5mrtp2FDfcSXO6Eum_GhmzkeAgqzyC2VoHCDddaDiWHW_DmZtbQxi56-czeOoR_cD87DgrCebXDSlDmrpk1wkSR49D7qmbDKo&s=10',
              'English Muffins',
              'Soft and chewy baked muffins',
              'RM 8.00',
            ),
            menuCard(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuffNHbLWiZn9mZsf9Su7_6MqmIz5DBM9q7umi45mQFRgHahJcHfXJUKA&s=10',
              'French Baguette',
              'Classic French bread with a flaky crust',
              'RM 7.50',
            ),
          ], //children
        ),
      ),
    );
  }

  Widget menuCard(String image, String name, String description, String price) {
    return Card(
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.playfair(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(description, style: GoogleFonts.playfair(fontSize: 14)),
                Text(
                  price,
                  style: GoogleFonts.playfair(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
