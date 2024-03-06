import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
   TextLearnView({super.key});
final ProjectKeys projectKeys=ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
         projectKeys.welcome,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: ProjectStyles.welcomeStyle 
        ),
           Text(
            projectKeys.welcome,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: ProjectColors.textRed,fontStyle: FontStyle.italic)
        ),
      ],)
    );
  }
}


class ProjectStyles{
  static TextStyle welcomeStyle= TextStyle(
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
            color: ProjectColors.textRed,
            wordSpacing: 2, //kelime arası boşluk
            letterSpacing: 2, //harfler arası boşluk
            fontSize: 16,
            fontWeight: FontWeight.w600,
          );
}

class ProjectColors{
  static Color textRed=Colors.red;
  // static Color get textRed=>Colors.green; anında değişir
}

class ProjectKeys{
  final String welcome="Lorem Ipsum dolor sit amet!";
}