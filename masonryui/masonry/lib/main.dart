import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered Image Grid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageTile(),
    );
  }
}

List<StaggeredGridTile> _staggeredTiles = const <StaggeredGridTile>[
  StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: _ImageTile('https://picsum.photos/200/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 1,
    child: _ImageTile('https://picsum.photos/201/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 2,
    child: _ImageTile('https://picsum.photos/202/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: _ImageTile('https://picsum.photos/203/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: _ImageTile('https://picsum.photos/204/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 2,
    child: _ImageTile('https://picsum.photos/205/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: _ImageTile('https://picsum.photos/206/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 3,
    mainAxisCellCount: 1,
    child: _ImageTile('https://picsum.photos/207/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: _ImageTile('https://picsum.photos/208/300/?random'),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 1,
    child: _ImageTile('https://picsum.photos/209/300/?random'),
  ),
];

// List<Widget> _tiles = const <Widget>[
//   _ImageTile('https://picsum.photos/200/300/?random'),
//   _ImageTile('https://picsum.photos/201/300/?random'),
//   _ImageTile('https://picsum.photos/202/300/?random'),
//   _ImageTile('https://picsum.photos/203/300/?random'),
//   _ImageTile('https://picsum.photos/204/300/?random'),
//   _ImageTile('https://picsum.photos/205/300/?random'),
//   _ImageTile('https://picsum.photos/206/300/?random'),
//   _ImageTile('https://picsum.photos/207/300/?random'),
//   _ImageTile('https://picsum.photos/208/300/?random'),
//   _ImageTile('https://picsum.photos/209/300/?random'),
// ];

class ImageTile extends StatelessWidget {
  const ImageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Staggered Image Grid'),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              children: _staggeredTiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            )));
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile(this.gridImage);

  // ignore: prefer_typing_uninitialized_variables
  final gridImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0x00000000),
      elevation: 3.0,
      child: GestureDetector(
        onTap: () {
          // ignore: avoid_print
          print("hello");
        },
        child: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(gridImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        )),
      ),
    );
  }
}
