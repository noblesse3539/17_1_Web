/**
 * Created by noble on 2017-05-28.
 */
function comparePwd() {
    var pwd = document.getElementById("pwd");
    var checkPwd = document.getElementById("checkPwd");
    if (pwd.value !== checkPwd.value) {
        alert("위에 입력한 비밀번호와 값이 다릅니다. 다시 입력해주세요.");
        checkPwd.value = "";
        checkPwd.focus();
    }
}
function nameCheck() {
    var name = document.getElementById("name");
    var regexp =/[a-zA-z가-힣]/;

    for ( var i=0; i<name.value.length; i++) {
        if(regexp.test(name.value.charAt(i)) === false ) {
            alert("이름은 문자열만 입력 가능합니다.");
            name.value = "";
            name.focus();
            break;
        }
    }
}
function telNumCheck() {
    var telNum = document.getElementById("telNumber");
    var regexp =/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
    if (!regexp.test(telNum.value)) {
        alert("전화번호 형식을 지켜주세요.")
        telNum.value = "";
        telNum.focus();
    }
}
function emailCheck() {
    var email= document.getElementById("email");
    var regexp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    if (!regexp.test(email.value)) {
        alert("이메일 형식을 지켜주세요.")
        email.value = "";
        email.focus();
    }
}
function validate() {
    var valid = document.getElementsByClassName("valid");
    var termCheck = document.getElementById("accept");
    var duplicate = document.getElementById("duplicate");
    if(termCheck.checked === false) {
        alert("약관에 동의해야합니다.");
        return false;
    }
    if(duplicate.value !== "true") {
        alert("ID 중복 확인을 해야합니다.");
        return false;
    }
    for (var i=0; i<valid.length; i++) {
        if(valid[i].value === "") {
            alert("입력되지 않은 칸이 있습니다.");
            return false;
        }
    }
    return true;
}
function turnOffDuplicate() {
    var duplicate1 = document.getElementById("duplicate");
    duplicate1.value = "false";
    if(duplicate1.value === "false") {
        console.log("바뀜 :" + duplicate1.value);
    }

}
