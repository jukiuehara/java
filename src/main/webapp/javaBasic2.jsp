<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // Aさんのスコアを国語、数学、英語の順に配列へ入れる
    // ※この処理は変更しないでください。
    int[] aScore = { 100, 54, 69 };

    // Bさんのスコアを国語、数学、英語の順に配列へ入れる
    // ※この処理は変更しないでください。
    int[] bScore = { 42, 95, 60 };

    // ※以降のコメントを参考に、必要な処理を実装してください
	int[][] table;
    table = new int [2][3];
    table [0][0] = aScore[0];
    table [0][1] = aScore[1];// 各平均を入れるための配列
    table [0][2] = aScore[2];
    table [1][0] = bScore[0];
    table [1][1] = bScore[1];
    table [1][2] = bScore[2];
    
    // 各平均点を計算し、配列へ計算結果を代入
   
    // ただし、平均点を計算する際にint型の値を小数点以下が
    // 扱える型にキャストする(キャスト演算子を使用してください)必要がある
    // そのキャストした値を割って、平均点を求める
    // (例： (double) 15 / 2 
    //       → int型の15がdouble型になり、その値を2で割るので、
    //          結果は、7.5になる)
    // (なお、キャスト演算子は、「/」演算子より計算の優先順位が高い)

    // 全点数の合計を求め、変数へ代入
	double sum = table [0][0]+table[0][1]+table[0][2]+table[1][0]+table[1][1]+table[1][2];
    // 合計点数の平均を求めて、変数へ代入
    double avg = sum/2;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題2</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>

</head>
<body>
  <!-- 必要に応じて処理を変更してください  -->
  <h1>Java基礎 - 演習問題2</h1>
  <h2>成績一覧</h2>
  <table>
    <tr>
      <th></th>
      <th>国語</th>
      <th>数学</th>
      <th>英語</th>
    </tr>
    <tr>
      <td>Aさん</td>
      <td><%out.println(table[0][0]); %></td>
      <td><%out.println(table[0][1]); %></td>
      <td><%out.println(table[0][2]); %></td>
    </tr>
    <tr>
      <td>Bさん</td>
      <td><%out.println(table[1][0]); %></td>
      <td><%out.println(table[1][1]); %></td>
      <td><%out.println(table[1][2]); %></td>
    </tr>
  </table>

  <h2>平均点</h2>
  <p>国語：<% out.println((double)(table[0][0]+table[1][0])/2);%></p>
  <p>数学：<% out.println((double)(table[0][1]+table[1][1])/2);%></p>
  <p>英語：<% out.println((double)(table[0][2]+table[1][2])/2);%></p>
  <p>合計：<% out.println(avg); %></p>
</body>
</html>