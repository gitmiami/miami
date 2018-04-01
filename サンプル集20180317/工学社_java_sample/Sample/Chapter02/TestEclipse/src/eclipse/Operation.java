package eclipse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class Operation {
	private double operationNum1;
	private double operationNum2;
	private String operator;
	
	public Operation() {
		operationNum1 = -1;
		operationNum2 = -1;
		operator = "";
	}
	
	public String calculation() {	    
		double calculationResult;
		String result;
		
		if (operator.compareTo("＋") == 0){
			calculationResult = operationNum1 + operationNum2;
			result = operationNum1 + "＋" + operationNum2 + "＝" + calculationResult;
		}else if(operator.compareTo("−") == 0){
			calculationResult = operationNum1 - operationNum2;
			result = operationNum1 + "−" + operationNum2 + "＝" + calculationResult;
		}else if(operator.compareTo("×") == 0){
			calculationResult = operationNum1 * operationNum2;
			result = operationNum1 + "×" + operationNum2 + "＝" + calculationResult;
		}else if(operator.compareTo("÷") == 0){
			calculationResult = operationNum1 / operationNum2;
			result = operationNum1 + "÷" + operationNum2 + "＝" + calculationResult;
		}else{
			result = "正しい演算子を入力してください";
		}
		return result;
	}
	
	public void setOperationNum1(double operationNum1) {
	    this.operationNum1 = operationNum1;
	}
	
	public void setOperationNum2(double operationNum2) {
	    this.operationNum2 = operationNum2;
	}
	
	public void setOperator(String operator) {
	    this.operator = operator;
	}
}