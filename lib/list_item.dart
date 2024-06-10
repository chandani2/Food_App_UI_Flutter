import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String imageFood;
  final String name;
  final String description;
  final String calories;
  final String amount;

  const ListItem({
    required this.imageFood,
    required this.name,
    required this.description,
    required this.calories,
    required this.amount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 1000,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // Center content horizontally
          children: [
            Image.network(
              imageFood,
              fit: BoxFit.cover,
              height: 65,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center text vertically within the padding
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Center text horizontally within the padding
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    calories,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.orange),
                  ),
                  Text(
                    amount,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
