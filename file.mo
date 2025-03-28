actor checkNumber{
  public func checkNumber(n : Nat):async Text{
    let even =n % 2==0;
    let odd = not even;
    let prime = if(n < 2)false else{
      var i=2;
      while(i*i<=n){
        if (n%i==0)return "Even:"#debug_show(even)#",odd:"#debug_show(odd)#",Prime:false";
        i+=1;
      };
      true 
    };
    "Even:"#debug_show(even)#",Odd:"#debug_show(odd)#",Prime:"#debug_show(prime)
  }
}