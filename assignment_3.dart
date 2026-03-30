//using alias names for library imports
import 'dart:math' as math_lib;

import 'dart:io' show stdin, stdout;


/// Calculates the Euclidean distance between two 2D points.
///
/// This function computes the distance between two points
/// in a 2D Cartesian coordinate system using the Euclidean formula.
///
/// Parameters:
/// - [x1]: The x-coordinate of the first point.
/// - [y1]: The y-coordinate of the first point.
/// - [x2]: The x-coordinate of the second point.
/// - [y2]: The y-coordinate of the second point.
///
/// Returns:
/// - A [double] representing the distance between the two points.
///
/// Formula used:
/// distance = sqrt((x2 - x1)^2 + (y2 - y1)^2)
double calculateEuclideanDistance({
  required double x1,
  required double y1,
  required double x2,
  required double y2,
}) {
  return math_lib.sqrt(
    math_lib.pow(x2 - x1, 2) + math_lib.pow(y2 - y1, 2),
  );
}

// Old distance calculation method (deprecated).
@Deprecated(
    "Use calculateEuclideanDistance instead for better.")
double calculateDistanceOld(
    double x1, double y1, double x2, double y2) {
  return math_lib.sqrt(
    math_lib.pow(x2 - x1, 2) + math_lib.pow(y2 - y1, 2),
  );
}

// function calling the old function to demonstrate the warning
void useOldFunction() {
  double result = calculateDistanceOld(0, 0, 3, 4);
  print("Old distance: $result");
}

void main() {
  //using the new function to calculate distance
  double distance = calculateEuclideanDistance(
    x1: 0,
    y1: 0,
    x2: 3,
    y2: 4,
  );

  print("New distance: $distance");

  // calling the old function to demonstrate the warning
  useOldFunction();
}