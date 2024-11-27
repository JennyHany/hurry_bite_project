import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Details",
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'two',
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/ordertrack.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 4),
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.deepOrangeAccent[100],
                      child: Icon(
                        Icons.shopping_bag,
                        size: 40,
                        color: Colors.red[400],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Order Number",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontFamily: 'one',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "#12345",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontFamily: '',
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Courier Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontFamily: 'one',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "John Doe",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontFamily: '',
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Courier Number",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontFamily: 'one',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "+1 234 567 890",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontFamily: '',
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Estimated Delivery Time",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontFamily: 'one',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "3:45 PM, Today",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontFamily: '',
                    ),
                  ),
                  SizedBox(height: 32),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/orderdetails');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      ),
                      child: Text(
                        "Back to Home",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrangeAccent[100],
                          fontFamily: 'two', // Replace with your custom font family
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
