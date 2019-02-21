import 'package:flutter/material.dart';
import 'package:dvbnews_app/models/api.dart';
import 'package:dvbnews_app/models/articles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DVB News',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'DVB News'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Posts> _posts = [];

  @override
  void initState() {
    super.initState();
    getArticles().then((posts) {
      setState(() {
        _posts = posts;
      });
    });
  }

  List<Widget> buildListTiles() {
    return _posts
        .map((post) => ListTile(
              leading: CircleAvatar(
                child: Image.network(
                  'http://via.placeholder.com/300',
                  scale: 0.2,
                ),
              ),
              title: Text('Title: ${post.id} by ${post.id}'),
              subtitle: Text(
                'Date of published: ${post.id} with ${post.id}',
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        child: AnimatedCrossFade(
          firstChild: Center(
            child: CircularProgressIndicator(),
          ),
          secondChild: ListView(
            shrinkWrap: true,
            children: buildListTiles(),
          ),
          crossFadeState: _posts.isNotEmpty
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: Duration(milliseconds: 600),
        ),
        onRefresh: () async {
          getArticles().then((posts) {
            setState(() {
              _posts = posts;
            });
          });
        },
      ),
    );
  }
}
