<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<script>

    $(document).ready(function(){

    });

</script>
<body>
    <FORM class="guestbookForm">
        
        <div>
            <table>
                <tr>
                    <td colspan="4">
                        <textarea name="CONTENT" id="CONTENT"></textarea>
                    </td>
                </tr>
                <tr>
                    <th width="20%">이름</th>
                    <td colspan="3"><input type="text" name="NAME" id="NAME"></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="PASSWORD" id="PASSWORD"></td>
                    <th  width="20%">비밀번호<br>재입력</th>
                    <td><input type="password" name="RE_PASSWORD" id="RE_PASSWORD"></td>
                </tr>
                <tr>
                    <td colspan="4"><input type="button" value="등록"></td>
                </tr>
            </table>
        </div>
    </FORM>
    <div id="books"></div>


</body>
</html>