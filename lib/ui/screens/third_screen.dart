import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../providers/provider.dart';
import '../app_routes.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<NumProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Third Screen",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50.h,),
            Consumer<NumProvider>(builder: (context, value, Widget? child) => Text(
              "${provider.getCount}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  provider.add();
                }, child: Text("Add")),
                TextButton(onPressed: (){
                  provider.minus();
                }, child: Text("Minus")),
              ],
            )
          ],
        ),
      ),

    );
  }
}
