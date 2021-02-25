public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
     
    for(int i = 0; i < e.length() - 10; i++){
      String digits = e.substring(i, i + 10);
      double num = Double.parseDouble(digits);
      if(isPrime(num)){
        System.out.println(digits);
        break;
      }
      int sum = 0;
      for(int j = 0; j < e.length(); j ++){
        sum += Double.parseDouble(digits);
        if(sum == 49){
          System.out.println(digits);
          break;
        }
      }  
    }

}  
public void draw()  
{   
  //not needed for this assignment
}  


public boolean isPrime(double dNum)  
{   
    
    if(dNum < 3){
      return false;
    }
    
    for(int i = 2; i < Math.sqrt(dNum); i++){
      if(dNum % i == 0){
        return false;
      }
    }   
    return true;
}
