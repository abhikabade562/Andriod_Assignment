import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> teachers = ['Mr.T.A.Mulla','Mr.U.B.Chavan','Mrs.Shetti','Mrs.Sonavane','Mr.P.K.Kharat','Mr.R.R.Rathod'];
  Map teachers_person = {
     'teachers' : ['Mr.T.A.Mulla','Mr.U.B.Chavan','Mrs.Shetti','Mrs.Sonavane','Mr.P.K.Kharat','Mr.R.R.Rathod'],
     'subjects' : ['CA','Andriod','SE','TOC','CN','PRW'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('College faculties and their Subjects',
        textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 9,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: teachers.length ,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: (){
                  Fluttertoast.showToast(
                      msg: "You clicked on custom list",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.grey,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                },

                leading: Icon(Icons.person),
              title: Text(teachers_person['teachers'][index]),
              subtitle: Text(teachers_person['subjects'][index]),
            ),
            );
        },
        )
      ),
    );
  }
}
