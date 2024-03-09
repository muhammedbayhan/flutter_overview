import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  PageController _pageController=PageController();
  int currentIndex=0;
  void updatePageChanged(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: 
      Row(
       mainAxisSize: MainAxisSize.min,
        children: [

        CircleAvatar(radius: 5,backgroundColor: currentIndex==0?Colors.white:Colors.amber,),
        CircleAvatar(radius: 5,backgroundColor: currentIndex==1?Colors.white:Colors.amber,),
        CircleAvatar(radius: 5,backgroundColor: currentIndex==2?Colors.white:Colors.amber,),
    
   
      ],)
      ,),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(onPressed: (){
              _pageController.previousPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
            },child: Icon(Icons.chevron_left),),
          ),
          FloatingActionButton(onPressed: (){
            _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
          },child: Icon(Icons.chevron_right),),
        ],
      ),
      body: PageView(
       onPageChanged:updatePageChanged , 
        controller: _pageController,
      
        children: [
        StatusContainer(color: Colors.red,index: currentIndex,),
        StatusContainer(color: Colors.green,index: currentIndex,),
        StatusContainer(color: Colors.blue,index: currentIndex,),
      
      ],),
    );
  }
}

class StatusContainer extends StatelessWidget {
   const StatusContainer({
    super.key,required this.color,required this.index
  });
final Color color;
final int index;
  @override
  Widget build(BuildContext context) {
    return Container(color: color,child: Center(child: Text((index+1).toString(),style: Theme.of(context).textTheme.displayLarge,),),);
  }
}