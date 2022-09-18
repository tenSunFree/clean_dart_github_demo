import 'package:flutter/material.dart';
import '../../main.dart';

class HomeBodyWidget extends StatelessWidget {
  final bool isLoading;
  final List<HomeCommentsEntity> list;

  const HomeBodyWidget({
    Key? key,
    required this.isLoading,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return HomeBackgroundWidget(
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: width,
              height: width * 524 / 1080,
              child: Image.asset(
                'assets/icons/icon_top_bar.png',
                package: 'common',
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  HomeBodyListViewWidget(list: list),
                  isLoading
                      ? const CircularProgressIndicator()
                      : const SizedBox(),
                ],
              ),
            ),
            SizedBox(
              width: width,
              height: width * 147 / 1080,
              child: Image.asset(
                'assets/icons/icon_bottom_bar.png',
                package: 'common',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
