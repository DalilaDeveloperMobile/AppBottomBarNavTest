import 'package:flutter/material.dart';
import 'package:glyphicon/glyphicon.dart';

import 'button_bar_widget.dart';

class ItemsButtonsBarWidget extends StatelessWidget {

  const ItemsButtonsBarWidget({
    Key? key, 
    required this.dashboard,
    required this.historico, 
    required this.chat,
    required this.perfil,
  }) : super(key: key);

   final Function() dashboard;
   final Function() historico;
   final Function() chat; 
   final Function() perfil;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: ButtonBarWidget(
             onPressed: dashboard,
            text: "Dashboard",
            icon: Glyphicon.clipboard_data,
          ),
        ),
        Expanded(
          child: ButtonBarWidget(
            onPressed: historico,
            text: "Histórico",
            icon: Glyphicon.receipt,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: ButtonBarWidget(
            onPressed: chat,
            text: "Chat",
            icon: Glyphicon.chat,
          ),
        ),
        Expanded(
          child: ButtonBarWidget(
            onPressed: perfil,
            text: "Perfil",
            icon: Glyphicon.person,
          ),
        ),
      ],
    );
  }
}
