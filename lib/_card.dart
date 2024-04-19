import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  CustomCard(
      {required this.title, required this.subtitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Adjust the elevation as needed
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10), // Adjust the border radius as needed
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              imageUrl,
              width: double
                  .infinity, // Make the image take up the full width of the card
              height: 200, // Adjust the height as needed
              fit: BoxFit.cover, // Ensure the image covers the entire area
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Adjust padding as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18, // Adjust font size as needed
                  ),
                ),
                SizedBox(height: 8), // Add spacing between title and subtitle
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16, // Adjust font size as needed
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage:
// CustomCard(
//   title: 'Title',
//   subtitle: 'Subtitle',
//   imageUrl: 'https://example.com/image.jpg',
// );
