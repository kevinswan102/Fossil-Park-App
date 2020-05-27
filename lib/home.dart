/***** https://flutter.dev/docs/cookbook/design/drawer ****/
/*
@author: Kevin Swan
Created on 1080 x 1920 flutter emulator
 */
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'RU Fossil Park',
        theme: ThemeData(),
        home: MyHomePage(
          title: 'RU Fossil Park',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var headerText = new Text(
      '\n \n \n  \n \n RU Fossil Park \n \n At Rowan University',
      style: TextStyle(
          fontSize: 14,
          color: Color(
            0xff57150B,
          )),
    );

    var header = new DrawerHeader(
      child: headerText,
      decoration: BoxDecoration(
          color: Color(
        0xffFFCC00,
      )),
    );

    /**** 1st Drawer Item ****/
    var item1Text = new Text('About RU Fossil Park');

    var item1 = new ListTile(title: item1Text, onTap: _onItem1OnTap);

    /**** 2nd Drawer Item ****/
    var item2Text = new Text('Invertebrates');

    var item2 = new ListTile(title: item2Text, onTap: _onItem2OnTap);

    /**** 3rd Drawer Item ****/

    var item3Text = new Text('Vertebrates');

    var item3 = new ListTile(title: item3Text, onTap: _onItem3OnTap);

    /**** 3rd Drawer Item ****/

    var item4Text = new Text('Non-Fossils');

    var item6 = new ListTile(title: item4Text, onTap: _onItem4OnTap);

    var social = new Text(
      'Fossils Found at RU Fossil Park',
    );

    var soc = new ListTile(
      title: social,
      contentPadding: EdgeInsets.only(left: 45),
    );

    var div = new Divider(thickness: 2.0);

    var children = [header, item1, div, soc, item2, item3, item6];

    var listView = new ListView(children: children);

    var drawer = new Drawer(child: listView);

    return new Scaffold(
        drawer: drawer,
        appBar: new AppBar(
          backgroundColor: Color(0xff57150B),
          title: new Text(
            'RU Fossil Park',
            style: TextStyle(
                color: Color(
              0xFFFFCC00,
            )),
          ),
        ),
        body: new Container(
            color: Color(0xFFFFCC00),
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  new Text("\n\n\n"),
                  new Image.asset(
                    'assets/logo.png',
                    width: 250,
                    height: 200,
                  ),
                  new Text(
                    '\n Welcome to the RU Fossil Park App \n',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(
                          0xff57150B,
                        )),
                    textAlign: TextAlign.center,
                  ),
                  new Text(
                    'Click the Menu in the top left corner to navigate the app',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(
                          0xff57150B,
                        )),
                  ),
                ]))));
  }

  void _onItem1OnTap() {
    Navigator.of(context).pushNamed("/about");
  }

  void _onItem2OnTap() {
    Navigator.of(context).pushNamed("FirstPage");
  }

  void _onItem3OnTap() {
    Navigator.of(context).pushNamed("SecondPage");
  }

  void _onItem4OnTap() {
    Navigator.of(context).pushNamed("ThirdPage");
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fossilNames = new List(10);
    fossilNames[0] = "Cucullaea (Clam)";
    fossilNames[1] = "Crassatellites vadosus (Clam)";
    fossilNames[2] = "Turritella vertebroides (Snail)";
    fossilNames[3] = "Oleneothyris harlani (Brachiopod)";
    fossilNames[4] = "Terebratulina atlantica (Brachiopod)";
    fossilNames[5] = "Pycnodonte dissimilaris (Oysters)";
    fossilNames[6] = "Gryphaeostrea vomeri (Oyster)";
    fossilNames[7] = "Thalassinoides sp. Burrow";
    fossilNames[8] = "Peridonella dichotoma (Sponge)";
    fossilNames[9] = "Flabellum mortoni (Coral)";

    var fossilDescription = new List(10);
    fossilDescription[0] =
        "This genus of clam is commonly called a false ark clam and spans the Cretaceous/Paleocene extinction at Edelman Fossil Park. The former mine workers here nicknamed these fossils as ‘squirrel heads’ because of their shape. There are three species preserved at this locality: 1) Cucullaea neglecta - found in the Navesink Formation, 2) Cucullaea vulgaris - found in the lower Hornerstown Formation, and 3) Cucullaea macrodonta - found in upper Hornerstown Formation. Most guests find the common Cucullaea vulgaris. Its species name vulgaris (Latin for \"common\") refers to how frequently this fossil is found. The genus Cucullaea can still be found today and is canned in southeast Asia for human consumption. Like most invertebrate fossils preserved at Edelman Fossil Park, Cucullaea are preserved as internal casts, also known as steinkerns (German for \"stone center \")";
    fossilDescription[1] =
        "Crassatellites is the second most common clam found at Edelman Fossil Park, behind Cucullaea. Crassatellites are flatter than Cucullaea, have more pointed hinges, and smaller \"wing\" projecting behind the hinge. It is likely this clam filtered its food from the water and burrowed into the sand. Crassatellites, like most invertebrate fossils preserved at the site, are preserved as internal casts, also known as steinkerns (German for \"stone center \" )";
    fossilDescription[2] =
        "Turritella was a tall-spired snail that burrowed into the sand and filtered its food from the water. As a snail, it belongs to the class Gastropoda which means \"stomach foot\". Like most invertebrate fossils preserved at the Edelman Fossil Park, Turritella are preserved as internal casts, also known as steinkerns (German for \"stone center\")";
    fossilDescription[3] =
        "Although these fossils may look like clams, they are only distantly related. Oleneothyris belongs to the phylum Brachiopoda not Mollusca (which includes clams). The main difference between brachiopods and clams is that the former lacks symmetry about its hinge; the two valves of the shell are not identical in shape. The one hooks over the other to form the hinge. Brachiopods have existed for over 500 million years. The vast majority of brachiopods found at Edelman Fossil Park are Paleocene in age. Oleneothyris is the larger of the two brachiopod species found at Edelman Fossil Park and, like most invertebrate fossils preserved here, they are preserved as internal casts, also known as steinkerns (German for \"stone center\")";
    fossilDescription[4] =
        "Terebratulina is the smaller of the two brachiopod species found at Edelman Fossil Park. Although these fossils may look like clams they are only distantly related. Terebratulina belongs to the phylum Brachiopoda not Mollusca (which includes clams). The main difference between brachiopods and clams is that the former lacks symmetry about its hinge; the two valves of the shell are not identical in shape. The one hooks over the other to form the hinge. Brachiopods have existed for over 500 million years. The vast majority of brachiopods found at Edelman Fossil Park are Paleocene in age. Like most invertebrate fossils preserved here, they are preserved as internal casts, also known as steinkerns (German for \"stone center\")";
    fossilDescription[5] =
        "This is the only invertebrate preserved at Edelman Fossil Park that preserves as a fossil shell (not as a steinkern). Their shells have been replaced by tiny crystals of pyrite (commonly known as Fool's Gold). The pyrite crystals cause the fossil to look speckled with gold in the sunlight, especially when wet. Their shells are very fragile and are often recovered as fragments. Sometimes at Edelman Fossil Park Pycnodonte can be found preserved as an internal cast, also known as steinkern (German for \"stone center\")";
    fossilDescription[6] =
        "This is a second species of oyster found at the Edelman Fossil Park. Like other oysters, Gryphaeostrea was a filter feeder and ate tiny food particles in the water. It is shaped like a fingernail and, unlike Pycnodonte, is more common to be preserved as internal casts also known as steinkerns (German for \"stone center\") and not replaced with pyrite";
    fossilDescription[7] =
        "The sediment at the Edelman Fossil Park has been over 80% bio-turbated. This means that millions of years ago crustaceans dug burrows in the sea floor. Lobsters are the most likely taxa to have made these burrows as holes to live in. Some of these burrows have since filled and are preserved as casts or as the mud lining and remain hollow";
    fossilDescription[8] =
        "This is one of the most common fossils at Edelman Fossil Park. Sponges (Phylum: Porifera) are one of the oldest groups of multicellular animals on Earth, having evolved over 600 million years ago. They anchor themselves on the sea floor and are filter feeders. The fossils preserved at this site are usually tube like and sometimes branched. They preserve a patterned texture of very small holes, through which they circulated water to filter out bits of organic material";
    fossilDescription[9] =
        "Flabellum was a solitary horn coral unlike most colonial corals living today. As a coral, it had a symbiotic relationship with microorganisms";

    var fossilImage = new List(10);
    fossilImage[0] = 'assets/cucullaea_vulgaris.png';
    fossilImage[1] = 'assets/crassatellites_vadosus.png';
    fossilImage[2] = 'assets/turitella.png';
    fossilImage[3] = 'assets/oleneothyris_harlani.png';
    fossilImage[4] = 'assets/terebratulina.png';
    fossilImage[5] = 'assets/pycnodonte_dissimilaris.png';
    fossilImage[6] = 'assets/gryphaeostrea_vomer.png';
    fossilImage[7] = 'assets/combinedburrow.png';
    fossilImage[8] = 'assets/peridonella_dichotoma.png';
    fossilImage[9] = 'assets/flabellum_mortoni.png';

    return new Scaffold(
      appBar: new AppBar(
          title: new Text('RU Fossil Park'),
          backgroundColor: Color(0xff57150B)),
      body: ListView.separated(
        itemCount: fossilNames.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(fossilNames[index]),
              onTap: () {
                //Navigator.push(context,MaterialPageRoute(
                // builder: (context) => DetailScreen(todo: fossilNames[index])));
                // _detailsDialog(context, fossilNames[index], fossilDescription[index], fossilImage[index]);
                Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(fossilNames[index],
                        fossilDescription[index], fossilImage[index]));
              });
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String description;
  final String image;

  ScreenArguments(this.title, this.description, this.image);
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xff57150B),
          title: new Text(
            'RU Fossil Park',
            style: TextStyle(),
          ),
        ),

        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
              Text("\n"),
              Text(
                args.title,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(
                      0xff57150B,
                    )),
                textAlign: TextAlign.center,
              ),
              new Divider(),
              new Text(
                'Details',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xff57150B,
                    )),
                textAlign: TextAlign.center,
              ),
              new Divider(),
              new Text(args.description),
              new Text(
                '\n',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(
                      0xff57150B,
                    )),
              ),
              new Image.asset(
                args.image,
                width: 200,
                height: 150,
              ),
            ]))));
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fossilNames = new List(9);
    fossilNames[0] = "Coprolites (Fossilized Poop)";
    fossilNames[1] = "Otodus obliquus (Mackerel shark)";
    fossilNames[2] = "Squalicorax pristodonthus (Crow Shark)";
    fossilNames[3] = "Odontaspis cuspidata (Sand Tiger Shark)";
    fossilNames[4] = "Cretolamna appendiculata (Mackerel shark)";
    fossilNames[5] = "Enchodus ferox (Saber-Toothed Herring)";
    fossilNames[6] = "Fish Fin Spine";
    fossilNames[7] = "Fish Vertebra";
    fossilNames[8] = "Shark Vertebra";

    var fossilDescription = new List(9);
    fossilDescription[0] =
        "Fecal matter occasionally fossilizes and can provide information on prehistoric diets. At Edelman Fossil Park, multiple types of coprolites are preserved. Shark coprolites are readily identifiable from their spiral shape as a result of the spiral shaped colon of sharks. Crocodile and turtle coprolites are more cylindrical.";
    fossilDescription[1] =
        "This mackerel shark is only found in the Paleocene at Edelman Fossil Park from about 60 to 45 million years ago. It can be larger than its older relative Cretolamna appendiculata that lived during the Cretaceous Period. Modern mackerel sharks are about 10ft in length, eat smaller fish, and are still found off the north east coast of the United States. Most of what we know about this fossil species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.";
    fossilDescription[2] =
        "This prehistoric shark could grow up to 15 feet. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.";
    fossilDescription[3] =
        "Modern sand tiger sharks live in coastal regions worldwide and can reach lengths of up to 11 feet. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.";
    fossilDescription[4] =
        "This mackerel shark is only found in the Cretaceous at Edelman Fossil Park. It lived from about 90 to 50 million years ago around the world and is considered one of the most successful sharks in history. It is smaller than its younger relative Otodus obliquus that lived during the Paleocene. Modern mackerel sharks are about 10 feet in length, eat smaller fish, and are still found off the north east coast of the United States. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.";
    fossilDescription[5] =
        "The saber-toothed herring was a bony fish found worldwide from 90 to 50 million years ago. At Edelman Fossil Park we most commonly find teeth of this fish. After the fish had earned its nickname, scientists discovered it was actually more closely related to salmon than herring.";
    fossilDescription[6] =
        "These spines helped hold up the dorsal fin of a fish that lived millions of years ago. Many fish species used to live in ancient New Jersey, but few can be identified by a fin spine.";
    fossilDescription[7] =
        "This is a bone from the spine of an ancient fish. It is distinguished from a shark vertebra primarily by its hour-glass shape. Many fish species used to live in ancient New Jersey, but few can be identified by vertebrae.";
    fossilDescription[8] =
        "This is a bone from the spinal column of an ancient shark. Behind a shark's teeth, vertebrae are the next most common element of to fossilize. It is distinguished from a fish vertebra primarily by its hockey puck shape. Many shark species used to live in New Jersey, but few can be identified by vertebrae.";

    var fossilImage = new List(9);
    fossilImage[0] = "assets/croc_coprolite.png";
    fossilImage[1] = "assets/otodus_obliquus.png";
    fossilImage[2] = "assets/squalicorax_pristodontus.png";
    fossilImage[3] = "assets/odontaspis_cuspidate.png";
    fossilImage[4] = "assets/cretolamna_appendiculata.png";
    fossilImage[5] = "assets/enchodus_ferox_tooth.png";
    fossilImage[6] = "assets/fish_spine.png";
    fossilImage[7] = "assets/fish_vertebra.png";
    fossilImage[8] = "assets/shark_vert.png";

    return new Scaffold(
      appBar: new AppBar(
          title: new Text('RU Fossil Park'),
          backgroundColor: Color(0xff57150B)),
      body: ListView.separated(
        itemCount: fossilNames.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(fossilNames[index]),
              onTap: () {
                Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(fossilNames[index],
                        fossilDescription[index], fossilImage[index]));
              });
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fossilNames = new List(5);
    fossilNames[0] = "Concretions";
    fossilNames[1] = "Iron";
    fossilNames[2] = "Vivianite (Mineral)";
    fossilNames[3] = "Bacterial Precipitate (Bacteria Poop)";
    fossilNames[4] = "Quartz (Mineral)";

    var fossilDescription = new List(5);
    fossilDescription[0] =
        "These are rocks that form by small sand and clay grains cementing together over time. Because of this they have a rough and grainy surface texture. The can be any random shape and usually are not symmetrical. Concretions are more common than fossils at the Edelman Fossil Park.";
    fossilDescription[1] =
        "The element iron precipitates from the ground water to form these red-orange, rusty colored rocks commonly called \"Bog Iron\". The orange color forms as a result of oxidation - the same process that causes rust to form on a car.";
    fossilDescription[2] =
        "This is an iron phosphate mineral and often blue and glassy when first found. But this mineral commonly reacts with the oxygen in the air (a process called 'oxidation'; the same process by which a car rusts) to turn white and crusty.";
    fossilDescription[3] =
        "Though not technically bacteria poop, this rock is a mineral precipitate that forms from the waste of the bacteria living in the ground water at Edelman Fossil Park. It is originally tan in color and looks like a sea sponge but is hard. It can be coated with an iron precipitate that is orange in color.";
    fossilDescription[4] =
        "This mineral is clear in color when pure but often picks up trace elements that make it any color. Quartz found at Edelman Fossil Park is often white, yellow, orange, or pink but other colors can be found. The quartz preserved at this site did not form in New Jersey. Instead it was picked up by the glaciers north of here during the last Ice Age and was deposited by the melt water of the receding glaciers at the top of the quarry. It then fell down to the quarry floor where guests can collect it.";

    var fossilImage = new List(10);
    fossilImage[0] = "assets/concretions.png";
    fossilImage[1] = "assets/combinediron.png";
    fossilImage[2] = "assets/vivianite.png";
    fossilImage[3] = "assets/bacteriapoop.png";
    fossilImage[4] = "assets/quartz.png";

    return new Scaffold(
      appBar: new AppBar(
          title: new Text('RU Fossil Park'),
          backgroundColor: Color(0xff57150B)),

      body: ListView.separated(
        itemCount: fossilNames.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(fossilNames[index]),
              onTap: () {
                Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(fossilNames[index],
                        fossilDescription[index], fossilImage[index]));
              });
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

