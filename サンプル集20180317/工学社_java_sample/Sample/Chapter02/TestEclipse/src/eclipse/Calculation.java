package eclipse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class Calculation {
	
    public static void main(String[] args) {
		double calculationNum1;
		double calculationNum2;
		String calculationResult;
		
		Operation calculationOperation = new Operation();
		
		calculationNum1 = Double.parseDouble(args[0]);
		calculationNum2 = Double.parseDouble(args[1]);	
				
		calculationOperation.setOperationNum1(calculationNum1);
		calculationOperation.setOperationNum2(calculationNum2);
		calculationOperation.setOperator(args[2]);
		
		calculationResult = calculationOperation.calculation();
		
		System.out.println(calculationResult);
	}
}