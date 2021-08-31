import 'package:flutter/material.dart';
import 'package:glyphicon/glyphicon.dart';

import 'widgets/dashboard.dart';
import 'widgets/items_buttons_bar_widget.dart';
import 'widgets/new_page_screen.dart';

class AppBottomBar extends StatefulWidget {
  AppBottomBar({
    Key? key,
    //required this.context,
    //required this.items,
    //required this.index,
    //required this.mainIndex,
    // required this.scaffoldColor,
    // required this.onTap,
    // required this.subItems
  }) : super(key: key);

  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

int indiceAtual = 0;
List<Widget> _telas = [
  Dashboard(),
  NewPageScreen("Meus pedidos"),
  NewPageScreen("Favoritos"),
  NewPageScreen("Perfil")
];

class _AppBottomBarState extends State<AppBottomBar> {
  ////final int mainIndex;
  //final Color scaffoldColor;
  // final ValueChanged<double> onTap;
  // final List<ButtonBarWidget> subItems;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Scaffold(
        body: _telas[indiceAtual],
        bottomNavigationBar: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 8,
                    ),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: Container(
                  color: Colors.white,
                  height: 76,
                  child: ItemsButtonsBarWidget(
                    dashboard: () {
                      setState(() {
                        indiceAtual = 0;
                        print(indiceAtual);
                      });
                    },
                    historico: () {
                      setState(() {
                        indiceAtual = 1;
                        print(indiceAtual);
                      });
                    },
                    chat: () {
                       setState(() {
                      indiceAtual = 2;
                      print(indiceAtual);
                       });
                    },
                    perfil: () {
                      setState(() {
                      indiceAtual = 3;
                      print(indiceAtual);
                       });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 35,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {},
          child: Container(
            height: 67,
            width: 67,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF033f63),
            ),
            child: Icon(Glyphicon.currency_dollar, size: 36),
          ),
        ),
      ),
    ]);
  }
}
