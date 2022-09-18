import 'package:flutter/material.dart';
import '../../main.dart';

class HomeBodyListViewWidget extends StatelessWidget {
  final List<HomeCommentsEntity> list;

  const HomeBodyListViewWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollBehaviorWidget(),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: list.isEmpty ? 0 : 50,
        itemBuilder: (BuildContext context, int index) => buildItem(index),
      ),
    );
  }

  Widget buildItem(int index) {
    return SizedBox(
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              list[index].name ?? '',
              style: const TextStyle(
                color: Color(0xFF919191),
                fontSize: 18,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              list[index].email ?? '',
              style: const TextStyle(
                color: Color(0xFFD2D2D2),
                fontSize: 14,
              ),
            ),
          ),
          const Spacer(),
          Container(
            color: const Color(0x60E1E1E1),
            height: 1,
          ),
        ],
      ),
    );
  }
}
