import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";
import "../utils/colors.dart";

class BonfireScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background video.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 48.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stroll Bonfire",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 34.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: size.height * 0.03,
                            width: size.height * 0.03,
                            child: SvgPicture.asset(
                              "assets/clock.svg",
                              color: Colors.white,
                            )),
                        SizedBox(width: 4),
                        Text(
                          "22h 00m",
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        SizedBox(width: 16),
                        SizedBox(
                          height: size.height * 0.05,
                          width: size.height * 0.05,
                          child: SvgPicture.asset("assets/User.svg",
                              color: Colors.white),
                        ),
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
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF0F1115).withOpacity(0.0), // 0%
                      const Color(0xFF0D0E12).withOpacity(0.78), // 28%
                      const Color(0xFF0D0E12).withOpacity(0.78), // 28%
                      const Color(0xFF0B0C0F).withOpacity(0.80), // 64%
                      const Color(0xFF090B0D).withOpacity(0.80), // 80%
                      const Color(0xFF000000).withOpacity(1), // 100%
                    ],
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/180903533/photo/beautiful-asian-woman.jpg?s=612x612&w=0&k=20&c=gvI9NCvA4Nx3vStnWcLiuzHY6IPuMeq-Zo9eK1pH2r0="),
                          radius: 28,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            Container(
                              width: size.width * 0.7,
                              child: Text("Angelina, 28",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11)),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: size.width * 0.7,
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
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 5),
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        optionButton(
                            "A", "The peace in the early mornings", size),
                        optionButton("B", "The magical golden hours", size),
                        optionButton("C", "Wind-down time after dinners", size),
                        optionButton("D", "The serenity past midnight", size,
                            isSelected: true),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.6,
                          child: Text(
                            "Pick your option. \n See who has a similar mind.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          width: size.width * 0.13,
                          height: size.width * 0.13,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColorTheme.tertiary,
                              width: 2.0,
                            ),
                          ),
                          child: Icon(Icons.mic,
                              size: size.width * 0.1,
                              color: const Color(0xff8B88EF)),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: size.width * 0.01),
                          width: size.width * 0.13,
                          height: size.width * 0.13,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColorTheme.tertiary,
                            border: Border.all(
                              color: AppColorTheme.tertiary,
                              width: 2.0,
                            ),
                          ),
                          child: Icon(Icons.arrow_forward,
                              size: size.width * 0.1, color: Colors.white),
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

  Widget optionButton(String letter, String text, Size size,
      {bool isSelected = false}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorTheme.option,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: isSelected
              ? BorderSide(color: AppColorTheme.tertiary, width: 2)
              : BorderSide(color: Colors.transparent, width: 1),
        ), // Adjust the width and height
      ),
      onPressed: () {},
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? AppColorTheme.tertiary : Colors.white,
                width: 1.0,
              ),
              color: isSelected ? AppColorTheme.tertiary : Colors.transparent,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 12,
              child: Text(
                letter,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