class Events3 extends StatelessWidget {
  Future<void> _detailsDialog(BuildContext context, String message) async {
    return showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text('Event Details'),
          content: new Text(message),
          actions: <Widget>[
            new FlatButton(
                onPressed: () => Navigator.pop(context),
                child: new Text('Close')),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    var events_sun = new List(6);

//populate array with events_sun
    events_sun[0] = "A Service of Many Faiths";
    events_sun[1] = "Black Jack Walk";
    events_sun[2] = "Sweet and Savory Brunch at the Glassworks Eatery";
    events_sun[3] = "Hollybush Tour";
    events_sun[4] = "Family Show - Planetarium Show";
    events_sun[5] = "Stars of the Pharaohs - Planetarium Show";

    var description_sun = new List(6);
    //Populate array with sun events descriptions
    description_sun[0] =
        "Time: 9:00am - TBA\n Location: Chamberlain Student Center Pit\n Cost: Free\n " +
            "An all-faiths service where family members can explore and celebrate what they believe together as one community committed to supporting different faiths and religions.  ";
    description_sun[1] =
        "Time: 11:00am - TBA\n Location: Student Recreation Center\n Cost: Free\n " +
            "Enjoy a 1.2-mile walk around campus, collect tokens/giveaways at  stations along the way.  Return to the Rec Center where you'll be dealt one blackjack hand for a chance to win raffles and prizes.  No start time - come anytime between 11:00am until 12:45pm";
    description_sun[2] =
        "Time: 11:00am - 2:00pm\n Location: Holly Pointe Commons\n Cost: \$10 - Adults, \$7 - Children under 12 (Rowan Students can use meal plans)\n " +
            "Kick off your Sunday in style by joining us for our classic brunch, featuring all your favorite breakfast items, Chef action stations and more.  ";
    description_sun[3] =
        "Time: 12:00pm - 2:00pm\n Location: The Hollybush Mansion at Rowan University\n Cost: Free\n " +
            "Join members of the Rowan History Department for an interactive tour of the Hollybush Mansion!  Hollybush has a long and varied history, first as the home of the prominent Whitney family of Glassboro in the mid-1800's, the site of a US and Russia Cold War Summit in 1967 " +
            "and later as a part of Rowan University.  ";
    description_sun[4] =
        "Time: 2:00 - TBA\n Location: Edelman Planetarium, Science Hall\n Cost: \$2 - Adults, Children and Senior Citizens (under 16 and over 60), and Rowan Students (with ID)\n " +
            "The Family Show series is reccomended for visitors with children 5-10 years old.  The show runs about a half hour, does not include a live presentation and costs only \$2 per person!\n Show details and ticket purchases can be found at www.rowan.edu/planetarium";
    description_sun[5] =
        "Time: 3:00pm - TBA\n Location: Edelman Planetarium, Science Hall\n Cost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n " +
            "Show details and ticket purchases can be found at www.rowan.edu/planetarium";

    return new Scaffold(
        appBar: new AppBar(
            title: new Text('2018 Family Weekend Sponsors'),
            backgroundColor: Color(0xFFFFCC00)),
        body: new Container(
          child: new Center(
            child: new Column(children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: ListView.separated(
                      itemCount: events_sun.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(events_sun[index]),
                            onTap: () {
                              _detailsDialog(context, description_sun[index]);
                            });
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
