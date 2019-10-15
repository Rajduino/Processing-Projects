final int graphBase=1200;
int arraySize,barBase,min,iterator;
int[] array;
void setup()
{
  size(1600,900);
  arraySize=100;
  barBase=graphBase/arraySize;
  array=new int[arraySize];
  for(int i =0;i<arraySize;i++)
  {
    array[i]=(int)random(100);
  }
  iterator=0;
}
void draw()
{
  clear();
  background(255);
  //fill(0,150,0);
  strokeWeight(1);
  stroke(255);
  for(int i=0;i<arraySize;i++)
  {
    if(i<iterator)
      fill(0,150,0);
    else
      fill(0,0,150);
    rect((3.0/16*width)+i*barBase,(8.5/9*height)-array[i]*8,barBase,array[i]*8);
  }
  if(iterator<arraySize)
  {
    sSort();
    iterator++;
  }
  delay(10);
}
void sSort()
{
    min=iterator;
    for(int j=iterator+1;j<arraySize;j++)
    {
      if(array[min]>array[j])
        min=j;
    }
    if(min!=iterator)
    {
      array[iterator]+=array[min];
      array[min]=array[iterator]-array[min];
      array[iterator]-=array[min];
    }
}
