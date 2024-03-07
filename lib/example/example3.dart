import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectsEx3Colors.bg,
      appBar: AppBar(
        backgroundColor: ProjectsEx3Colors.bg,
        title: Text(
          ProjectsEx3Strings.title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(letterSpacing: 8,
          fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/${ProjectsEx3ImagePath.welcomeLogo}.png"),
        Column(children: [
            Text(ProjectsEx3Strings.wTitle,textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(color: ProjectsEx3Colors.text,
          fontWeight: FontWeight.w500
          ),),
          Text(ProjectsEx3Strings.wDesc,textAlign: TextAlign.center,style: 
          Theme.of(context).textTheme.bodyLarge!.copyWith(color:ProjectsEx3Colors.text),),
        ],),
        Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.3,
            child: ElevatedButton(
                onPressed: () {}, child: Text(ProjectsEx3Strings.buttonText,style: 
                Theme.of(context).textTheme.bodyMedium,)),
          ),
              Spacer(),
        ],
      ),
    );
  }
}

class ProjectsEx3Colors {
  static Color bg = Colors.white;
  static Color text = Colors.black;
}

class ProjectsEx3ImagePath {
  static String welcomeLogo = "bankLogo";
}

class ProjectsEx3Strings {
  static String title = "NOBANK";
  static String wTitle = "The first bank without a bank!";
  static String wDesc = "join the nobank experience,entirely online";
  static String buttonText = "Enter";
}
