import 'package:flutter/material.dart';
import 'package:news/detail.dart';
class NewsContainer extends StatelessWidget {

  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsContainer({super.key,
  required this.imgUrl,
    required this.newsDes,required this.newsHead,required this.newsUrl,required this.newsCnt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        
        children: [
          FadeInImage.assetNetwork(height: 400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              placeholder: 'assets/ani.gif', image: imgUrl),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  newsHead != '--'?
                  newsHead.length>80? newsHead.substring(0,80):
                  '${newsHead.toString().substring(0, newsHead.length - 15)}...':newsHead,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text(
                  newsCnt != '--'?
                  newsCnt.length>200? newsCnt.substring(0,200):
                  '${newsCnt.toString().substring(0, newsCnt.length - 15)}...':newsCnt,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38
                ),),
                SizedBox(height: 10,),
                Text(
                  newsDes != '--'?
                  newsDes.length>400? newsDes.substring(0,400):
                '${newsDes.toString().substring(0, newsDes.length - 20)}...':newsDes,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),

              ],
            ),
          ),

          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailViewScreen(newsUrl: newsUrl)));
                }, child: Text('Read More')),
              ),
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
