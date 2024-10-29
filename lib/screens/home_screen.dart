import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.grey],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Classify transaction',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Classify this transaction into a particular category',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              _buildCategoryGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildCategoryGrid() {
    final categories = [
      {'icon': Icons.apps, 'label': 'General', 'color': Colors.blue},
      {'icon': Icons.directions_bus, 'label': 'Transport', 'color': Colors.purple},
      {'icon': Icons.shopping_bag, 'label': 'Shopping', 'color': Colors.pink},
      {'icon': Icons.receipt, 'label': 'Bills', 'color': Colors.orange},
      {'icon': Icons.movie, 'label': 'Entertainment', 'color': Colors.blueAccent},
      {'icon': Icons.local_grocery_store, 'label': 'Grocery', 'color': Colors.green},
    ];

    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return _buildCategoryCard(categories[index]);
        },
      ),
    );
  }

  Widget _buildCategoryCard(Map<String, dynamic> category) {
  return GestureDetector(
    onTap: () {
      // Add your tap functionality here
      print("Tapped on ${category['label']}");
    },
    child: LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * 0.9,  // Adjust width relative to available space
          height: constraints.maxWidth * 0.6, // Maintain aspect ratio for consistency
          decoration: BoxDecoration(
            color: const Color.fromARGB(227, 255, 255, 255),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                category['icon'],
                color: category['color'],
                size: 40,
              ),
              const SizedBox(height: 8),
              Text(
                category['label'],
                style: TextStyle(
                  color: category['color'],
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}