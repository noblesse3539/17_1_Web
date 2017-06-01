<%@ page import="java.io.*" %><%--
  Created by IntelliJ IDEA.
  User: noble
  Date: 2017-05-30
  Time: 오전 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Account</title>
</head>
<body>
    <%
        String id = request.getParameter("form_id");
        String pwd = request.getParameter("pwd");
        String name = request.getParameter("name");
        String telNumber = request.getParameter("telNumber");
        String email = request.getParameter("email");
        String date = request.getParameter("date");
        String fileName = id+".txt";
        String filePath = "C:\\Users\\noble\\IdeaProjects\\Web_HW01\\web\\data\\";
        filePath += fileName;

        try{
            File f = new File(filePath);
            f.createNewFile();
            FileWriter fw = new FileWriter(filePath);
            String data = pwd+"\n"+ name+ "\n"+telNumber +"\n"+email +"\n"+date;
            fw.write(data);
            fw.close();

            FileReader fr = new FileReader(filePath); //파일읽기객체생성
            BufferedReader br = new BufferedReader(fr); //버퍼리더객체생성
            String line = null;
            while((line=br.readLine())!=null){ //라인단위 읽기
                out.println(line + "<br>");
            }
        }catch (IOException e) {
            System.out.println(e.toString());
        }



    %>
</body>
</html>
