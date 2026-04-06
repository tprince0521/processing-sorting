import java.util.Arrays;

float[] numbers = new float[100];
int currentIndex = 0;

void setup() {
  size(600, 400);
  frameRate(20);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
}

void draw() {
  drawBars();

  if (currentIndex < numbers.length) {
    int minIdx = currentIndex;

    // find minimum
    for (int j = currentIndex + 1; j < numbers.length; j++) {
      if (numbers[j] < numbers[minIdx]) {
        minIdx = j;
      }
    }

    // swap
    float temp = numbers[currentIndex];
    numbers[currentIndex] = numbers[minIdx];
    numbers[minIdx] = temp;

    currentIndex++;
  }
}

void drawBars() {
  background(200);
  fill(40);
  for (int i = 0; i < numbers.length; i++) {
    float spacing = (float)width / numbers.length; 
    rect(i * spacing, height, spacing, -numbers[i] * height);
  }
}