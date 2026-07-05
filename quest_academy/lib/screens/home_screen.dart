import 'package:flutter/material.dart';
import 'package:quest_academy/screens/profile_screen.dart';
import 'package:quest_academy/screens/quest_detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  int currentCategory = 0;
  Widget categoryItem(
      String image,
      String title,
      ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Image.asset(
          image,
          height: 50,
          width: 50,
        ),

        SizedBox(height: 10),

        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            toolbarHeight: 75,
            backgroundColor: Color(0xFFA300A3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            title: Text(
              "Quest Academy",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            centerTitle: true,

            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                      Icons.notifications_none,
                      size: 28,
                      color: Colors.white,
                  )
              )
            ],
          ),

          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFFA300A3),
                  ),
                  child: Row(
                    children: [

                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(
                          'assets/images/profile.png',
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Adiii",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                          SizedBox(
                            height: 2,
                          ),

                          Text(
                            "Level 8 Hunter",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Orbitron',
                              fontSize: 12,
                            ),
                          ),

                          Text(
                            "XP: 1500",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Orbitron',
                              fontSize: 12,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                ListTile(
                  selected: true,
                  selectedColor: Color(0xFFA300A3),

                  leading: Icon(
                    Icons.home,
                    size: 20,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(
                    Icons.explore,
                    size: 20,
                  ),
                  title: Text(
                    'Quests',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => QuestDetailScreen(),
                      ),
                    );
                  },
                ),

                ListTile(
                  leading: Icon(
                    Icons.emoji_events,
                    size: 20,
                  ),
                  title: Text(
                    'Achievements',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(
                    Icons.leaderboard,
                    size: 20,
                  ),
                  title: Text(
                    'Leaderboard',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 20,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => ProfileScreen(),
                      ),
                    );
                  },
                ),

                Divider(
                  color: Color(0xFFA300A3),
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  height: 10,
                ),

                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 20,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    size: 20,
                  ),
                  title: Text(
                    'Help & Support',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(
                    Icons.info_outline_rounded,
                    size: 20,
                  ),
                  title: Text(
                    'About App',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 20,
                    color: Color(0xFFFF0000),
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF0000),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  horizontalTitleGap: 12,
                  onTap: () {},
                ),

              ],
            ),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  child: Row(
                    children: [

                      CircleAvatar(
                        radius: 47,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage(
                            'assets/images/profile.png',
                          ),
                        ),
                      ),

                      SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            children: [

                              Text(
                                "Good Morning",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),

                              SizedBox(width: 5),

                              Icon(
                                Icons.wb_sunny,
                                color: Colors.orange,
                                size: 20,
                              ),
                            ],
                          ),

                          SizedBox(height: 3),

                          Text(
                            "Adiii",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [

                            Text(
                              "Level 8 Hunter",
                              style: TextStyle(
                                fontFamily: 'Orbitron',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Spacer(),

                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),

                        SizedBox(height: 15),

                        Text(
                          "XP: 1500 / 3000",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(height: 10),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            value: 0.5,
                            minHeight: 8,
                            backgroundColor: Colors.grey.shade300,
                            valueColor: AlwaysStoppedAnimation(
                              Color(0xFFA300A3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 25,
                  ),

                  child: Row(
                    children: [

                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Spacer(),

                      Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xFFA300A3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,

                    onPageChanged: (index, reason) {
                      setState(() {
                        currentCategory = index;
                      });
                    },
                  ),

                  items: [
                    Container(
                      padding: EdgeInsets.all(20),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                          ),
                        ],
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          categoryItem(
                            'assets/images/flutter.png',
                            'Flutter',
                          ),

                          categoryItem(
                            'assets/images/firebase.png',
                            'Firebase',
                          ),

                          categoryItem(
                            'assets/images/figma.png',
                            'UI Design',
                          ),

                          categoryItem(
                            'assets/images/java.png',
                            'Java',
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(20),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                          ),
                        ],
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          categoryItem(
                            'assets/images/python.png',
                            'Python',
                          ),

                          categoryItem(
                            'assets/images/react.png',
                            'React',
                          ),

                          categoryItem(
                            'assets/images/dart.png',
                            'Dart',
                          ),

                          categoryItem(
                            'assets/images/ai.png',
                            'AI',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentCategory == 0
                            ? Color(0xFFA300A3)
                            : Colors.grey.shade300,
                      ),
                    ),

                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentCategory == 1
                            ? Color(0xFFA300A3)
                            : Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),

                  child: Row(
                    children: [

                      Text(
                        "Achievements",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Spacer(),

                      Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xFFA300A3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),

                  child: Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    elevation: 4,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(20),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          categoryItem(
                            'assets/images/explorer.png',
                            'Explorer',
                          ),

                          categoryItem(
                            'assets/images/master.png',
                            'Quiz Master',
                          ),

                          categoryItem(
                            'assets/images/streak.png',
                            'Streak Hero',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "All Quests",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Spacer(),

                      Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFFA300A3),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20
                  ),

                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),

                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.8,

                    children: [

                      Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: categoryItem(
                            'assets/images/flutter.png',
                            'Flutter',
                          ),
                        ),
                      ),

                      Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: categoryItem(
                            'assets/images/firebase.png',
                            'Firebase',
                          ),
                        ),
                      ),

                      Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: categoryItem(
                            'assets/images/puzzle.png',
                            'Puzzly',
                          ),
                        ),
                      ),

                      Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: categoryItem(
                            'assets/images/clock.png',
                            'Clockify',
                          ),
                        ),
                      ),

                      Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: categoryItem(
                            'assets/images/java.png',
                            'Java',
                          ),
                        ),
                      ),

                      Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: categoryItem(
                            'assets/images/python.png',
                            'Python',
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),

            decoration: BoxDecoration(
              color: Color(0xFFA300A3),

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),

            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,

              currentIndex: index,
              onTap: (i) {
                if (i == index) return;

                if (i == 0) {
                  setState(() => index = i);
                }

                else if (i == 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => QuestDetailScreen()),
                  );
                }

                else if (i == 3) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => ProfileScreen()),
                  );
                }
              },
              selectedItemColor: Color(0xFFfef4a0),
              unselectedItemColor: Colors.white,

              selectedLabelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFFfef4a0),
              ),

              unselectedLabelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.white,
              ),

              type: BottomNavigationBarType.fixed,

              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: "Quests",
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.leaderboard),
                  label: "Leaderboard",
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
    );
  }
}



