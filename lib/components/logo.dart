import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {

  final title;

  // 시그니처는 한 개만 받을 때, 사용하자.
  const Logo(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SvgPicture.asset("assets/logo.svg", height: 70, width: 70,),
          Text(
            title,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )
      ],
    );
  }
}

