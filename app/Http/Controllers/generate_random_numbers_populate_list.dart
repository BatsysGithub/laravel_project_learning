import 'dart:math';

void main() {

  var freePlot = generateUniqueRandomList(2, 1, 100);
  var freetoken = generateUniqueRandomList(3, 1, 100);
  var tv65 = generateUniqueRandomList(3, 1, 100);
  var tv50 = generateUniqueRandomList(2, 1, 100);
  var watch = generateUniqueRandomList(3, 1, 100);
  var tv32 = generateUniqueRandomList(10, 1, 100);
  var travelBag = generateUniqueRandomList(10, 1, 100);
  var hotelStay = generateUniqueRandomList(67, 1, 100);

  print("freePlot: $freePlot");
  print("freetoken: $freetoken");
  print("tv65: $tv65");
  print("tv50: $tv50");
  print("watch: $watch");
  print("tv32: $tv32");
  print("travelBag: $travelBag");
  print("hotelStay: $hotelStay");
  
}

List<int> generateUniqueRandomList(int length, int min, int max) {
  Set<int> uniqueNumbers = Set<int>();
  Random rnd = Random();

  while (uniqueNumbers.length < length) {

    int randomNumber = min + rnd.nextInt(max - min + 1);

    if (!uniqueNumbers.contains(randomNumber)) {
      uniqueNumbers.add(randomNumber);
    }

  }

  return uniqueNumbers.toList();
}
