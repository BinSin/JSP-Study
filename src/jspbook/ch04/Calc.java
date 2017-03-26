package jspbook.ch04;

public class Calc {
	
	double result = 0;
	
	// 생성자
	public Calc(double num1, double num2, String op) {
		
		if(op.equals("+")) {
			result = num1 + num2;
		}
		
		else if(op.equals("-")) {
			result = num1 - num2;
		}
		
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		
		else if(op.equals("/")) {
			result = num1 / num2;
		}
	}
	
		// 결과 변수를 반환하는 메서드
	public double getResult() {
			return result;
	}
		
}