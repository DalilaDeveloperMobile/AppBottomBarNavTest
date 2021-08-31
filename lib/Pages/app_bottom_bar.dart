import 'package:flutter/material.dart';
import 'package:glyphicon/glyphicon.dart';

import 'widgets/items_buttons_bar_widget.dart';
import 'widgets/new_page_screen.dart';

class AppBottomBar extends StatelessWidget {
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

  //final BuildContext context;
  //final List<ButtonBarWidget> items;
  //final List<Widget> index;
  ////final int mainIndex;
  //final Color scaffoldColor;
  // final ValueChanged<double> onTap;
  // final List<ButtonBarWidget> subItems;
 

  @override
  Widget build(BuildContext context) {

  
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    NewPageScreen("Minha conta"),
    NewPageScreen("Meus pedidos"),
    NewPageScreen("Favoritos"),
    NewPageScreen("Perfil")
  ];

    return Stack(alignment: Alignment.bottomCenter, children: [
      Scaffold(
        body: _telas[_indiceAtual],
        bottomNavigationBar: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
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
                    dashboard: () => _indiceAtual = 0,
                    historico: () => _indiceAtual = 1,
                    chat: () => _indiceAtual = 2,
                    perfil: () => _indiceAtual = 3,
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
