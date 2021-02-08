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
            title: title('Call Me Maybe'),
            bottom: tabBar(),
          ),
          body: tabs(),
        ),
      ),
    );
  }

  Widget tabs() {
    return TabBarView(
      //what's in the tabs
      children: [
        Profile(),
        Icon(Icons.directions_transit),
        Question(),
      ],
    );
  }

  Widget tabBar() {
    return TabBar(
      indicatorColor: Colors.yellowAccent, //tab bar indicator color
      tabs: [
        //TABS (icons)
        Tab(icon: Icon(Icons.face)),
        Tab(icon: Icon(Icons.ballot)),
        Tab(icon: Icon(Icons.question_answer)),
      ],
    );
  }

  Widget title(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.yellow),
    );
  }
}
