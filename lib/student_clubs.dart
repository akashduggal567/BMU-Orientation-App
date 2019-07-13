import 'package:flutter/material.dart';

class StudentClubs extends StatefulWidget {
  @override
  _StudentClubsState createState() => _StudentClubsState();
}

class _StudentClubsState extends State<StudentClubs> {
  List<Container> clubs_list = new List();

  var clubs = [
    {
      'name': 'speakeasy',
      'image': 'speakeasy.jpg',
      'description': 'The Speakeasy Club focuses on the theme of Corporate '
          'Engagement. We strive to make each participant a confident individual '
          'with a magnetic persona embellished with the corporate etiquette’s and '
          'the art of soft skills. Two of our club members Utkarsh and Shitanshu '
          'were awarded for slam poetry outside university.',
      'president_name': 'Manijith Pendota',
      "vice_president_name": "Saatwik Veeramachaneni",
      "president_image": "speakeasy-president.png",
      "vice_president_image": "speakeasy-vicepresident.jpg"
    },
    {
      'name': 'nss',
      'image': 'NSS-Logo.jpeg',
      'description': "NSS Unit-I, BML Munjal University celebrated International "
          "Girl Child Day on 11.10.2018 with the students of Government senior "
          "secondary school, Sidhrawali, Haryana. Dr. Rupa Murghai and "
          "Mr. Vinod assisted the NSS cadets.\n\n The main objectives of National"
          " Service Scheme (NSS) are : \n\n i. understand the community in which "
          "they work \n ii. understand themselves in relation to their community"
          "\n iii. identify the needs and problems of the community and involve"
          " them in problem-solving \n iv. develop among themselves a sense of "
          "social and civic responsibility \n v. utilise their knowledge "
          "in finding practical solutions to individual and community problems \n"
          "vi. develop competence required for group-living and sharing of responsibilities\n "
          "vii. gain skills in mobilising community participation \n "
          "viii. acquire leadership qualities and democratic attitudes \n "
          "ix. develop capacity to meet emergencies and natural disasters and \n"
          "x. practise national integration and social harmony",
    'president_name': 'Ishwar Varshney',
    "vice_president_name": "Anuj Omer",
    "president_image": "nss-president.jpg",
    "vice_president_image": "nss-vicepresident.jpg"
    },
    {
      'name': 'robotics',
      'image': 'robotics.jpg',
      'description': " Robotics Club is to provide students a place to pursue their "
          "interest in both mechanical, electronic, and computer science by "
          "working on large and small scale robotics projects. The club is "
          "open to students with and without experience in engineering and "
          "programming. Teams within the club will design, build, and program "
          "functioning robots using a variety of resources. We offer "
          "students a variety of workshop so that they are able to learn "
          "and explore. It is a place for all tech enthusiast to explore their "
          "interest and capabilities. They would be taught from peers as well "
          "as a technical expertise of this field. \n\n Our goal is to encourage "
          "students to design accessible, innovative projects that build "
          "self-confidence, knowledge and life skills while motivating young "
          "people to pursue opportunities in science, technology and "
          "engineering. Opportunities may include outside competitions such as "
          "techfest IIT BOMBAY, world robotics championship (TECHNOXIAN)and "
          "inside competition within campus",
      'president_name': 'Gannapu Reddy Charith Reddy',
      "vice_president_name": "Narapareddy Kushal Reddy",
      "president_image": "robotics-president.jpg",
      "vice_president_image": "robotics-vicepresident.jpg"
    },
    {
      'name': 'acm',
      'image': 'acm.jpeg',
      'description': "The Association for Computation Machinery (ACM) is "
          "a multi-faceted technical club involved in guiding amateur "
          "engineers towards achieving their goals. We work on numerous "
          "technical fronts and have a history of making incredible projects "
          "like a Terra-Mapping Sandbox, a motion controller project among "
          "others. We are also the driving force behind HackBMU, BMU’s very own "
          "Hackathon (our flagship event), which is a convention of the "
          "most creative young minds in and around Delhi and aims to contribute "
          "to building up a network in order to achieve greater objectives. "
          "Monthly contests and workshops are also part of our vast array "
          "of activities. These events encourage healthy competition between "
          "peers and liven up the campus.",
      'president_name': 'Amoghavarsha Rao',
      "vice_president_name": "Shivang Ahuja",
      "president_image": "acm-president.jpg",
      "vice_president_image": "acm-vicepresident.jpg"

    },
    {
      'name': 'sierra',
      'image': 'sierra_logo.png',
      'description': "Sierra has been fundamental in organising major "
          "flagship events in the University, and has brought in almost all the "
          "externally licensed events. This includes TEDx, Hult Prize, and MUN."
          "\n Sierra organised the first TEDx in the month of February in 2017,"
          " which was followed by a TEDx Salon in the month of November 2017. "
          "We called a total of 16 speakers in these two events. Another TEDx "
          "event was organised on 22 August 2018.\n Sierra organised Hult"
          " Prize in December 2017 and November 2018, which is an international"
          " competition related to social entrepreneurship, offering the "
          "winners a sum of 1 million USD.\n Sierra also launched a fund raising"
          " initiative by name Money Muffin. Anyone who’s in need for funds to "
          "support their extra-curricular activities can organise their own food"
          " fest and raise money. In our first iteration, we raised INR70,000 to"
          " support the trip of Hult Prize winners to Singapore. \n The winners"
          " of Hult Prize 2018 at BMU went to Singapore to present their idea,"
          " competing with winners from over 100 countries. The winners of Hult"
          " Prize 2019 at BMU went to Dubai . \n Sierra also organised a MUN "
          "during The 67th Milestone 2019 fest which had around 100 participants."
          " Sierra further plans to organise several MUN related events .",
      "president_name": "Chanakya Kilaru",
      "vice_president_name": "Manas Yadav",
      "president_image": "sierra-president.jpeg",
      "vice_president_image": "sierra-vicepresident.jpeg",
    },
    {
      'name': 'socialmedia',
      'image': 'socialmedia_logo.jpg',
      'description': " Social media marketing (SMM) is a form of Internet "
          "marketing that utilizes social networking websites as a marketing "
          "tool. The goal of SMM is to produce content that users will share "
          "with their social network to help university to increase brand "
          "exposure and broaden student reach. We are the back hand "
          "representatives of BML Munjal University.",
      "president_name": "Jyoti Srivastav",
      "vice_president_name": "Mridul Gupta",
      "president_image": "socialmedia-president.jpg",
      "vice_president_image": "socialmedia-vicepresident.jpg",
    },
    {
      'name': 'savera',
      'image': 'savera_logo.jpg',
      'description': " SAVERA (Students As Volunteers in Education to Reach "
          "and Assist), is a club and student NGO initiative of BML Munjal "
          "University, which started in the year 2014. The aim of SAVERA is "
          "to provide education and support to the students of weaker sections "
          "of the society. The member students work with a pledge to literate,"
          " educate and ameliorate. Since its inception, SAVERA has been "
          "tirelessly working to dispel the darkness of nascence, from the life"
          " of unprivileged children.\n\n They arrange co-curricular activities"
          " and ensure that maximum students participate and get the best from "
          "them. At times, SAVERA provides them with food and clothing.\n\n To "
          "create a suitable environment of education, SAVERA carries out "
          "literacy campaigns in nearby villages and persuades people to "
          "educate their children. SAVERA also assists them in school "
          "admissions.",
      "president_name": "Lahari Kasarla",
      "vice_president_name": "Sai Pavan Kumar",
      "president_image": "savera-president.jpg",
      "vice_president_image": "savera-vicepresident.jpg",
    },
      {
      'name': 'tsec',
      'image': 'tsec_logo.jpg',
      'description': "The strategy and entrepreneurship club organised mainly "
          "two events in 2018-2019 session.\n\nMBA Trek- Interview Ready "
          "Competition for MBA.\nMBA Trek was an online event held In month of "
          "Dec- January .Objective of event was to make MBA Students corporate "
          "ready with building Resume and Introducing themselves in unique way "
          "differentiating from their batch members.\n\n “HR Trends in Digital Age”"
          "\n\nHR Talk’19\nDate: 8th March 2019\n\nTSEC BMU presented HR Panel "
          "discussion with the experienced professionals from renowned"
    "organizations on 8 February 2019 during The 67th Milestone 2019. The "
          "panellists were :\n\n1. Mr. Amulya Sah, Senior Director HR, Samsung "
          "R&D Institute India\n2. Mr. Indranil Roy, Learning and Development "
          "Lead, Accenture India\n3. Mr. Param Puneet Singh, Senior Manager, "
          "Accenture\n4. Ms. Archna Bhardwaj, HR Business Partner, Clicksoftware"
          "\n5. Ms. Runa Maitra, Founder & Director People Talent International\n\n"
          "TSEC Introduced Corporate Engagement Team to HR Visited on Campus for "
          "event to connect and explore possible opportunities and long term "
          "relationship with corporates.",
      "president_name": "Shubhi Jain",
      "vice_president_name": "Sai Sandesh Burada",
      "president_image": "tsec-president.jpg",
      "vice_president_image": "tsec-vicepresident.jpg",
    },
    {
      'name': 'culinary',
      'image': 'culinary_logo.jpg',
      'description': " The Culinary Club provides an environment for students "
          "to, socialize, be creative, learn cooking skills, and have fun. "
          "Culinary Club is open to any student at BMU. The students are "
          "encouraged to participate and help lead the club in cooking "
          "activities.\n\nThe purpose of our Culinary Club is to help spread "
          "knowledge about food through teaching and exploring the different "
          "aspects of the Culinary Arts. Our goal is to inspire others to "
          "pursue their Culinary Dreams.",

      "president_name": "Javvaji Akhil Chowdary",
      "vice_president_name": "Sanjana Kothapalli",
      "president_image": "culinary-president.jpg",
      "vice_president_image": "culinary-vicepresident.jpg",
    },
    {
      'name': 'adventure',
      'image': 'adventure_logo.jpg',
      'description': " ‘Now it’s time to travel the world by compass rather "
          "than a clock!’ \n\n Adventure club of BMU is all about providing "
          "exposure to the students. It not only helps students to come out "
          "of their comfort zone and experience the adventure but also "
          "increases the interactions among them. Adventure helps individuals "
          "to develop qualities like discipline, team building, patience and "
          "leadership. The club has a lot of plans for the student community "
          "to help them develop these qualities which includes regular "
          "adventure and excursion trips, adventure activities like wall "
          "climbing and abseiling and even some adventure sports like off road "
          "cycling and parkour (free running). These activities would help "
          "students to have the best of their experiences and we hope the "
          "learnings from these helps every student associated with us in their "
          "lives.",
      "president_name": "Yash Verma",
      "vice_president_name": "Garimella Likith",
      "president_image": "adventure-president.jpg",
      "vice_president_image": "adventure-vicepresident.jpg",
    },
    {
      'name': 'fight',
      'image': 'fight_logo.jpg',
      'description': "Fight Club as an entity is based on the tripod stand of "
          "authenticity, enjoyability and safety and therefore you can be rest "
          "assured that your health and safety will be our highest priority. "
          "Based on your level of fitness and experience you will work have "
          "access to beginners, intermediate or advance sessions. Sessions will "
          "be an hour long which would include warm up and cool down. A lot of "
          "focus will be on improving your technique and your conditioning. "
          "Sparring will only be optional and will only be carried out during "
          "the advanced sessions and not during any other sessions.\n\nMMA: "
          "Mixed Martial Arts is the worlds fastest growing sport. In an MMA "
          "class you get to work on various skills, from standup (boxing) to "
          "grappling (wrestling and Jiu Jitsu), you get to put it all together. "
          "\n\nJiu Jitsu Nogi: Brazilian Jiu Jitsu (Bjj) is the art of fighting "
          "on the ground. BJJ incorporates numerous holds and submissions which "
          "when applied properly can even assist a much smaller person control "
          "and dominate a larger one. Arguably the most strategic of all martial"
          " arts.",
      "president_name": "Veeresh Choudhary",
      "vice_president_name": "Yennapusala Nithin Reddy",
      "president_image": "fight-president.jpg",
      "vice_president_image": "fight-vicepresident.jpg",
    },
    {
      'name': 'udaan',
      'image': 'udaan_logo.jpg',
      'description': " Udaan is an empowerment club at BML Munjal University "
          "'that aims to bring focus on gender equality. The target is to "
          "eradicate the mental blocks which hamper one’s ability to appreciate"
          " each person’s individuality, and flourishing every persona, be it "
          "in relation to sexuality, race, mental health, discrimination, or "
          "simply being original.",
      "president_name": "Akshita Lomsh",
      "vice_president_name": "Saijal Goyal",
      "president_image": "udaan-president.jpg",
      "vice_president_image": "udaan-vicepresident.jpg",
    },
    {
      'name': 'pac',
      'image': 'pac_logo.jpg',
      'description': "Performing arts club mainly organised four events during 2018-2019 session ."
          "\n\nExtravaganza\nExtravaganza is a musical night full of spirited "
          "performers and enthusiastic audience swaying along with the melodious"
          " music to the hard metal rock performances .\n\nBattle Of the Bands\n"
          "Battle of the Bands is a distinctive event which involves various bands "
          "disclosing their skills in different genres related to music. "
          "This serves as an opportunity for new and undiscovered bands to "
          "showcase their talents in musical arrangement, song composition, "
          "instrumentation, and vocals.\n\nBeat The Street\nBeat the Street is a "
          "one-of-its-kind group dance competition that tests finesse and "
          "artistry in showcasing coordinated group choreography. With an equal "
          "weight in judgment given to execution, presentation and creativity, "
          "it is fashioned to test the unity of the participating teams.\n\nUnplugged"
          "\nUnplugged is a group singing event where the teams bring out the "
          "true soul of music and cover the best songs using basic instruments "
          "and impress the crowd.",
      "president_name": "Venkat Loukik Gatta",
      "vice_president_name": "G. Vishal Bhardwaj",
      "president_image": "pac-president.jpg",
      "vice_president_image": "pac-vicepresident.jpg",
    },
    {
      'name': 'strokes',
      'image': 'strokes_logo.jpg',
      'description': " Art is freedom. Being able to bend things most people see "
          "as a straight line ”. Strokes club provides an opportunity to the"
          " students to let their imagination run wild and provides them with "
          "the sight to see things in a different way. To be noted that art "
          "enables us to find ourselves and lose ourselves at the same time.",
      "president_name": "Madan Vamshidhar Reddy",
      "vice_president_name": "Vilekha Ghanta",
      "president_image": "strokes-president.jpg",
      "vice_president_image": "strokes-vicepresident.jpg",
    },
    {
      'name': 'enactus',
      'image': 'enactus_logo.jpg',
      'description': " Enactus is an international nonprofit organization "
          "dedicated to inspiring students to improve the world through "
          "entrepreneurial action. We provide a platform for teams of "
          "outstanding university students to create community development "
          "projects that put people’s own ingenuity and talents at the center "
          "of improving their livelihoods. Guided by educators and supported by "
          "business leaders, our students take the kind of entrepreneurial "
          "approach that empowers people to be a part of their own success. "
          "Our work transforms both the lives of people we serve, and in turn, "
          "the lives of our students as they develop into more effective, "
          "values-driven leaders.\n\nLike in business, we believe that "
          "competition encourages creativity and rewards results. For Enactus,"
          "it means more lives impacted.",
      "president_name": "Aparna Saripella",
      "vice_president_name": "Mayank Dev",
      "president_image": "enactus-president.jpg",
      "vice_president_image": "enactus-vicepresident.jpg",
    },
    {
      'name': 'liquid',
      'image': 'liquid_logo.jpg',
      'description': " LiQuiD, which expands to the Literary, Quizzing and "
          "Debating Society of the BML Munjal University is one such club that "
          "serves the purpose of bringing together and providing a "
          "platform(literally) to all the opinionated, eloquent, intellectual "
          "as well the literary artisans from among the student community. "
          "With it’s many captivating and popular events such as “Chai pe"
          " Charcha”, Mock Parliamentary Debates etc. this club tries to invoke "
          "while simultaneously instilling the principles of awareness, voicing"
          " concrete opinions as well as literacy. This club is also entrusted "
          "with the issue of the Annual Club and College Magazine which goes by"
          " the name “Tsundoku.” In the 67th Milestone, 2019 LiQuiD also hosted "
          "its General Quiz Competition called InQUIZitive 2019.",
      "president_name": "Harsh Tripathi",
      "vice_president_name": "G. Kiran Naga Kireet",
      "president_image": "liquid-president.jpg",
      "vice_president_image": "liquid-vicepresident.jpg",
    },
    {
      'name': 'sata',
      'image': 'sata_logo.jpg',
      'description': " SATA club gathers together and aim to provide you a great"
          " opportunity to participate and expand your knowledge horizon. You "
          "can gain hands-on learning experience through science and technology"
          " appreciation. The SATA club came into existence with the vision of "
          "creating expertise in technical knowledge and achieve an in-depth "
          "understanding of latest technological trends. SATA provides a strong "
          "foundation upon which a student can successfully establish their "
          "future implementing their creative ideas.\n\nSATA HUB has come up "
          "with an aim of having interactive education system. We provide you "
          "a platform where like-minded individuals interact with mentors having"
          " experiential knowledge in the same fields you’ve always wanted to "
          "learn and master in it. Our Hub aims at providing guidance for 15 "
          "such broad domains in the field of Engineering. You can exchange "
          "information, share ideas, work on any project and make things happen."
          " At SATA HUB, we’re committed to providing the highest quality "
          "education focused on leadership, innovation and advanced skills. "
          "Our program is flexible and our teachers are the best in their field. "
          "So if you’re ready to roll up your sleeves, learn a new trade and"
          " make new friends – get in touch today.",
      "president_name": "Pallerla Likitha",
      "vice_president_name": "Nidadavolu Chukshith Sai Sri Ram",
      "president_image": "sata-president.jpg",
      "vice_president_image": "sata-vicepresident.jpg",
    },
    {
      'name': 'automobile',
      'image': 'automobile_logo.jpg',
      'description': " The Automobile Club of BMU comprises of a group of "
          "hardworking individuals who share a common passion-automobiles. "
          "Our love for the latest technologies and innovations in the realm "
          "of automobiles drives us to endeavor to design and fabricate vehicles "
          "of our own. We take part in several competitions like SUPRA SAE, "
          "BAJA SAE, ECOCART and many more. Our love for Automobiles also drives"
          " us to spread this knowledge and help ignite this passion in others."
          " We organise lectures on Automobiles and their various sub-systems. "
          "We also hold workshops to teach some high end softwares such as NX10"
          ", NX12, Solidworks, Lotus Shark, ANSYS, SimScale etc ."
          "We provides various opportunities to both mechanical and electrical "
          "engineers. \n\n SAE SUPRA: This is India’s biggest formula event "
          "conducted by society of automotive engineering. SUPRA SAE is a "
          "competition where teams have to design, simulate and fabricate a "
          "Formula type car. The 1st round of the selection process includes "
          "presenting a CAD Model of the chassis to a panel of experts. Along "
          "with the model, the team is expected to present a brief report of all"
          " the other sub-systems in the car such as the Engine, Powertrain, "
          "Brakes, Suspension, Steering and Electrical systems. The main event "
          "takes place on a span of a week. The first round is a Technical "
          "Inspection where a rigorous check is done by officials to ensure "
          "the safety aspect is satisfied. The next rounds are the Brake Test, "
          "Noise Test and Tilt Test. The teams that qualify from there take part "
          "in the Endurance Race. We are currently working on this project & "
          "its our second time into the competition.\n\nECO CART: Eco kart is a "
          "National Event for students pursuing Engineering Degree or Diploma. "
          "The Competition is to design and fabricate a single passenger Kart "
          "which is operated via a battery.",
      "president_name": "Aman Singh",
      "vice_president_name": "E. Aditya Krishna Sai",
      "president_image": "automobile-president.jpg",
      "vice_president_image": "automobile-vicepresident.jpg",
    },
    {
      'name': 'photography',
      'image': 'photography_logo.jpg',
      'description': "The Photography Club at the BML Munjal University will "
          "exist to serve a plenitude of purposes. The members of the club will"
          " get to see the art of photography, with lectures from volunteer "
          "presenters, in-group critique of their photographs, exploring various "
          "forms of photography and opportunities to visit local photography "
          "hotspots. Additionally, it is the goal of the club to turn our hobby"
          " and passion into something that will exist to benefit the entire "
          "BMU community. Service Photography will be one of the primary goals "
          "of the club, and it will enable both novice and experienced "
          "photographers the opportunities to take pictures at various events on"
          " campus.",
      "president_name": "Vaishnava Samudrala",
      "vice_president_name": "Ganni Venkata Satya Pranav",
      "president_image": "photography-president.jpg",
      "vice_president_image": "photography-vicepresident.jpg",
    },
    {
      'name': 'environmental',
      'image': 'environmental_logo.png',
      'description': "A clean environment is exceptionally important to carry on "
          "with a tranquil and solid life. Be that as it may, our environment is "
          "getting dirty day by day on account of some carelessness of people. "
          "It is an issue which everybody must think about particularly our "
          "future generation.\n\nThe Environment club is a voluntary group "
          "comprising of students and a teacher which promotes participation of "
          "students in learning about and working towards the conservation and "
          "sustainability of their environment.\n\nOur main aim is to work in "
          "the field of environment and social welfare. We have some good ideas"
          " which will not only save the environment and increase environmental "
          "awareness but will also provide employment to the people. We can "
          "together increase the Environmental awareness among the BMU society "
          "and faculty in various ways. BMU students can get a platform to "
          "implement widespread improvements in society through Social "
          "Entrepreneurship Skills and can even learn Event Organizational as "
          "well.",
      "president_name": "Shivam Kumar",
      "vice_president_name": "K. Shanmukh",
      "president_image": "environmental-president.jpg",
      "vice_president_image": "environmental-vicepresident.jpg",
    },
    {
      'name': 'scimat',
      'image': 'scimat_logo.jpg',
      'description': " The SCIMAT club is all about realising the importance of "
          "the science and mathematics and the things one can do with their "
          "applications. In the accomplishment of this purpose it proceeds with "
          "engagement of various coding courses, mathematical and scientific "
          "softwares and brainstorming mathematical problems.",
      "president_name": "Yash Patil",
      "vice_president_name": "Abhinav Gupta",
      "president_image": "scimat-president.jpg",
      "vice_president_image": "scimat-vicepresident.jpg",
    },

  ];

