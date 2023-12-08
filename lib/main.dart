import 'package:album_generator/di/locator.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final autoRouter = AutoRouter();

  @override
  void initState() {
    getIt.registerSingleton<AutoRouter>(autoRouter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 823),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return DefaultTextHeightBehavior(
          textHeightBehavior: const TextHeightBehavior(
            leadingDistribution: TextLeadingDistribution.even,
          ),
          child: MaterialApp.router(
            title: 'Album generator',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: "Montserrat",
            ),
            routerDelegate: autoRouter.delegate(),
            routeInformationParser: autoRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }
}