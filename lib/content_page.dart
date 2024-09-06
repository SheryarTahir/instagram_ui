import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              padding: const EdgeInsets.all(16),
              rippleColor: Colors.grey.shade50,
              tabBackgroundColor: Colors.grey.shade50,
              iconSize: 20,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              gap: 8,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.searchLocation,
                  text: 'Location',
                ),
                GButton(
                  icon: Icons.add,
                  text: 'Add',
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Likes',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
      appBar: AppBar(
        elevation: 0.5,
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: false,
        title: const Text(
          'Wanda.S',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-psd/studio-portrait-young-teenage-girl_23-2150162484.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1724112000&semt=ais_hybrid'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Wanda.S',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Photographer /  NewYork',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  profiledDatails('150', 'Posts'),
                                  profiledDatails('5k', 'Followers'),
                                  profiledDatails('100', 'Following'),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStatePropertyAll(Colors
                                                    .blueAccent.shade100)),
                                        onPressed: () {},
                                        child: const Text(
                                          'Follow',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://img.freepik.com/free-psd/studio-portrait-young-teenage-girl_23-2150162484.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1724112000&semt=ais_hybrid')),
                          color: Colors.purpleAccent.shade100,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text('Title'),
                    ],
                  );
                },
              ),
            ),
            const Divider(),
            Container(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: DefaultTabController(
                        length: 3,
                        child: TabBar(tabs: [
                          Tab(
                            text: 'Email',
                          ),
                          Tab(
                            text: 'Site',
                          ),
                          Tab(
                            text: 'Phone',
                          ),
                        ])),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://c0.wallpaperflare.com/preview/156/391/795/ireland-cork-city-cork-river.jpg'),
                            ),
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.all(10),
                        height: 150,
                        width: 150,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profiledDatails(String text1, String text2) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 24),
        ),
        Text(
          text2,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
