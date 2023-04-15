import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_widget/button_widget.dart';

class PageBarWidget extends StatelessWidget {
  const PageBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ButtonWidget(
            widget: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.grey,
              size: 20,
            ),
            func: () => previousPage(),
          ),
          ButtonWidget(
            widget: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 20,
            ),
            func: () => nextPage(),
          )
        ],
      ),
    );
  }

  void previousPage() {
    if (kDebugMode) {
      print('Previous Page Clicked!');
    }
  }

  void nextPage() {
    if (kDebugMode) {
      print('Next Page Clicked!');
    }
  }
}
