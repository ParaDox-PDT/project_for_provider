import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class GetListView extends StatelessWidget {
  const GetListView({super.key, required this.onAddTap, required this.onMinusTap, required this.onMultiTap, required this.onDivTap, required this.onArithTap, required this.onGeoTap, required this.onSumTap});
  final VoidCallback onAddTap;
  final VoidCallback onMinusTap;
  final VoidCallback onMultiTap;
  final VoidCallback onDivTap;
  final VoidCallback onArithTap;
  final VoidCallback onGeoTap;
  final VoidCallback onSumTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZoomTapAnimation(
                onTap: onAddTap,
                child: Container(
                  width: 75.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black54),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 50.r,
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: onMinusTap,
                child: Container(
                  width: 75.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black54),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      size: 50.r,
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: onMultiTap,
                child: Container(
                  width: 75.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black54),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      size: 50.r,
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: onDivTap,
                child: Container(
                  width: 75.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black54),
                  child: Center(
                    child: Text(
                      "/",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZoomTapAnimation(
                onTap: onArithTap,
                child: Container(
                  width: 150.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black54,
                      border:
                      Border.all(width: 2.w, color: Colors.black)),
                  child: Center(
                      child: Text(
                        "Arithmetic mean",
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              ZoomTapAnimation(
                onTap: onGeoTap,
                child: Container(
                  width: 150.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black54,
                      border:
                      Border.all(width: 2.w, color: Colors.black)),
                  child: Center(
                      child: Text(
                        "Geometric mean",
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          ZoomTapAnimation(
            onTap: onSumTap,
            child: Container(
              width: 200.w,
              height: 75.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.black54,
                  border: Border.all(width: 2.w, color: Colors.black)),
              child: Center(
                child: Text(
                  "Sum of numbers",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}