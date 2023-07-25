import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/ui/home/widgets/list_view_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  var maskFormatter = MaskTextInputFormatter(
      mask: '######',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simple Calculator",
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
        elevation: 10,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 150.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Colors.black54,
                  border: Border.all(width: 3.w, color: Colors.black)),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    controller: firstController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [maskFormatter],
                    decoration: InputDecoration(
                      hintText: "Write first number",
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    controller: secondController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [maskFormatter],
                    decoration: InputDecoration(
                      hintText: "Write second number",
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(width: 2, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ZoomTapAnimation(
              onTap: () {
                firstController.clear();
                secondController.clear();
              },
              child: Container(
                width: 200.w,
                height: 75.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.black54,
                    border: Border.all(width: 2.w, color: Colors.black)),
                child: Center(
                    child: Text(
                      "Clear all numbers",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.red),
                      overflow: TextOverflow.ellipsis,
                    )),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GetListView(
              onAddTap: () {
                if (firstController.text.isEmpty ||
                    secondController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Both fields must be filled"),),);
                }else{

                }
              },
              onArithTap: () {
                if (firstController.text.isEmpty ||
                    secondController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Both fields must be filled"),),);
                }else{

                }
              },
              onDivTap: () {
                if (firstController.text.isEmpty ||
                    secondController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Both fields must be filled"),),);
                }else{

                }
              },
              onGeoTap: () {
                if (firstController.text.isEmpty ||
                    secondController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Both fields must be filled"),),);
                }else{

                }
              },
              onMinusTap: () {
                if (firstController.text.isEmpty ||
                    secondController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Both fields must be filled"),),);
                }else{

                }
              },
              onMultiTap: () {
                if (firstController.text.isEmpty ||
                    secondController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Both fields must be filled"),),);
                }else{

                }
              },
              onSumTap: () {
                if (firstController.text.isEmpty ||
                    secondController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Both fields must be filled"),),);
                }else{

                }
              },
            )
          ],
        ),
      ),
    );
  }
}
