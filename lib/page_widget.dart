import 'package:flutter/material.dart';

import 'button_widget.dart';
import 'data.dart';

class PageWidget extends StatefulWidget {
  const PageWidget({super.key});

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  // Set default index to 0
  int _currentPage = 1;

  void goToPage(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void previousPage() {
    if (_currentPage > 1) {
      setState(() {
        _currentPage--;
      });
    }
  }

  void nextPage() {
    if (_currentPage < myList.length) {
      setState(() {
        _currentPage++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Widget"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              // Display only 1 item from the myList
              itemCount: 1,
              itemBuilder: (context, index) {
                Map<String, dynamic> selectedItem = myList
                    .firstWhere((element) => element['page'] == _currentPage);
                return Center(child: Text(selectedItem['content']));
              },
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    widget: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                      size: 20,
                    ),
                    func: () => previousPage(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      return ButtonWidget(
                        widget: Text(myList[index]['page'].toString()),
                        func: () => goToPage(myList[index]['page']),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ButtonWidget(
                    widget: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                    func: () => nextPage(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
