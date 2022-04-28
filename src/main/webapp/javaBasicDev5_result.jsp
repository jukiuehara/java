<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
	String product11 = request.getParameter("product1");
	String product22 = request.getParameter("product2");
	String amount11 = request.getParameter("amount1");
	String amount22 = request.getParameter("amount2");
	String ranks = request.getParameter("rank");
	//String ranks = request.getParameterValues("rank");
    // 数値に変換
    
    int amount111 = 0;
    int amount222 = 0;
    
	if(!(ParamUtil.isNullorEmpty(amount11))){
		 amount111 = Integer.parseInt(amount11);
	}
	if(!(ParamUtil.isNullorEmpty(amount22))){
		 amount222 = Integer.parseInt(amount22);
	}
	
	int point = 0;
	int point2 = 0;
	

	   switch(ranks){
	   case"1":
		   point = ParamUtil.getPoint(amount111,1);
		   point2 = ParamUtil.getPoint(amount222,1);
		   break;
	   case"2":
		   point = ParamUtil.getPoint(amount111,2);
		   point2 = ParamUtil.getPoint(amount222,2);
		   break;
	   case"":
		   point = ParamUtil.getPoint(amount111);
		   point2 = ParamUtil.getPoint(amount222);
		   break;
	   }
    // ポイントを定義

    // メソッドを呼んでポイントを取得

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><% out.print(product11);%></td>
      <td class="right"><% out.print(amount111);%></td>
      <td class="right"><% out.print(point);%></td>
    </tr>
    <tr>
      <td><% out.print(product22);%></td>
      <td class="right"><% out.print(amount222);%></td>
      <td class="right"><% out.print(point2);%></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>