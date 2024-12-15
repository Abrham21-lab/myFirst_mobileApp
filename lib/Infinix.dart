import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';  // Assuming you want to navigate to ConfigurationPage
import 'context_menu.dart';  // Import the context_menu.dart file that defines ContextMenuWidget
class Infinix extends StatelessWidget {
  const Infinix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> infinixConfigurations = [
      PhoneConfiguration(
        'Infinix Note 12',
        '128 GB',
        '11,000 ETB',
        '5000 mA',
        '16 MP',
        'Android 12 with XOS 10.6',
      ),
      PhoneConfiguration(
        'Infinix Smart 7',
        '64 GB',
        '5400 ETB',
        '5000 mA',
        '13 MP',
        'Android 12',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('Infinix Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the smart Infinix Page!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),

            // Display the image from the network
            Image.network(
              'https://toptech.pk/wp-content/uploads/2022/01/Infinix-Hot-10-768x820.jpg',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Image could not be loaded.');
              },
            ),

            const SizedBox(height: 30),

            // Button to navigate to the phone configuration page
            ElevatedButton(
              onPressed: () {
                // Navigate to the configuration page, passing the list of Infinix configurations
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'Infinix',
                      configurations: infinixConfigurations, // Pass the entire list of phone configurations
                    ),
                  ),
                );
              },
              child: const Text('View Infinix Configurations'),
            ),
          ],
        ),
      ),
    );
  }
}
