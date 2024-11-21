class Point {
  int x;
  int y;

  Point(this.x, this.y);

  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(json['x'], json['y']);
  }
}

void main() {
  var p = Point(1, 2);
  print(p.x); // 1
  print(p.y); // 2

  var p1 = Point.fromJson({'x': 1, 'y': 2});
  print(p1.x); // 1
  print(p1.y); // 2
}
