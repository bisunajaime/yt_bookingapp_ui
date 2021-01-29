class Location {
  final String imageUrl, title, subtitle;
  final List<String> sampleImages;
  final double rating;

  Location({
    this.imageUrl,
    this.title,
    this.subtitle = "",
    this.sampleImages,
    this.rating,
  });
}
