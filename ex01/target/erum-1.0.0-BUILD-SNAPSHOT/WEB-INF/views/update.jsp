
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
</head>
<body>
    <form action="/ex01/member/update" method="post" name="updateForm">
        id: <input type="text" name="memberId" value="${member.memberId}"readonly><br/><p/>
        email: <input type="text" name="memberEmail" value="${member.memberEmail}"readonly><br/><p/>
        password: <input type="text" name="memberPassword" id="memberPassword"><br/><p/>
        name: <input type="text" name="memberName" value="${member.memberName}" readonly><br/><p/>
        age: <input type="text" name="memberAge" value="${member.memberAge}"><br/><p/>
        mobile: <input type="text" name="memberMobile" value="${member.memberMobile}">
        <input type="button" value="수정" onclick="update()">

    </form>
</body>
<script>
    const update = () => {
        const passwordDB = '${member.memberPassword}';
        const password = document.getElementById("memberPassword").value;
        if (passwordDB == password) {
            document.updateForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다!");
        }
    }
</script>
</html>
