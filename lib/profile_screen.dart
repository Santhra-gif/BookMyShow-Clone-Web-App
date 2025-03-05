import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
<<<<<<< HEAD
=======
import 'bookinghistoryscreen.dart'; // Import the correct booking history
>>>>>>> 5c2625f (Initial commit for BookMyShow Clone Web App)

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

<<<<<<< HEAD
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(height: 16),
          Text(user.email!, style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('My Bookings'),
            onTap: () {
              // Navigate to a list of bookings or a placeholder
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) =>
                      BookingsListScreen(), // Replace with your bookings list screen
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => FirebaseAuth.instance.signOut(),
          ),
        ],
      ),
    );
  }
}

// Placeholder for bookings list
class BookingsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Bookings')),
      body: Center(
        child: Text('List of bookings will be shown here'),
=======
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            SizedBox(height: 16),
            Text(user.email!, style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('My Bookings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => BookingHistoryScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () => FirebaseAuth.instance.signOut(),
            ),
          ],
        ),
>>>>>>> 5c2625f (Initial commit for BookMyShow Clone Web App)
      ),
    );
  }
}
