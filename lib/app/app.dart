import 'package:e_money/app/routes/app_router.dart';
import 'package:e_money/core/resources/resources.g.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

class EMoneyApp extends StatefulWidget {
  const EMoneyApp({super.key});

  @override
  State<EMoneyApp> createState() => _EMoneyAppState();
}

class _EMoneyAppState extends State<EMoneyApp> {
  Locale? _locale;
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      location: BannerLocation.topEnd,
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        locale: _locale,
        title: resources.projectName,
      ),
    );
  }
}
