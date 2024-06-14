import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simo_lottery_app/presentation/home_screen/profile_sidebar.dart';
import 'custum_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePageContent(),
    const Center(child: Text('Tickets')),
    const Center(child: Text('Winners')),
    const Center(child: Text('Settings')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: const ProfileSidebar(),
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 35,
              ),
            );
          },
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/simo_logo.jpg',
          scale: 2,
        ),
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              height: 170,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 16, 23, 98),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 85,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 145, 64, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: 670,
                width: double.maxFinite,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    mainAxisSpacing:
                        10.0, // Vertical spacing between containers
                    childAspectRatio:
                        120 / 80, // Aspect ratio to maintain width and height
                  ),
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: 80, // Height of the container
                      width: 100, // Width of the container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 170,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 16, 23, 98),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
