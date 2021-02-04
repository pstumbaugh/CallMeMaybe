import 'imports.dart';

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple, //main title background color
      ),
      home: DefaultTabController(
        length: 3, //number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Call Me Maybe'), //title of app
            bottom: TabBar(
              indicatorColor: Colors.yellowAccent, //tab bar indicator color
              tabs: [
                //TABS (icons)
                Tab(icon: Icon(Icons.face)),
                Tab(icon: Icon(Icons.ballot)),
                Tab(icon: Icon(Icons.question_answer)),
              ],
            ),
          ),
          body: TabBarView(
            //what's in the tabs
            children: [
              Profile(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
