import 'package:flutter/material.dart';
import 'package:flutter_full_learn/example/jsonPlaceHolder/repositories/jsonplaceholder_repository.dart';
import 'package:flutter_full_learn/example/jsonPlaceHolder/viewmodel/jsonplaceholder_view_model.dart';

class JsonplaceholderHomeView extends StatelessWidget {
   JsonplaceholderHomeView({super.key});
  JsonplaceholderViewModel jsonplaceholderViewModel=JsonplaceholderViewModel();
  JsonplaceholderRepository jsonplaceholderRepository=JsonplaceholderRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        jsonplaceholderRepository.fetchPost();
      }),
      appBar: AppBar(
        title: ListView.builder(
          itemCount: jsonplaceholderViewModel.posts?.length??0,
          itemBuilder: 
        (context,index)=>Text(jsonplaceholderViewModel.posts![index].id.toString()??""),
        )
      ),
    );
  }
}
