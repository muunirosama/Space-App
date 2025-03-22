class PlanetModel {
  final String name;
  final String image;
  final String model;
  final String title;
  final String about;
  final int distanceFromSun;
  final double lengthOfDay;
  final double orbitalPeriod;
  final double radius;
  final double mass;
  final double gravity;
  final double surfaceArea;

  PlanetModel({
    required this.name,
    required this.image,
    required this.model,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });


  static List<PlanetModel> planets = [
    PlanetModel(
      name: "Sun",
      image: "assets/images/sun.png",
      model: "sun.glb",
      title: "The Sun: Our Solar System's Star",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy.",
      distanceFromSun: 0,
      lengthOfDay: 0,
      orbitalPeriod: 0,
      radius: 695700,
      mass: 1.989e30,
      gravity: 274,
      surfaceArea: 6.09e12,
    ),
    PlanetModel(
      name: "Mercury",
      image: "assets/images/mercury.png",
      model: "mercury.glb",
      title: "Mercury: The Closest Planet",
      about:
      "Mercury is the smallest planet and the closest to the Sun. It has no atmosphere to retain heat.",
      distanceFromSun: 57909227,
      lengthOfDay: 1407.6,
      orbitalPeriod: 0.24,
      radius: 2439.7,
      mass: 3.301e23,
      gravity: 3.7,
      surfaceArea: 7.48e7,
    ),
    PlanetModel(
      name: "Venus",
      image: "assets/images/venus.png",
      model: "venus.glb",
      title: "Venus: Earth's Toxic Twin",
      about:
      "Venus is the hottest planet, with a thick atmosphere that traps heat. Its surface pressure is 92 times that of Earth.",
      distanceFromSun: 108209072,
      lengthOfDay: 5832.2,
      orbitalPeriod: 0.62,
      radius: 6051.8,
      mass: 4.867e24,
      gravity: 8.87,
      surfaceArea: 4.60e8,
    ),
    PlanetModel(
      name: "Earth",
      image: "assets/images/earth 2.png",
      model: "earth.glb",
      title: "Earth: Our Blue Marble",
      about:
      "Earth is the only planet known to support life, with a breathable atmosphere and abundant water.",
      distanceFromSun: 149598026,
      lengthOfDay: 23.93,
      orbitalPeriod: 1.0,
      radius: 6371,
      mass: 5.972e24,
      gravity: 9.81,
      surfaceArea: 5.10e8,
    ),
    PlanetModel(
      name: "Mars",
      image: "assets/images/mars.png",
      model: "mars.glb",
      title: "Mars: The Red Planet",
      about:
      "Mars has a thin atmosphere, polar ice caps, and past volcanic activity, making it a candidate for future exploration.",
      distanceFromSun: 227943824,
      lengthOfDay: 24.62,
      orbitalPeriod: 1.88,
      radius: 3389.5,
      mass: 6.39e23,
      gravity: 3.71,
      surfaceArea: 1.45e8,
    ),
    PlanetModel(
      name: "Jupiter",
      image: "assets/images/jupiter.png",
      model: "jupiter.glb",
      title: "Jupiter: The Gas Giant",
      about:
      "Jupiter is the largest planet, with a turbulent atmosphere and a strong magnetic field.",
      distanceFromSun: 778547669,
      lengthOfDay: 9.92,
      orbitalPeriod: 11.86,
      radius: 69911,
      mass: 1.898e27,
      gravity: 24.79,
      surfaceArea: 6.21e15,
    ),
    PlanetModel(
      name: "Saturn",
      image: "assets/images/saturn.png",
      model: "saturn.glb",
      title: "Saturn: The Ringed Planet",
      about:
      "Saturn is famous for its rings, composed of ice and rock. It has over 80 moons, including Titan.",
      distanceFromSun: 1426666422,
      lengthOfDay: 10.66,
      orbitalPeriod: 29.46,
      radius: 58232,
      mass: 5.683e26,
      gravity: 10.44,
      surfaceArea: 4.27e15,
    ),
    PlanetModel(
      name: "Uranus",
      image: "assets/images/uranus.png",
      model: "uranus.glb",
      title: "Uranus: The Tilted Planet",
      about:
      "Uranus rotates on its side due to an extreme axial tilt. It has faint rings and a blue appearance due to methane.",
      distanceFromSun: 2870990000,
      lengthOfDay: 17.24,
      orbitalPeriod: 84.01,
      radius: 25362,
      mass: 8.681e25,
      gravity: 8.69,
      surfaceArea: 8.1e15,
    ),
    PlanetModel(
      name: "Neptune",
      image: "assets/images/neptune.png",
      model: "neptune.glb",
      title: "Neptune: The Distant World",
      about:
      "Neptune, the farthest planet, has strong winds and a deep blue color due to methane.",
      distanceFromSun: 4498252900,
      lengthOfDay: 16.11,
      orbitalPeriod: 164.8,
      radius: 24622,
      mass: 1.024e26,
      gravity: 11.15,
      surfaceArea: 7.65e15,
    ),
  ];
}