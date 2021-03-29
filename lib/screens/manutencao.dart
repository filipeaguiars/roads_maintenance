import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Manutencao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manutenção'),
        backgroundColor: Color.fromARGB(255, 103, 55, 158),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  color: Colors.grey,
                  height: MediaQuery.of(context).size.width / 2,
                  width: MediaQuery.of(context).size.height / 2,
                ),
              ),
              IconButton(
                icon: Icon(Icons.photo_camera),
                onPressed: () async {
                  final PickedFile imgFile = await ImagePicker().getImage(
                      source: ImageSource.gallery);
                  if(imgFile == null) return;
                  final imgFile2 = imgFile;
                  print(imgFile2);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
