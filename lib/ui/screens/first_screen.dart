import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/providers/provider.dart';
import 'package:flutter_defualt_project/ui/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<NumProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen",style: TextStyle(color: Colors.black),),
        elevation: 5,
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
