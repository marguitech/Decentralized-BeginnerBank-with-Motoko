import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float"; 


actor DfyBank {
  stable var currentValue: Float = 300;
  currentValue := 300;
  Debug.print(debug_show(currentValue));
  
  let id = 3931932;
  //Debug.print(debug_show(id));
  

  //To calculate time 
  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));

  public func addUp(amount: Float) {
  currentValue += amount;
  Debug.print(debug_show(currentValue));
};

  public func withdraw(amount: Float) {
    let tempValue: Float = currentValue - amount;
    if(tempValue >= 0){
  currentValue -= amount;
  Debug.print(debug_show(currentValue));
    } else {
      Debug.print("You can't withdraw a bigger amount than what you have.");
    }
};

  public func compound(){
    let currentTime = Time.now();
    let timeLapseNs = currentTime - startTime;
    let timeLapseS = timeLapseNs / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeLapseS));
    startTime := currentTime;
  };

  public query func checkBalance(): async Float {
    return currentValue;
  }
}



