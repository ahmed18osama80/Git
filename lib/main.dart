import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counters = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Material App Bar',
          ),
          backgroundColor: Colors.orange[700],
          bottomOpacity: 20,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.elliptical(
                10,
                7,
              ),
            ),
          ),
        ),
        body: Center(
          child: CachedNetworkImage(imageUrl: 'https://media.istockphoto.com/photos/young-attractive-anxious-woman-watching-tv-series-and-wrapping-in-big-picture-id1184451163?b=1&k=20&m=1184451163&s=612x612&w=0&h=UA-4jxCstGPeT5m_9mPFcaleKdIARd6PbvgDsIIwyuc=',
          placeholder: (context,url){return const CircularProgressIndicator();},
          errorWidget: (context,url,errorWidget){return const Icon(Icons.error);},),),
          // FadeInImage.assetNetwork(
          //     placeholder: 'assets/Images/Pinwheel.gif',
          //     image:
          //         'https://cdn.pixabay.com/photo/2022/05/02/10/10/siberian-husky-7169324__340.jpg'),
        // body: Stack(
        //   children:  [
        //     const Center(
        //       child: CircularProgressIndicator(),
        //     ),
        //     Center(
        //       child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://cdn.pixabay.com/photo/2022/05/02/10/10/siberian-husky-7169324__340.jpg'),
        //     ),
        //   ],
        // ),
        // body: Column(
        //   children: [
        //     Stack(),
        //     const Image(image: NetworkImage('https://cdn.pixabay.com/photo/2022/05/13/16/22/lake-7194103_960_720.jpg'),fit: BoxFit.cover,height: 100),
        //     const SizedBox(height: 100),
        //     Center(
        //       child: Padding(
        //         padding: const EdgeInsets.all(12.0),
        //         child: Text(
        //           'Results is $counters',
        //           style: const TextStyle(fontSize: 27),
        //         ),
        //       ),
        //     ),
        //     ElevatedButton(
        //       child: const Text('Click Me'),
        //       onPressed: () {
        //         setState(() {
        //           counters++;
        //         });
        //         if (kDebugMode) {
        //           print('counters is $counters');
        //         }
        //       },
        //     ),
        //   ],
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 21,
          ),
        ),
      ),
    );
  }
}
