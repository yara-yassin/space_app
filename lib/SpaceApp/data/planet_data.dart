import '../models/planet_model.dart';

final List<Planet> planets = [
  Planet(
    name: 'Mercury',
    tagline: 'Mercury: The Swift Planet',
    about:
    'Mercury is the smallest planet in our solar system and the closest to the Sun. '
        'It has almost no atmosphere, so its surface is covered in craters and swings '
        'between scorching days and freezing nights.',
    image: 'assets/images/imgs/mercury.png',
    model: 'assets/images/3d/mercury.glb',
    distanceFromSun: '57,909,050',
    lengthOfDay: '4222.6',
    orbitalPeriod: '0.24',
    radius: '2,440',
    mass: '3.30 × 10²³',
    gravity: '3.7',
    surfaceArea: '7.48 × 10⁷',
  ),
  Planet(
    name: 'Venus',
    tagline: 'Venus: The Veiled Planet',
    about:
    'Venus is wrapped in thick clouds of sulfuric acid and has a runaway greenhouse '
        'effect that makes it the hottest planet. It rotates backwards compared to most planets.',
    image: 'assets/images/imgs/venus.png',
    model: 'assets/images/3d/venus.glb',
    distanceFromSun: '108,209,475',
    lengthOfDay: '2802',
    orbitalPeriod: '0.62',
    radius: '6,052',
    mass: '4.87 × 10²⁴',
    gravity: '8.87',
    surfaceArea: '4.60 × 10⁸',
  ),
  Planet(
    name: 'Earth',
    tagline: 'Earth: Our Blue Marble',
    about:
    'Earth is the only known planet in the universe that supports life. Its unique '
        'combination of factors, including liquid water, a breathable atmosphere, and a '
        'suitable distance from the Sun, has created the ideal conditions for the '
        'development of complex organisms. Earth\'s magnetic field protects it from harmful '
        'solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
    image: 'assets/images/imgs/earth.png',
    model: 'assets/images/3d/earth.glb',
    distanceFromSun: '149,598,026',
    lengthOfDay: '23.93',
    orbitalPeriod: '1',
    radius: '6,371',
    mass: '5.972 × 10²⁴',
    gravity: '9.81',
    surfaceArea: '5.10 × 10⁸',
  ),
  Planet(
    name: 'Mars',
    tagline: 'Mars: The Red Planet',
    about:
    'Mars is a cold desert world with a thin atmosphere. Its red color comes from iron '
        'oxide, and it is home to Olympus Mons, the tallest volcano in the solar system.',
    image: 'assets/images/imgs/mars.png',
    model: 'assets/images/3d/mars.glb',
    distanceFromSun: '227,943,824',
    lengthOfDay: '24.62',
    orbitalPeriod: '1.88',
    radius: '3,390',
    mass: '6.42 × 10²³',
    gravity: '3.71',
    surfaceArea: '1.45 × 10⁸',
  ),
  Planet(
    name: 'Jupiter',
    tagline: 'Jupiter: The Giant',
    about:
    'Jupiter is the largest planet, a gas giant more than twice as massive as all the '
        'other planets combined. Its Great Red Spot is a storm that has raged for centuries.',
    image: 'assets/images/imgs/jupiter.png',
    model: 'assets/images/3d/jupiter.glb',
    distanceFromSun: '778,340,821',
    lengthOfDay: '9.93',
    orbitalPeriod: '11.86',
    radius: '69,911',
    mass: '1.90 × 10²⁷',
    gravity: '24.79',
    surfaceArea: '6.14 × 10¹⁰',
  ),
  Planet(
    name: 'Saturn',
    tagline: 'Saturn: Lord of the Rings',
    about:
    'Saturn is famous for its spectacular ring system made of ice and rock. '
        'It is the least dense planet — it would float in water if you could find a big enough bathtub.',
    image: 'assets/images/imgs/saturn.png',
    model: 'assets/images/3d/saturn.glb',
    distanceFromSun: '1,426,666,422',
    lengthOfDay: '10.66',
    orbitalPeriod: '29.46',
    radius: '58,232',
    mass: '5.68 × 10²⁶',
    gravity: '10.44',
    surfaceArea: '4.27 × 10¹⁰',
  ),
  Planet(
    name: 'Uranus',
    tagline: 'Uranus: The Tilted Giant',
    about:
    'Uranus is an ice giant that rotates on its side, likely due to an ancient collision. '
        'Methane in its atmosphere gives it a pale cyan color.',
    image: 'assets/images/imgs/uranus.png',
    model: 'assets/images/3d/uranus.glb',
    distanceFromSun: '2,870,658,186',
    lengthOfDay: '17.24',
    orbitalPeriod: '84.01',
    radius: '25,362',
    mass: '8.68 × 10²⁵',
    gravity: '8.87',
    surfaceArea: '8.08 × 10⁹',
  ),
  Planet(
    name: 'Neptune',
    tagline: 'Neptune: The Windy World',
    about:
    'Neptune is the most distant planet, a dark, cold ice giant with the fastest winds '
        'in the solar system, reaching over 2,000 km/h.',
    image: 'assets/images/imgs/neptune.png',
    model: 'assets/images/3d/neptune.glb',
    distanceFromSun: '4,498,396,441',
    lengthOfDay: '16.11',
    orbitalPeriod: '164.8',
    radius: '24,622',
    mass: '1.02 × 10²⁶',
    gravity: '11.15',
    surfaceArea: '7.62 × 10⁹',
  ),
];