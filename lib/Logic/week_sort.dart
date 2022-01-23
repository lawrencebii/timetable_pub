class SortClasses {
  List<String> selectedDays = [];
  
  void addDay(String day) {
    selectedDays.add(day);
  }

  void removeDay(String day) {
    selectedDays.remove(day);
  }

  void removeAll(String day) {
    for (var i in selectedDays) {
      selectedDays.remove(i);
    }
  }
}

List mon = [];
List tue = [];
List wed = [];
List thur = [];
List fri = [];
