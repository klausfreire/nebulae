import 'package:flutter/material.dart';
import 'package:nebulae/src/components/appButton/app_button.dart';
import 'package:nebulae/src/components/genericAppText/generic_app_text.dart';

class UserInfoCard extends StatefulWidget {
  const UserInfoCard({super.key});

  @override
  State<UserInfoCard> createState() => _UserInfoCardState();
}

class _UserInfoCardState extends State<UserInfoCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.network(
            'https://randomuserapi.com/api/portraits/women/76.jpg',
            fit: BoxFit.fill,
            height: 250,
            width: 250,
            )
        ),
        Spacer(),
        Column(
          children: [
            Row(
              children: [
                GenericappText(text:'Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
                AppButton(
                  onPressed: ()=>{print('follow')}, 
                  child: GenericappText(text:'Seguir', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),)
                )
              ],
            ),
            Text('@user'),
            Text('flavor text'),
            Row(
              children: [
                Text('000'),
                Text('postagens'),
                Text('000'),
                Text('seguidores'),
                Text('000'),
                Text('seguindo')
              ],
            )
          ],
        ),
        Spacer()
      ],
    );
  }
}