  _populate_clubs_list() async {
    for (var i = 0; i < clubs.length; i++) {
      final club_index_selected = clubs[i];
      final String club_image = club_index_selected['image'];

      clubs_list.add(Container(
          padding: EdgeInsets.all(5.0),
          child: Card(
            child: Hero(
              tag: club_index_selected['name'],
              child: Material(
                child: InkWell(
                  onTap: () {
                    print(club_index_selected['name']);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Club_info(
                        name: club_index_selected['name'],
                        club_logo: club_image,
                        club_description: club_index_selected['description'],
                        president_name: club_index_selected["president_name"],
                        president_image: club_index_selected["president_image"],
                        vice_president_name: club_index_selected["vice_president_name"] ,
                        vice_president_image: club_index_selected["vice_president_image"],

                      );
                    }));
                  },
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(
                            Colors.yellow.withOpacity(0.2), BlendMode.dstOut),
                        image: ExactAssetImage(
                            "assets/images/clubs_logos/$club_image"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _populate_clubs_list();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
//        appBar: AppBar(
//          title: Text("Akash"),
//        ),
          body: Container(
              //Parent Container
              padding: EdgeInsets.all(8.0),
              height: screen_height,
              width: screen_width,
              color: Colors.blue[100],
              child: GridView.count(
                crossAxisCount: 2,
                children: clubs_list,
//                Container(
//                  // CONTAINER IN WHICH CARD IS PLACED
////                    color: Colors.black,
//                  decoration: BoxDecoration(
////                    color: Colors.blue,
//                  ),
//                  margin: EdgeInsets.all(4.0),
//                  child: InkWell(
//                    onTap: (){
//                      print("Card OF CLUB clicked");
//                      Navigator.push(context, MaterialPageRoute(builder: (context){
//                        return Club_info();
//                      }));
//                    },
//                    child: Card(
//                        elevation: 10,
//                        child:  Hero(
//                          tag: 'photo',
//                          child: Container(
//                            child: Container(
//                              color: Colors.white24,
//                              width: MediaQuery.of(context).size.width,
////                            child: Center(
////                              child: new Text(
////                                  'SATA',style: TextStyle(fontSize: 30.0),
////                              ),
////                            ),
//                            ),
//                            alignment: Alignment(-1, 1),
//                            decoration: new BoxDecoration(
//                              color: Colors.blue[100],
//                              image: new DecorationImage(
//                                fit: BoxFit.cover,
//                                colorFilter: new ColorFilter.mode(Colors.yellow.withOpacity(0.2), BlendMode.dstOut),
//                                image: ExactAssetImage("assets/images/clubs_logos/speakeasy.jpg"),
//                                ),
//                              ),
//                            ),
//                        ),
//                        ),
//                  ),
//                ),

//              ],
              ))),
    );
  }
}

class Club_info extends StatelessWidget {
  final String name;
  final String club_logo;
  final String club_description;
  final String president_name;
  final String vice_president_name;
  final String president_image;
  final String vice_president_image;

  Club_info({
    this.club_logo,
    this.name,
    this.club_description,
    this.president_name,
    this.vice_president_name,
    this.president_image,
    this.vice_president_image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue[300],
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    child: Hero(
                      tag: name,
                      child: Container(
                        margin: EdgeInsets.only(left: 74.0, right: 74.0),
                        child: Container(
//                        color: Colors.white24,
                          width: MediaQuery.of(context).size.width,
//                            child: Center(
//                              child: new Text(
//                                  'SATA',style: TextStyle(fontSize: 30.0),
//                              ),
//                            ),
                        ),
//                      alignment: Alignment(-1, 1),
                        decoration: new BoxDecoration(
//                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                        color: Colors.blue[100],
                          image: new DecorationImage(
                            fit: BoxFit.fill,
//                          colorFilter: new ColorFilter.mode(
//                              Colors.yellow.withOpacity(0.2), BlendMode.dstOut),
                            image: ExactAssetImage(
                                "assets/images/clubs_logos/$club_logo"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
//                    height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0))),
                  child: ListView(
                    children: <Widget>[
                      // IMAGE CONTAINER - containing club logo
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height * 2.0,
                            minHeight:
                                MediaQuery.of(context).size.height * 0.37,
                          ),

//                            height: MediaQuery.of(context).size.height*0.37,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            color: Colors.grey[300],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              club_description,
                              style:
                                  TextStyle(fontSize: 22.0, wordSpacing: 2.0),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),
                      // CONTAINER - description for President and Vice President
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 220,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
//                              color: Colors.pink[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
//                                  color: Colors.yellow[100],
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    child: ListTile(
                                      leading: Image.asset(
                                        "assets/images/club_heads/$name/$president_image",
                                        fit: BoxFit.fill,
                                      ),
                                      title: Text(president_name,
                                          style: TextStyle(fontSize: 18.0)),
                                      subtitle: Text('President'),
//                                        trailing: Icon(Icons.more_vert),
                                      isThreeLine: true,
                                    ),
                                  ),
                                  Card(
                                    child: ListTile(
                                      leading: Image.asset(
                                        "assets/images/club_heads/$name/$vice_president_image",
                                        fit: BoxFit.fill,
                                        width: 50.0,
//                                      height: 80.0,
                                      ),
                                      title: Text(
                                        vice_president_name,
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                      subtitle: Text('Vice - President'),
//                                        trailing: Icon(Icons.more_vert),
                                      isThreeLine: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
