import java.util.Arrays;

float[] numbers = new float[100];

void setup() {
  size(600, 400);
  frameRate(20);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
  
  // print(Arrays.toString(numbers));
}

void draw() {
  drawBars();

  int minIdx = 0;
  int count = 0;
  float min = 0;
  float temp;
  
  for (int i = count; i < numbers.length; i++) {
    if (numbers[i] > min) {
      min = numbers[i];
      minIdx = i;
      
      temp = numbers[i];
      numbers[i] = numbers[minIdx];
      numbers[minIdx] = temp;
      
      count++;
    }
  }

  
  // sorting algorithm here (just one step)
}

void drawBars() {
  background(200);
  fill(40);
  for (int i = 0; i < numbers.length; i++) {
    float spacing = (float)width / numbers.length; 
    rect(i * spacing, height, spacing, -numbers[i] * height);
  }
}
