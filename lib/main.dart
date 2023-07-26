import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/providers/calculator_provider.dart';
import 'package:flutter_defualt_project/providers/provider.dart';
import 'package:flutter_defualt_project/ui/app_routes.dart';
import 'package:flutter_defualt_project/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'data/local/service/hive_service.dart';
import 'data/local/storage_repository/storage_repository.dart';
import 'data/models/default_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageRepository.getInstance();

  await Hive.initFlutter();
  Hive.registerAdapter(DefaultModelAdapter());
  await HiveService.openBox();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Calculator(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => NumProvider(count: 0,index: 0),
          lazy: true,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 783),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          initialRoute: RouteNames.tabBox,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
