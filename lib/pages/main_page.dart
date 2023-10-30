import 'package:flutter/material.dart';
import '../model/image_meaning.dart';
import '../data/list_data.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.pink.shade500,
      ),
      body:
      ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: listOfIcons.length,
          itemBuilder: (BuildContext contex, int index){
            ImageMeaning imageMeaning=listOfIcons[index];
            return
              GestureDetector(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(duration:const Duration(seconds: 1),
                            content: Text(imageMeaning.nameInDeutsch)));
                  },
                  child:  ListTile(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(imageMeaning.nameInArabic)));
                    },
                    textColor: Colors.blue,
                    iconColor:Colors.red,
                    title:Text(imageMeaning.nameInEnglish),
                    subtitle: Text(imageMeaning.nameInDeutsch),
                    leading: imageMeaning.iconFromFlutter,
                    trailing: Text(imageMeaning.nameInArabic),

                  )
              );
          }),
    );
  }
}