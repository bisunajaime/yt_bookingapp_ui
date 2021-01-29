import 'models/location_model.dart';

final String homeBg =
    "https://images.unsplash.com/photo-1515405295579-ba7b45403062?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80";
final String userImage =
    "https://images.unsplash.com/photo-1571816119553-df62a2eedf56?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTg2fHxwZXJzb258ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60";

final List<Location> recentlyViewed = [
  Location(
    title: 'Mt. Everest',
    imageUrl:
        'https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1355&q=80',
    rating: 4.5,
    sampleImages: [
      'https://images.unsplash.com/photo-1574950578143-858c6fc58922?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1554629947-334ff61d85dc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80'
    ],
  ),
  Location(
    title: 'Volcano Lake',
    imageUrl:
        'https://images.unsplash.com/photo-1491331606314-1d15535360fa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    rating: 5.0,
    sampleImages: [
      'https://images.unsplash.com/photo-1528543010705-e7e75169b717?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1267&q=80',
      'https://images.unsplash.com/photo-1516132006923-6cf348e5dee2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1268&q=80',
    ],
  ),
];
final List<Location> popularInArea = [
  Location(
    title: 'Family',
    subtitle: 'Lorem ipsum',
    imageUrl:
        'https://images.unsplash.com/photo-1546026502-797e11a59f50?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    rating: 3.5,
    sampleImages: [],
  ),
  Location(
    title: 'Cozy',
    subtitle: 'Lorem ipsum',
    imageUrl:
        'https://images.unsplash.com/32/Mc8kW4x9Q3aRR3RkP5Im_IMG_4417.jpg?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    rating: 3.5,
    sampleImages: [],
  ),
  Location(
    title: 'Snowy',
    subtitle: 'Lorem ipsum',
    imageUrl:
        'https://images.unsplash.com/photo-1496504175726-c7b4523c7e81?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1390&q=80',
    rating: 4.0,
    sampleImages: [],
  ),
  Location(
    title: 'Rocky',
    subtitle: 'Lorem ipsum',
    imageUrl:
        'https://images.unsplash.com/photo-1579194355380-e0d9ab53db5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    rating: 4.0,
    sampleImages: [],
  ),
  Location(
    title: 'Red',
    subtitle: 'Lorem ipsum',
    imageUrl:
        'https://images.unsplash.com/photo-1507692984170-ff22288b21cf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80',
    rating: 4.0,
    sampleImages: [],
  ),
  Location(
    title: 'Caves',
    subtitle: 'Lorem ipsum',
    imageUrl:
        'https://images.unsplash.com/photo-1589739253612-886a3481d88b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80',
    rating: 4.0,
    sampleImages: [],
  ),
];

final List<Location> discover = [
  Location(
    title: 'Waterfell',
    imageUrl:
        'https://images.unsplash.com/photo-1546882588-d9bd63f85a7e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    rating: 5.0,
    sampleImages: [],
  ),
  Location(
    title: 'Sunset',
    imageUrl:
        'https://images.unsplash.com/photo-1563005416-93d8e7a2d0a3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    rating: 4.0,
    sampleImages: [
      'https://images.unsplash.com/photo-1502375751885-4f494926ce5c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1502827186494-9f7976a04548?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
    ],
  ),
  Location(
    title: 'Switzerland',
    imageUrl:
        'https://images.unsplash.com/photo-1536048810607-3dc7f86981cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80',
    rating: 4.0,
    sampleImages: [
      'https://images.unsplash.com/photo-1524239716934-64b724174e77?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1528460654048-f68bf899857e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80',
    ],
  ),
];
