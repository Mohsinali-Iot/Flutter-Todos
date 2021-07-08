import 'package:flutter/material.dart';

class Todos extends StatefulWidget {

  @override
  _TodosState createState() => _TodosState();
}
class _TodosState extends State<Todos> {

  
List<dynamic> lst=[1,2,3];
var output="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context,index){
          
        return Container(
          height: 50,
          color: Colors.amber,
          margin: EdgeInsets.only(top:20),
          child: ListTile(
            title: Text("${lst[index]}"),
          ),
        );

      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title:Text('ADD ITEMS'),
            content: TextField(
              onChanged: (value){
                output=value;
              },
            ),
            actions: [
              ElevatedButton(onPressed: (){
                setState(() {
                  lst.add(output);
                });
              }, child: Text('ADD'))
            ],
          );
        });
      } ,child: Text('ADD'),),
      
    );
  }
}