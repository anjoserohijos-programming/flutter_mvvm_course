import 'package:flutter/material.dart';
import 'package:flutter_mvvm_course/presentation/resource_managers/strings_manager.dart';

class PageNotFoundView extends StatefulWidget {
  const PageNotFoundView({super.key});

  @override
  State<StatefulWidget> createState() => _PageNotFoundViewState();
}

class _PageNotFoundViewState extends State<PageNotFoundView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(AppStringsManager.pageNotFound),
        ),
      ),
    );
  }
}
