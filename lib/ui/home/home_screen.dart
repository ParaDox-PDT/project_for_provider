import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/providers/user_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../data/models/status/form_status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Users screen",
          style: TextStyle(fontSize: 20.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Consumer<UserProvider>(
        builder: (context, provider, child) {
          switch (provider.status) {
            case FormStatus.pure:
              {
                return const Text("Hali data yo'q, bo'sh holat");
              }
            case FormStatus.loading:
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            case FormStatus.failure:
              {
                return const Text("ERROR");
              }
            case FormStatus.success:
              {
                return Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          ...List.generate(
                            provider.users.length,
                            (index) => ListTile(
                              title: Text(provider.users[index].title),
                              subtitle: Text(provider.users[index].id.toString()),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              }
          }
        },
      ),
    );
  }
}
