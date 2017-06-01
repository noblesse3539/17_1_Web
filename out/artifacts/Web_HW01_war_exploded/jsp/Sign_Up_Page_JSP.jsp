<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: noble
  Date: 2017-05-29
  Time: 오전 6:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="../css/Sign_Up_Page_CSS.css">
    <script type="text/javascript" src="../js/Sign_Up_Page_JS.js">
    </script>
    <%
        String filePath = "C:\\Users\\noble\\IdeaProjects\\Web_HW01\\web\\data\\";
        File f = new File(filePath);
        String[] fileList = f.list();
        out.print("<script> var fList = '");
        for(int i=0; i<fileList.length; i++) {
            out.print(fileList[i]);
            if(i+1 < fileList.length) {
                out.print(" ");
            }
        }
        out.println("';");
        out.println("var fArray = fList.split(' ');");
        out.println("console.log(fArray);");
        out.println("</script>");
    %>
    <script>
        function idDuplicationCheck() {
            var id = document.getElementById("form_id");
            var idTxt= id.value + ".txt";
            for (var i=0; i <fArray.length; i++) {
                if(idTxt === fArray[i]) {
                    alert("중복됩니다.");
                    id.value = "";
                    return;
                }
            }
            alert("사용가능합니다.");
            document.getElementById("duplicate").value = "true";
        }
    </script>
</head>
<body class = "content">
<div class="terms">
    <div class="terms-box">
        <p>2017 웹 프로그래밍 HW1</p>
        <p>본 약관은 "HW1-회원가입"서비스를 이용하기 위해서는 회원등록을 완료해야 합니다.</p>
    </div>
    <input type="checkbox" id="accept"> 약관에 동의합니다.
</div>
<div class="form" id="form">
    <div class="form-box2">
        <form class="form-box2-content" action="http://localhost:9090/jsp/CreateAccount_JSP.jsp" onsubmit="return validate()">
            <table class="form-box2-content">
                <tr>
                    <td>ID</td>
                    <td>
                        <input type="text" name="form_id" id="form_id" class="valid" placeholder="문자 or 숫자" maxlength="10" minlength="6" pattern="[A-Za-z]{6,10}" title="6~10자 영문자(대소문자 구분)" onchange="turnOffDuplicate()" value="kbskbs">
                    </td>
                    <td>
                        <input type="button" id="form_id_btn" value="중복 체크" onclick="idDuplicationCheck()">
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="pwd" id="pwd" class="valid" placeholder="문자+숫자, 8자리 이상" maxlength="20" minlength="6" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}" title="6~20 알파벳 소문자, 대문자, 특수기호, 숫자를 반드시 하나이상 포함시키세요." value="asdf123ASDF;">
                    </td>
                </tr>
                <tr>
                    <td>Password<br>확인</td>
                    <td>
                        <input type="password" id="checkPwd" onchange="comparePwd()"  value="asdf123ASDF;">
                    </td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td>
                        <input type="text" name="name" id="name" class="valid" placeholder="문자열만 입력 가능" onchange="nameCheck()"  value="고병석">
                    </td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td>
                        <input type="tel" name="telNumber" id="telNumber" class="valid" placeholder="ex)01(0)-000(0)-0000" onchange="telNumCheck()"  value="010-6570-3539">
                    </td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td>
                        <input type="email" name="email" id="email" class="valid" onchange="emailCheck()" value="noblesse3539@daum.net">
                    </td>
                </tr>
                <tr>
                    <td>생년월일</td>
                    <td>
                        <input type="date" name="date" class="valid" value="2016-01-01">
                    </td>
                </tr>
            </table>
            <input type="submit" value="회원가입">
        </form>
        <div>
            <input type="hidden" id = "duplicate" name = "duplicate" value=false>
        </div>
    </div>
</div>


</body>

</html>
