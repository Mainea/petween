import 'package:flutter/material.dart';
import 'bucketlist.dart';
import 'expenselist.dart';



class NyangGaeBuPage extends StatefulWidget {
  @override
  _NyangGaeBuPageState createState() => new _NyangGaeBuPageState();
}

class _NyangGaeBuPageState extends State<NyangGaeBuPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('냥계부'),
          backgroundColor: Color(0xFFFFCA28),
          leading: Text(''),
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Color.fromRGBO(255, 202, 185, 40),
            unselectedLabelColor: Colors.white70,
            labelColor: Color.fromRGBO(255, 90, 90, 100),
            tabs: <Widget>[new Tab(text: "지출목록"), new Tab(text: "버킷리스트")],
          ),
        ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom:48.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xFFFFCA28),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {

            Navigator.of(context).pushReplacementNamed('/listadd');
          },
          heroTag: null,
        ),
      ),
      body: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  ExpenseListPage(),
                  BucketListPage(),
                ],
              ),);

  }
}