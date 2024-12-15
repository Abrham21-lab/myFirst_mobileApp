import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Assuming this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';
class Samsung extends StatelessWidget {
  const Samsung({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> samsungConfigurations = [
      PhoneConfiguration(
        'Samsung Galaxy S23 Ultra',
        '256 GB', // Storage
        '100,000 ETB',  // Price
        '5000 mA',    // Battery
        '10 MP', // Camera
        'Android 13, One UI 5.1', // Other features
      ),
      PhoneConfiguration(
        'Samsung Galaxy S23',
        '128 GB', // Storage
        '80,000 ETB', // Price
        '3900 mA',    // Battery
        '50 MP', // Camera
        'Android 13, One UI 5.1', // Other features
      ),
      PhoneConfiguration(
        'Samsung Galaxy A54 5G',
        '128 GB', // Storage
        '25,000 ETB',  // Price
        '5000 mA',    // Battery
        '12 MP', // Camera
        'Android 13, One UI 5.1', // Other features
      ),
      PhoneConfiguration(
        'Samsung Galaxy A34 5G',
        '128 GB', // Storage
        '20,000 ETB',  // Price
        '5000 mA',    // Battery
        '8 MP', // Camera
        'Android 13, One UI 5.1', // Other features
      ),
      PhoneConfiguration(
        'Samsung Galaxy M33 5G',
        '128 GB', // Storage
        '15,000 ETB',  // Price
        '6000 mA',    // Battery
        '50 MP', // Camera
        'Android 12, One UI 4.1', // Other features
      ),
      PhoneConfiguration(
        'Samsung Galaxy A14',
        '128 GB', // Storage
        '10,000 ETB',  // Price
        '6000 mA',    // Battery
        '50 MP', // Camera
        'Android 13, One UI Core 5', // Other features
      ),
      PhoneConfiguration(
        'Samsung Galaxy Z Fold 5',
        '512 GB', // Storage
        '130,000 ETB',  // Price
        '4400 mA',    // Battery
        '50 MP', // Camera
        'Android 13, One UI 5.1.1', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50], // Background color for Samsung Page
      appBar: AppBar(
        title: const Text('Samsung Page'),
        backgroundColor: Colors.green, // AppBar color for Samsung Page
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the smart Samsung Page !',
              style: TextStyle(
                color: Colors.black, // Font color for the text on Samsung Page
                fontSize: 24,
              ),
            ),
            SizedBox(height: 50), // Adds spacing before the image
            Image.network(
              'https://th.bing.com/th/id/R.1c3085e228eacfd5f8bdd997eca5d27b?rik=CXIba%2bdVeZ1GmA&pid=ImgRaw&r=0', // Samsung image
              width: 200, // Image width
              height: 200, // Image height
              fit: BoxFit.cover, // Make the image cover the space
              errorBuilder: (context, error, stackTrace) {
                return Text('Image could not be loaded'); // Error handling
              },
            ),
            SizedBox(height: 50), // Spacing before the button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'Samsung',
                      configurations: samsungConfigurations,
                    ),
                  ),
                );
              },
              child: const Text('View Configurations'), // Button text
            ),
          ],
        ),
      ),
    );
  }
}
