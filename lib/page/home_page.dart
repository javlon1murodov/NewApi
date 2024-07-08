import 'package:flutter/material.dart';
import 'package:apinew/model/log_service.dart';

import '../service/http_service.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
var isLoading = false;
var items = [];
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _apiPostList();

  }

  void _apiPostList()async{
    setState(() {
      isLoading = true;
    });
    var reponse = await Network.GET(Network.API_LIST, Network.parameEmpty());
    setState(() {
      if(reponse !=null){
        setState(() {
          isLoading = false;
          items = Network.parsingResponse(reponse);
        });
      }
    });
    LogService.i(reponse.toString());

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Network"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 2,
          itemBuilder: (context, index){
            return ListTile(
              title: Text("Nami"),
              subtitle: Text("radam "),
            );
          }),
    );
  }
}
//Assalom alaykum Hojiakbar aka yaxshi misiz
//API ni eriyni Parsing qilish