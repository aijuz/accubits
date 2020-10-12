import 'package:accubits/src/bloc/user_bloc.dart';
import 'package:accubits/src/models/article_list_response.dart';
import 'package:accubits/src/utils/constants.dart';
import 'package:accubits/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  ScrollController _scrollController = new ScrollController();

  ArticleListResponse result;

  @override
  void initState() {
    userBlocSingle.getArticleList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(0, 10),
        child: AppBar(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
            child: new Text(
              "News feeds",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
            ),
          ),
          StreamBuilder<ArticleListResponse>(
              stream: userBlocSingle.articleListResponse,
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? Expanded(
                        child: ListView.builder(
                            itemCount: snapshot.data.articles.length,
                            scrollDirection: Axis.vertical,
                            controller: _scrollController,
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            itemBuilder: (bc, index) {
                              return GestureDetector(
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15))),
                                    child: Container(
                                      height:
                                      screenHeight(context, dividedBy: 2.5),
                                      width:
                                      screenWidth(context, dividedBy: 1.5),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 15,
                                              left: 15,
                                              right: 10,
                                              bottom: 10,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      snapshot
                                                          .data
                                                          .articles[
                                                      index]
                                                          .title ==
                                                          null
                                                          ? ""
                                                          : snapshot
                                                          .data
                                                          .articles[index]
                                                          .title,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          fontSize: 16),
                                                      overflow:
                                                      TextOverflow.visible,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight(
                                                        context,
                                                        dividedBy: 6),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      snapshot
                                                                  .data
                                                                  .articles[
                                                                      index]
                                                          .description ==
                                                          null
                                                          ? ""
                                                          : snapshot
                                                          .data
                                                          .articles[index]
                                                          .description,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          fontSize: 14),
                                                      overflow:
                                                      TextOverflow.visible,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(.50),
                                          borderRadius:
                                          BorderRadiusDirectional.only(
                                              topStart: Radius.circular(15),
                                              topEnd: Radius.circular(15),
                                              bottomStart:
                                              Radius.circular(15),
                                              bottomEnd:
                                              Radius.circular(15)),
                                          image: DecorationImage(
                                              image: NetworkImage(snapshot
                                                  .data
                                                  .articles[index]
                                                  .urlToImage !=
                                                  null
                                                  ? snapshot
                                                  .data
                                                  .articles[index]
                                                  .urlToImage
                                                  : Constants.imageSample[0]),
                                              fit: BoxFit.cover)),
                                    )),
                                onTap: () async {
                                  if (await canLaunch(
                                      snapshot.data.articles[index].url)) {
                                    await launch(
                                        snapshot.data.articles[index].url);
                                  } else {
                                    throw 'Could not launch';
                                  }
                                },
                              );
                            }),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                            child: JumpingDotsProgressIndicator(
                          fontSize: 50.0,
                        )),
                      );
              }),
        ],
      ),
    );
  }
}
