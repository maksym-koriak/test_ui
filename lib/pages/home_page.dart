import 'package:flutter/material.dart';

import 'package:test_ui/widgets/header_widget.dart';
import 'package:test_ui/widgets/info_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const HeaderWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Column(
                  children: const [
                    SizedBox(height: 3),
                    InfoWidget()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
