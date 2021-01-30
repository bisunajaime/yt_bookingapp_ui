import 'package:flutter/material.dart';
import 'package:travel_booking_app_design/content.dart';
import 'package:travel_booking_app_design/models/location_model.dart';
import 'package:travel_booking_app_design/pages/location_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(homeBg),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(.5),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 40,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(userImage),
                      radius: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Trips to',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Northern Lights',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                fillColor: Colors.white.withOpacity(.5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff5EFFE2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Recently Viewed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 170,
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentlyViewed.length,
              itemBuilder: (context, index) {
                Location loc = recentlyViewed[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationPage(
                        location: loc,
                      ),
                    ),
                  ),
                  child: Container(
                    height: double.infinity,
                    width: 220,
                    margin: EdgeInsets.only(
                      right: 14,
                      left: index == 0 ? 24 : 0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(loc.imageUrl),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.3),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                loc.rating.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          loc.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Popular in your area',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 170,
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .3,
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: popularInArea.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Location loc = popularInArea[index];
                return Container(
                  margin: EdgeInsets.only(
                    left: index == 0 || index == 1 ? 24 : 0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image(
                            height: double.infinity,
                            image: NetworkImage(
                              loc.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              loc.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                            Text(
                              loc.subtitle,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'OpenSans',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Discover',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 250,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: discover.length,
              itemBuilder: (context, index) {
                Location loc = discover[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contxt) => LocationPage(
                                location: loc,
                              ))),
                  child: Container(
                    height: double.infinity,
                    width: 150,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 24 : 8,
                    ),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(loc.imageUrl),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(.2), BlendMode.darken),
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      loc.title,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
