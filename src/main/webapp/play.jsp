<%@page import="util.Utility2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
        
    // 残数の更新処理(残数の取得、更新、保存など)    
    int totalNum = 25;  // 残数用の変数。仮で25をセットしている。必要に応じて変更
    
    // プレイヤーの切替処理(プレイヤーの取得、切替、保存など)
    String player = "B";  

    if (session.getAttribute("totalNum") == null) {
    	session.setAttribute("totalNum", 25);
    }
    if (session.getAttribute("player") == null) {
    	session.setAttribute("player", "B");
    }
    
    
    
    player = (String)session.getAttribute("player");
    
    
   totalNum = (int)session.getAttribute("totalNum");
    // プレイヤー用の変数。仮で"A"をセットしている。必要に応じて変更
    
    
        	

    if(player.equals("B")){
    	player = "A";
    	session.setAttribute("player", player);
    	
    	String num1 = request.getParameter("num");
        int num2 = 0;
    	if(!(Utility2.isNullOrEmpty(num1))){
    		 num2 = Integer.parseInt(num1);
    	}
    	totalNum = totalNum - num2;
    	session.setAttribute("totalNum", totalNum);

    }else if(player.equals("A")){
    	player = "B";
    	session.setAttribute("player",player);
    	
    	String num1 = request.getParameter("num");
        int num2 = 0;
    	if(!(Utility2.isNullOrEmpty(num1))){
    		 num2 = Integer.parseInt(num1);
    	}
    	totalNum = totalNum - num2;
    	session.setAttribute("totalNum", totalNum);

    }

    String a = Utility2.getStoneDisplayHtml(totalNum);
    
    if(totalNum <= 0){
    	response.sendRedirect("finish.jsp");
    }
    
    // 残数が0以下の場合、結果ページへ遷移 
    // (responseオブジェクトのsendRedirectメソッドを使用する)
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎課題</title>
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
  <h1>石取りゲーム</h1>

  <div class="info">
    <h2>
      残り：<%=totalNum %>個
    </h2>
    <p class="stone">
      <%
          // todo:このprint分は仮の処理。実装が完了したら削除する。
          // 表示する文字列("●●～")をメソッドを使い取得し、取得した文字列を表示する
          out.println(a);
      %>
    </p>
  </div>
  <div class="info">
    <h2>
      プレイヤー<%=player %>の番
    </h2>

    <form action="play.jsp">
      <p>
        石を
        <input type="number" name="num" min="1" max="3">
        個取る<br> ※1度に3個取れます。
      </p>
      <button class="btn" type="submit">決定</button>
    </form>
  </div>
</body>
</html>