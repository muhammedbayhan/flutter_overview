import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({super.key});

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  List<PostModel>? _items;
  bool _isLoading = false;

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get("https://jsonplaceholder.typicode.com/posts");
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        setState(() {});
      }
    }
    _changeLoading();
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();

    final response = await Dio()
        .post("https://jsonplaceholder.typicode.com/posts", data: postModel);
    if (response.statusCode == HttpStatus.created) {
      print("Başarılı");
    }
    _changeLoading();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPostItems();
  }

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _isLoading ? LinearProgressIndicator() : SizedBox.shrink(),
        ),
        body: PageView(
          children: [
            Padding(
              padding: EdgeInsets.all(28.0),
              child: Column(
                children: [
                  TextField(
                    textInputAction: TextInputAction.next,
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'title',
                      hintText: 'Lütfen title girin',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                  TextField(
                    textInputAction: TextInputAction.next,
                    controller: _bodyController,
                    decoration: const InputDecoration(
                      labelText: 'body',
                      hintText: 'Lütfen body girin',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                  TextField(
                    controller: _userIdController,
                    decoration: const InputDecoration(
                      labelText: 'userId',
                      hintText: 'Lütfen userId girin',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId: int.tryParse(_userIdController.text));
                                                      _addItemToService(model);

                        }

                      },
                      child: Text("data"))
                ],
              ),
            ),
            ListView.builder(
                itemCount: _items?.length ?? 0,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _PostCard(
                        model: _items?[index],
                      ),
                    )),
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    super.key,
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
