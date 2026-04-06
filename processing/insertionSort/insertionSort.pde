import java.util.Arrays;

float[] numbers = new float[50];

void setup() {
  size(600, 400);
  frameRate(30);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
  
  // print(Arrays.toString(numbers));
}

int i = 1;
int j = 0;
float key;

void draw() {
  drawBars();

  if (i < numbers.length) {
    key = numbers[i];
    j = i - 1;

    while (j >= 0 && numbers[j] > key) {
      numbers[j + 1] = numbers[j];
      j--;
    }

    numbers[j + 1] = key;
    i++;
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
