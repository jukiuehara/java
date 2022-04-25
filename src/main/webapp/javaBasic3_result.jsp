<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください
	request.setCharacterEncoding("UTF-8");
	String numX = request.getParameter("name");
	
	
	String age1 = request.getParameter("age");
	if("".equals(age1)){
		age1 = "0";
	}
	

		int y = Integer.parseInt(age1);

    
	String blood = request.getParameter("bloodType");
    // 入力値取得

    // ロボットからの返信用メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p><%

    if("".equals(numX)){
    	out.println("名無し");
    }else{
    	 out.println("こんにちは、"+numX+"さん！私と同じ名前ですね！");
    }
    %></p>
    <p><% 
    if(20==y){
    	out.print("私と同い年なんですね！");
    }else if(20<y){
    	out.print("私よりも"+(y-20)+"歳年上ですね。");	
    }else if(20>y&&0<y){
    	out.print("私よりも"+(20-y)+"年下ですね。");
    }else if(y==0){
    	out.print(0);
    }
    %></p>
    <p>
    <%
    	switch (blood){
    	case "typeA":
    		out.println("私もA型です！");
    	break;
    	case "typeB":
    		out.println(" B型の人と話すのは初めてです。 ");
        break;
    	case "typeAB":
    	 	out.println("私の母がAB型です。");
    	break;
    	case "typeO":
    	 	out.println("私の父がO型です");
    	break;
    	}
    %>
    </p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>