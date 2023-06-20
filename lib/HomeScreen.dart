import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("WhatsApp")),
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt_outlined)),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                )
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_horiz),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        const PopupMenuItem(
                            value: '1', child: Text("New Group")),
                        const PopupMenuItem(
                            value: '2', child: Text("Linked Devices")),
                        const PopupMenuItem(
                            value: '2', child: Text("Settings")),
                        const PopupMenuItem(value: '2', child: Text("Logout")),

                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              const Text("Camera"),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(""),
                      ),
                      title: Text("Rida"),
                      subtitle: Text("hi"),
                      trailing: Text("6:23 pm"),
                    );
                  }),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    if (index==0)
                      {
                        return  Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Recent updates"),
                              ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 3,
                                      )
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: NetworkImage(""),
                                  ),
                                ),
                                title: const Text("Rida"),
                                subtitle: const Text("Just now"),

                              ),
                            ],
                          ),
                        );
                      }
                    else
                      {
                        return  ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                )
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(""),
                            ),
                          ),
                          title: const Text("Rida"),
                          subtitle: const Text("Just now"),

                        );
                      }

                  }),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(""),
                      ),
                      title: Text("Rida"),
                      subtitle: Text("View missed calls"),
                      trailing: Icon(Icons.call),
                    );
                  }),
            ],
          ),
        ));
  }
}
