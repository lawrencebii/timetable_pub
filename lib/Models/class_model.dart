class Timetable {
  Timetable({
    this.id=0,
    this.subject ='',
    this.lecturer = '',
    this.venue = '',
    this.start = '',
    this.stop = '',
    
    this.day = '',
  });

  int id;
  String subject;
  String lecturer;
  String venue;
  String start;
  String stop;
 
  String day;

  factory Timetable.fromJson(Map<String, dynamic> json) => Timetable(
        id: json["id"],
        subject: json["subject"],
        lecturer: json["lecturer"],
        venue: json["venue"],
        start: json["start"],
        stop: json["stop"],
       
        day: json["day"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "subject": subject,
        "lecturer": lecturer,
        "venue": venue,
        "start": start,
        "stop": stop,
        
        "day": day,
      };
}
