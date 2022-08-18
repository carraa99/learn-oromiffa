import 'package:flutter/material.dart';
import 'package:learn_oromiffa/pages/details.dart';
import 'package:learn_oromiffa/pages/titles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  Widget buildMenuItem({
    String text,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;

    return ListTile(
      title: Text(text,
          style: TextStyle(
            color: color,
            fontSize: 20.0,
          )),
      onTap: () {},
    );
  }

  Widget contactMe({
    String text,
    VoidCallback onClicked,
  }) {
    final color = Colors.grey[300];

    return ListTile(
      title: Text(text,
          style: TextStyle(
            color: color,
            fontSize: 15.0,
          )),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
        backgroundColor: Color(0xFF21BFBD),
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromRGBO(50, 75, 205, 1),
          child: ListView(
            padding: padding,
            children: [
              const SizedBox(height: 50),
              const SizedBox(height: 10),
              buildMenuItem(
                text: 'Version:  1.0',
              ),
              const SizedBox(height: 10),
              contactMe(
                text: 'contact me at:\ncarawalteji@gmail.com',
              ),
              const SizedBox(height: 30),
              Divider(color: Colors.white70),
              const SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 10, 25),
                  child: Text(
                      'I am really sorry \n if there is any spelling or translation mistakes in this app.If you find out any mistake, please contact me via this email:\ncarawalteji@gmail.com\nThankyou so much. '),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50.0),
          Padding(
            padding: EdgeInsets.only(left: 60.0),
            child: Row(
              children: [
                Text(
                  'Learn',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 25.0),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Afan Oromo',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView.builder(
              itemCount: ListOfFiles().getListOfMyFiles.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(
                                      title: ListOfFiles()
                                          .getListOfMyFiles[index]
                                          .oromicTitle,
                                      detail: ListOfFiles()
                                          .getListOfMyFiles[index]
                                          .details,
                                    )));
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 5, 25),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                              ListOfFiles().getListOfMyFiles[index].title,
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
