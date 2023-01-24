import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen1 extends StatelessWidget {

  final String s1='我畢業於桃園市楊梅高中資訊科。'
                  '母親是會計，她讓我體認到遵守紀律、做好本分的重要性。'
                  '父親是棉花代理商，常常聽到他與國外客戶之間的交流，令我了解到具備外語能力的必要及學習到待人接物之道。'
                  '在國小時就時加入學校管樂隊，吹奏小號，每天升旗參加出勤，在'
                  '這裡不但使我對管樂器有進一步的認識，還認識了許多朋友，因此'
                  '在那個時候，參加社團已成為我放學後的一大休閒。';

  @override
  Widget build(BuildContext context) {

    final player=AudioPlayer();
    player.play(AssetSource("assets/Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Text("Who am I",
                              style: TextStyle(fontSize:24,
                                               fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Colors.amberAccent,
                                               offset: Offset(6, 6)),
                        ],),
            child:Text(s1,
                       style: TextStyle(fontSize: 20),),
            ),

           Container(
             color: Colors.redAccent,
             child: Image.asset('images/f1.jpg'),
             height: 200,
             width: 200,
           ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                            image: AssetImage('images/f1.jpg'),
                            fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
