import 'package:flutter/material.dart';
import 'package:travel_booking_app_design/models/location_model.dart';

class LocationPage extends StatefulWidget {
  final Location location;

  const LocationPage({Key key, this.location}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              onPageChanged: (value) => (setState(() => _currentPage = value)),
              itemBuilder: (context, index) {
                return ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          widget.location.sampleImages[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              itemCount: widget.location.sampleImages.length,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 60,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.location.sampleImages.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: double.infinity,
                            margin: EdgeInsets.only(
                              right: 8,
                              left: index == 0 ? 16 : 0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: _currentPage == index
                                    ? Color(0xff00C1AA)
                                    : Colors.white.withOpacity(.5),
                                width: 1.0,
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  widget.location.sampleImages[index],
                                ),
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.3),
                                  BlendMode.darken,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.location.title,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$199.99",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "per person",
                              style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices velit sed vitae nulla ultricies magna. Lacinia eget arcu aliquam viverra nulla tortor etiam faucibus. Massa dignissim urna, egestas nisl. Arcu, id quis eget adipiscing gravida velit purus eget ac.',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff00C1AA),
                              ),
                              child: Center(
                                child: Icon(Icons.map, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Book Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 52,
            left: 24,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
