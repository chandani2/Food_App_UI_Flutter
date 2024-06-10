import 'package:flutter/material.dart';

import 'list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FoodPage(),
    );
  }
}

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey, // Set the background color for the entire page
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Card(
              elevation: 4, // Add elevation for a shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  AppBar(
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        // Add your back button action here
                      },
                    ),
                    title: const Text('Search Food'),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.account_circle),
                        onPressed: () {
                          // Add your profile icon action here
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Spice Food',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(
                                width:
                                    10), // Add spacing between search box and filter icon
                            IconButton(
                              icon: const Icon(Icons.filter_list),
                              onPressed: () {
                                // Add your filter
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                            height:
                                10), // Add spacing between search box and text
                        const Text(
                          'Found 80 results',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10), // Add spacing before the GridView
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemCount:
                            10, // Replace with the number of items you have
                        itemBuilder: (context, index) {
                          return const ListItem(
                            imageFood:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-2DUpDTVEMZgc1PyWGRCbVPj95tyle08ssQ&s',
                            name: 'Oni Sandwich',
                            description: 'Spicy fruit mixed',
                            calories: '6 Calories',
                            amount: '\$10',
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
