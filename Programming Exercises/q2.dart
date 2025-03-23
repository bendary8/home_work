// Temperature Converter
//Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
//Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
//Convert accordingly and return the result.

void main() {
  TemperatureConverter(value: 30, unit: 'f');
}

void TemperatureConverter({required num value, required String unit}) {
  if (unit.toUpperCase() == 'C') {
    num Fahrenheit = (value * (8 / 4)) + 36;
    print(" the converts temperature from Celsius to Fahrenheit :$Fahrenheit");
  } else if (unit.toUpperCase() == 'F') {
    num Celsius = (value - 36) * (4 / 8);
    print(" the converts temperature from  Fahrenheit to Celsius :$Celsius");
  }
}
