@RequestMapping("/")
    public String biggestNumber() {
        
		return "num";
	}
     @RequestMapping("/submit")
        public String printBiggestNumber(@RequestParam int num1, @RequestParam int num2, @RequestParam int num3, ModelMap model)
        {

        model.put("k1", num1);
        model.put("k2", num2);
        model.put("k3", num3);
        
      int largest= ((num1>num2)&&(num1>num3))? num1 : (num2>num3)? num2 :num3;
      model.put("k4",largest);
       return "largest";
            
        }