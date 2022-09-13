/*
Name: Ricardo
 Date: 5/6/19
 Description:
 Create an array that contains the list of years between the start of 
 the 2 world wars. (example, if WWI started i the year 10 and WWII 
 started in the year 25, the valid years would be 10,11,12,13…25)
 Calculate the sum of these values
 */
int array[];
array = new int[1939-1914+1];
array[0] = 1914;
array[1939-1914] = 1939;
for (int i = 0; i <= array.length-1; i++) {
  array[i] = 1914+i;
}

println(array);
int sum = 0;

for (int i = 0; i <= array.length-1; i++) {
  sum += array[i];
}
println(sum);