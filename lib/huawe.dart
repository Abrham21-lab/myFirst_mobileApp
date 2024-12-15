import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';  // Assuming you want to navigate to ConfigurationPage
import 'context_menu.dart';  // Import the context_menu.dart file that defines ContextMenuWidget

class Huawe extends StatelessWidget {
  const Huawe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> huaweConfigurations = [
      PhoneConfiguration(
        'Huawei Mate 60 Pro Plus',
        '512GB',
        '125,000 ETB',
        '5000 mAh',
        '12 MP',
        'iOS HarmonyOS',
      ),
      PhoneConfiguration(
        'Huawei Nova 13 Pro',
        '512GB',
        '30,000 ETB',
        '5000 mAh',
        '50 MP',
        'iOS HarmonyOS 4.2',
      ),
      PhoneConfiguration(
        'Huawei P40 Pro',
        '256GB',
        '49,000 ETB',
        '4200 mAh',
        '32 MP',
        'strong camera',
      ),
      PhoneConfiguration(
        'Huawei Mate 40 Pro',
        '256GB',
        '51,000 ETB',
        '4400 mAh',
        '50 MP',
        'powerful Kirin 9000 processor',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('Huawei Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ContextMenuWidget(  // Using the ContextMenuWidget
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to the smart Huawei Page!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 20),

                // Display the image from the network
                Image.network(
                  'https://th.bing.com/th/id/R.8fe1c7ecde5aa7b1922dabd589f262b3?rik=ENdKAOzAfM18HA&pid=ImgRaw&r=0',
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
                    // Navigate to the configuration page, passing the list of Huawei configurations
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfigurationPage(
                          phoneModelName: 'Huawei',
                          configurations: huaweConfigurations, // Pass the entire list of phone configurations
                        ),
                      ),
                    );
                  },
                  child: const Text('View Huawei Configurations'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
