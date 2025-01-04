import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class BonfireScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/background video.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stroll Bonfire",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "22h 00m",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.people, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "103",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              // Question and Options
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://randomuser.me/api/portraits/women/28.jpg"),
                          radius: 28,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            "What is your favorite time of the day?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "\"Mine is definitely the peace in the morning.\"",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 16),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 4,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        optionButton("A", "The peace in the early mornings"),
                        optionButton("B", "The magical golden hours"),
                        optionButton("C", "Wind-down time after dinners"),
                        optionButton("D", "The serenity past midnight", isSelected: true),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pick your option. See who has a similar mind.",
                          style: TextStyle(color: Colors.white),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.mic, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/Card.svg", color: Colors.white),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/bonfire.svg", color: Colors.white),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/Icons.svg", color: Colors.white),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/User.svg", color: Colors.white),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget optionButton(String letter, String text, {bool isSelected = false}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue : Colors.grey[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: isSelected ? Colors.white : Colors.grey,
            radius: 12,
            child: Text(
              letter,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}