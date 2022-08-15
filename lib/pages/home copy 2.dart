// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtube_downloader/youtube_downloader.dart';

class HomePage extends StatelessWidget {
  bool isVideo = true;
  YoutubeDownloader youtubeDownloader = YoutubeDownloader();

  HomePage({required this.isVideo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: FutureBuilder<VideoInfo?>(
            future: youtubeDownloader.downloadYoutubeVideo(
                "https://youtu.be/adCFuJtbpSw", "mp3"),
            initialData: null,
            builder: (context, snapshot) {
              print(snapshot.data?.thumbnailUrl);
              print(snapshot.data?.providerUrl);
              print("Why is it not working???");
              return snapshot.hasData
                  ? ListView.builder(itemBuilder: ((context, index) {
                      return Container(
                        color: Color.fromARGB(255, 0, 0, 0),
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: 20.0,
                          left: 18.0,
                          right: 18.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // CircularProgressIndicator()
                            Image(
                              image: AssetImage("assets/images/logo.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 60.0),
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.0,
                                vertical: 24.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Text(
                                      "Download Youtube Videos and music",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(20, 20, 20, 0),
                                      hintText: "Paste youtube link here...",
                                      hintStyle: TextStyle(
                                        color: Color(0xFF9C8B8B),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.0)),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Color(0xFF9C8B8B),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20.0),
                              color: Colors.white,
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Tab container
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        // Expanded( child:
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 12.0,
                                            vertical: 8.0,
                                          ),
                                          child: Opacity(
                                            opacity: 0.8,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                color: Color(0xFFcc0000),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 24.0,
                                                  vertical: 12.0,
                                                ),
                                                child: Text(
                                                  "Video (.mp4)",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        // ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 12.0,
                                            vertical: 8.0,
                                          ),
                                          child: Opacity(
                                            opacity: 0.8,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                color: Color(0xFFcc0000),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 24.0,
                                                  vertical: 12.0,
                                                ),
                                                child: Text(
                                                  "Audio (.mp3)",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 30.0, bottom: 20.0),
                                    child: Image.asset(
                                      "assets/images/display_image.png",
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text("Title: Despicable Me 3"),
                                  Text("Title: Despicable Me 3"),

                                  Text("Title: Despicable Me 3"),

                                  Text("Title: Despicable Me 3"),

                                  Text("Title: Despicable Me 3"),
                                  Text("Title: Despicable Me 3")
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }))
                  : Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
