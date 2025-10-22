pub fn isLeapYear(year: u32) bool {
    const divFour = year % 4;
    const divHundred = year % 100;
    const divFourHundred = year % 400;
    return ((divFour == 0) and ((divHundred != 0) or (divFourHundred == 0)));
}
