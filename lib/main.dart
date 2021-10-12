import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/components/widgets/app_brand.dart';
import 'package:flutter_template/views/splash_screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/current_theme.dart';
import 'components/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      // enabled: false,
      builder: (BuildContext context) => const MyApp(), // Wrap your app
    ),
  );
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false
    ..toastPosition = EasyLoadingToastPosition.bottom;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const double radius = 5.0;
    const BorderRadius inputBorderRadius = BorderRadius.only(
      bottomLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
      topRight: Radius.circular(radius),
      topLeft: Radius.circular(radius),
    );
    final OutlineInputBorder inputBorder = OutlineInputBorder(
        borderRadius: inputBorderRadius,
        borderSide: BorderSide(color: CurrentTheme.primaryColor));

    // HomePageController().getHeaderSlider().map(
    //     (String e) => precacheImage(CachedNetworkImageProvider(e), context));

    return ScreenUtilInit(
      builder: () {
        final TextStyle buttonTextStyle =
        GoogleFonts.poppins(fontSize: 32.sp, color: Colors.white);
        return MaterialApp(
          theme: ThemeData(
            primaryColor: CurrentTheme.primaryColor,
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.white,
                centerTitle: true,
                titleTextStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 40.sp,
                    color: Colors.black),
                iconTheme: const IconThemeData(color: Colors.black)),
            colorScheme: ColorScheme.light(
                secondary: CurrentTheme.accentColor,
                primary: CurrentTheme.primaryColor),
            primaryColorDark: CurrentTheme.darkGreyColor,
            primaryColorLight: CurrentTheme.lightGreyColor,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius)),
                    primary: CurrentTheme.primaryColor,
                    minimumSize: Size(500.w, 115.h),
                    textStyle: buttonTextStyle,
                    padding: EdgeInsets.symmetric(vertical: 10.h))),
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius),
                        side: BorderSide(color: CurrentTheme.primaryColor)),
                    primary: CurrentTheme.primaryColor,
                    minimumSize: Size(500.w, 115.h),
                    textStyle: buttonTextStyle,
                    padding: EdgeInsets.symmetric(vertical: 10.h))),
            textTheme: TextTheme(
                headline1: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 145.sp,
                ),
                headline2: GoogleFonts.poppins(),
                headline4: GoogleFonts.poppins(),
                headline3: GoogleFonts.poppins(),
                headline5: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 45.sp,
                ),
                headline6: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 40.sp,
                ),
                bodyText1: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 36.sp,
                ),
                bodyText2: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 34.sp,
                ),
                subtitle1: GoogleFonts.poppins(fontSize: 34.sp),
                subtitle2: GoogleFonts.poppins(fontSize: 30.sp),
                caption: GoogleFonts.poppins(),
                overline: GoogleFonts.poppins(),
                button: buttonTextStyle),
            inputDecorationTheme: InputDecorationTheme(
                contentPadding:
                EdgeInsets.symmetric(vertical: 30.h, horizontal: 25.w),
                border: inputBorder,
                hintStyle: GoogleFonts.poppins(),
                errorStyle: GoogleFonts.poppins(fontSize: 26.sp),
                focusedBorder: inputBorder,
                labelStyle: GoogleFonts.poppins()),
          ),
          builder: EasyLoading.init(
            builder: (BuildContext context, Widget? child) {
              DevicePreview.appBuilder(context, child);
              return child!;
            },
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generateRoute,
          title: kAppName,
          home: const Root(),
        );
      },
      designSize: const Size(828, 1792),
    );
  }
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return const SplashScreen();
  }
}
