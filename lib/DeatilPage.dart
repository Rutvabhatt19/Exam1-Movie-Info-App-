import 'package:flutter/material.dart';
import 'package:practical_exam_one/Homepage.dart';

import 'package:practical_exam_one/MovieProvider.dart';
import 'package:provider/provider.dart';

class Detailpage extends StatefulWidget {
  int i;
  Detailpage(this.i);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Detailpagestate(i: i);
  }
}

class Detailpagestate extends State<Detailpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Movieprovider>(context, listen: false).Foruri();
  }

  int i;
  Detailpagestate({required this.i});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final pro = Provider.of<Movieprovider>(context, listen: false);
    pro.Foruri();
    return Consumer(
      builder: (context, Movieprovider movieprovider, child) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Color(0xff1F2327),
              title: Text('$a'),
            ),
            backgroundColor: Color(0xffDFD3C8),
            body: ListView.builder(
              shrinkWrap: true,
              itemCount: movieprovider.list.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image(
                          image: NetworkImage(
                            '${Posters[i]}',
                          ),
                          height: 300,
                          width: 200,
                          fit: BoxFit.fill,
                          repeat: ImageRepeat.noRepeat,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        defaultColumnWidth: FixedColumnWidth(160),
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Movie name '),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${movieprovider.list[index].title}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Release Date '),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${movieprovider.list[index].year}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Rated'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${movieprovider.list[index].rated}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Released'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].released}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Runtime'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].runtime}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Genre'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${movieprovider.list[index].gener}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Director'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].director}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Writer'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].writer}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Actors'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].actors}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Plot'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${movieprovider.list[index].plot}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Language'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].language}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Country'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].country}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Awards'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].awards}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Matascore'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  '${movieprovider.list[index].metascore}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('IMDb rating'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  '${movieprovider.list[index].imdbrating}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('IMDb votes'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  '${movieprovider.list[index].imdbvotes}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('IMDb Id'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].imdbid}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Type'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${movieprovider.list[index].type}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('DVD'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${movieprovider.list[index].dvd}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Boxoffice Collection'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  '${movieprovider.list[index].boxoffice}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Production'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  '${movieprovider.list[index].production}'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Websites to watch'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text('${movieprovider.list[index].website}'),
                            ),
                          ]),
                        ],
                        border: TableBorder.all(
                          color: Colors.black,
                          width: 2,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ));
      },
    );
  }
}
