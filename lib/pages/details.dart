import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String title;

  final List detail;
  //final String flag;
  Detail({
    this.title,
    //this.flag,
    this.detail,
  });

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text(
          //widget.title,
          'Beginners Guide',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: widget.detail.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            widget.detail[index],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
