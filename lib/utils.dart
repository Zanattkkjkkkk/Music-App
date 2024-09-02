class Utils {

  static String formatTimeMMSS(int timeInSeconds){

    int seconds = timeInSeconds % 60;
    int minutes = (timeInSeconds / 60).floor();

    String minuteText = minutes.toString().length <=1 ? "0$minutes" : "$minutes";
    String secondsText = seconds.toString().length <= 1 ? "0$seconds" : "$seconds";

    return "$minuteText : $secondsText";
  }
}