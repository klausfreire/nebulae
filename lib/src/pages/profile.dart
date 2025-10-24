import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nebulae/src/components/appbarButton/app-bar-button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('logo-title.svg', height: 40,),
        backgroundColor: Color(0xff172044),
        actionsPadding: EdgeInsetsGeometry.only(right: 20),
        actions: [
          AppBarButton(text: 'Início', onPressed: ()=> print('inicio')),
          AppBarButton(text: 'Sobre', onPressed: ()=> print('Sobre')),
          AppBarButton(text: 'Contato', onPressed: ()=> print('Contato')),
          AppBarButton(text: 'Sair', onPressed: ()=> print('Sair')),
        ],
      ),
    );
  }
}