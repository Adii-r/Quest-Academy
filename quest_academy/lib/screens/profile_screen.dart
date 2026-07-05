import 'package:flutter/material.dart';
import 'package:quest_academy/screens/home_screen.dart';
import 'package:quest_academy/screens/quest_detail_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFA300A3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Center(
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Row(
                        children: [

                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              'assets/images/profile.png',
                            ),
                          ),

                          SizedBox(width: 20),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "Adiii",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                                Text(
                                  "Level 8 Hunter",
                                  style: TextStyle(
                                    fontFamily: 'Orbitron',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),

                                Text(
                                  "XP: 1500",
                                  style: TextStyle(
                                    fontFamily: 'Orbitron',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),

                                SizedBox(
                                  height: 8,
                                ),

                                SizedBox(
                                  width: 250,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: LinearProgressIndicator(
                                      value: 0.45,
                                      minHeight: 5,
                                      backgroundColor: Colors.white54,
                                      valueColor: AlwaysStoppedAnimation(
                                        Color(0xFFFEDF7A),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.edit),
                  title: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.emoji_events),
                  title: Text(
                    "Badges",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.bar_chart),
                  title: Text(
                    "My Progress",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.volume_up),
                  title: Text(
                    "Audio Settings",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.palette),
                  title: Text(
                    "Theme",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text(
                    "Help & Support",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text(
                    "About App",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              Divider(
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  onTap: () {},
                ),
              ),

              SizedBox(height: 15),
            ],
          ),
        ),
      ),


      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
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

            if (i == 3) {
              setState(() => index = i);
            }

            else if (i == 0) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => HomeScreen()),
              );
            }

            else if (i == 1) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => QuestDetailScreen()),
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
    );
  }
}

