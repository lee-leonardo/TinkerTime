#include <stdio.h>

static char daysInMonth[2][13] = {
  {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31},
  {0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31},
};

int dayOfYear(int year, int month, int day);
void monthOfDay(int year, int yeardate, int *pmonth, int *pday);

int main () {

}

int dayOfYear(int year, int month, int day) {
  int i, leap;
  leap = ((year%4==0) && (year % 100 == 0)) || (year%400 == 0);
  for (i = 1; i < month; i++) {
    //This utilizes the interesting characteristic that bool is 0/1
    day += daysInMonth[leap][i];
  }
  return day;
}
void monthOfDay(int year, int yeardate, int *pmonth, int *pday) {
  int i, leap;
  leap = (year%4==0 && year%100==0) || (year%400==0);
  for (i = 1; yeardate > daysInMonth[leap][i]; i++) {
    yeardate -= daysInMonth[leap][i];
  }
  *pmonth = i;
  *pday = yeardate;
}
