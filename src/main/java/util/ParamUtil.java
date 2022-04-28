package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

	/**
	 * ポイント計算
	 */
	public static int getPoint(int money) {

		return (int) (money * 0.01);
	}

	/**
	 * ポイント計算(ランクあり)
	 */

	public static int getPoint(int money, int money2) {
		

		
		if (money2 == 1) {
			return (int) (money * 0.02);
		} else if(money2 == 2){
			return (int) (money * 0.03);
		}else {
					return 0;
		}

	}
	/**
	 * 引数に指定した文字列がnull、または空文字かを判定
	 */
	public static boolean isNullorEmpty(String money3) {
		if(money3==null||money3.equals("")) {
			return true;
		}
		return false;
	}

}
