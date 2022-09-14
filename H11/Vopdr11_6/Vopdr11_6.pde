int[] myArray ={18,58,284,582,583,29,58,79,257};
boolean Found = false;
int search = 58;
int timesFound = 0;

void setup(){
  for(int i = 0; i < myArray.length; i++){
    if(myArray[i] == search){
      Found = true;
      timesFound++;
    }
  }
  if(Found){
    println(timesFound);
  }
}
