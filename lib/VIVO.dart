import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Assuming this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';
class VIVO extends StatelessWidget {
  const VIVO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> VIVOConfigurations = [
      PhoneConfiguration(
        'Vivo X90 Pro',
        '256 GB', // Storage
        '80,000 ETB',  // Price
        '5000 mA',    // Battery
        '50 MP', // Camera
        'Android 13, Funtouch OS 13', // Other features
      ),
      PhoneConfiguration(
        'Vivo V27 Pro',
        '128 GB', // Storage
        '45,000 ETB',  // Price
        '4600 mA',    // Battery
        '64 MP', // Camera
        'Android 13, Funtouch OS 13', // Other features
      ),
      PhoneConfiguration(
        'Vivo Y100',
        '128 GB', // Storage
        '20,000 ETB',  // Price
        '4500 mA',    // Battery
        '50 MP', // Camera
        'Android 13, Funtouch OS 13', // Other features
      ),
      PhoneConfiguration(
        'Vivo Y35',
        '128 GB', // Storage
        '15,000 ETB',  // Price
        '5000 mA',    // Battery
        '50 MP', // Camera
        'Android 13, Funtouch OS 12', // Other features
      ),
      PhoneConfiguration(
        'Vivo V23 5G',
        '128 GB', // Storage
        '30,000 ETB',  // Price
        '4200 mA',    // Battery
        '50 MP', // Camera
        'Android 12, Funtouch OS 12', // Other features
      ),
      PhoneConfiguration(
        'Vivo T1 5G',
        '128 GB', // Storage
        '25,000 ETB',  // Price
        '5000 mA',    // Battery
        '50 MP', // Camera
        'Android 12, Funtouch OS 12', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50], // Background color for VIVO Page
      appBar: AppBar(
        title: const Text('VIVO Page'),
        backgroundColor: Colors.green, // AppBar color for VIVO Page
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the smart VIVO Page!',
              style: TextStyle(
                color: Colors.black, // Font color for the text on VIVO Page
                fontSize: 24,
              ),
            ),
            SizedBox(height: 50), // Adds spacing before the image
            Image.network(
              'https://th.bing.com/th/id/OIP.EvxwlISN97mfH1ghwIJiPQHaFd?w=276&h=179&c=7&r=0&o=5&dpr=1.1&pid=1.7', // VIVO image
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
                      phoneModelName: 'VIVO',
                      configurations: VIVOConfigurations,
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
