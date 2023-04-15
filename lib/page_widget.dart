import 'package:flutter/material.dart';
import 'package:page_widget/page_bar_widget.dart';

import 'data.dart';

class PageWidget extends StatefulWidget {
  const PageWidget({super.key});

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Widget"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return Text(myList[index]['content']);
              },
            ),
          ),
          const Expanded(child: PageBarWidget()),
        ],
      ),
    );
  }
}
