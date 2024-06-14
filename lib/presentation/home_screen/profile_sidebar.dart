import 'package:flutter/material.dart';
import 'package:simo_lottery_app/presentation/update_profile/update_profile.dart';

class ProfileSidebar extends StatelessWidget {
  const ProfileSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 145, 64, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                SizedBox(
                  width: 70, // Diameter of the circle
                  height: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/avatar.png'),
                        scale: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text("denzeltravis@gmail.com"),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Update Profile'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 17,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UpdateProfile(),
                  ),
                );
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 17,
            ),
            onTap: () {
              // Handle the General Settings tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Terms and Conditions'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 17,
            ),
            onTap: () {
              // Handle the Notification Settings tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.games),
            title: const Text('How to Play'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 17,
            ),
            onTap: () {
              // Handle the Report a Problem tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.rate_review),
            title: const Text('Testimonials'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 17,
            ),
            onTap: () {
              // Handle the Send Feedback tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text('Become an Agent'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 17,
            ),
            onTap: () {
              // Handle the Send Feedback tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 17,
            ),
            onTap: () {
              // Handle the Send Feedback tap
            },
          ),
        ],
      ),
    );
  }
}
