import 'package:flutter/material.dart';
import 'package:studying_layout/pages/circle_avatar/user_entity.dart';

class CircleAvatarPage extends StatelessWidget {
  var userMap = <String, dynamic>{
    "names": [
      "josé",
      "gabriel",
      "daniel",
      "donato",
      "gustavo",
    ],
    "urls": [
      "https://i.pinimg.com/736x/e5/fa/ce/e5face100f9c18fa6cd27bd6bd0c84f6.jpg",
      "https://pbs.twimg.com/media/FHEJ7IVXoAUhVm9.jpg",
      "https://i.pinimg.com/474x/0d/2a/c4/0d2ac4ededa43ca364ec9f5eb965f3a8.jpg",
      "https://pbs.twimg.com/media/FIdoJ6dXsAEsQf1.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyYERmTEG74VMjwwnOMXcBDRT_8qy3Lfwekg&usqp=CAU",
    ],
  };
  CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("CircleAvatarPage"),
      ),
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: userMap["names"].length,
              itemBuilder: (context, index) {
                var user = UserEntity(
                    name: userMap["names"], usersImages: userMap["urls"]);

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ImageAvatar(
                        urlImage: '${user.usersImages[index]}',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "${user.name[index]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // teste(context),
        ],
      ),
    );
  }

  // Widget teste(BuildContext context) {
  //   return Container(
  //     height: 100,
  //     width: 100,
  //     color: Colors.yellow,
  //   );
  // }
}

class ImageAvatar extends StatelessWidget {
  String urlImage;
  ImageAvatar({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.pink,
                Colors.purple,
                Colors.purple,
              ],
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          padding: EdgeInsets.all(6),
          child: Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.black38,
        ),
        Container(
          height: 100,
          width: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.pink.shade500,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(4),
              child: Center(
                child: Text(
                  "Ao Vivo",
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
