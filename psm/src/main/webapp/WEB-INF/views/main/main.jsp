<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../../assets/css/main.css">
    <title>Document</title>
</head>
<script>
    function goMenu(event){

        var param = new Object();
        param.menuName = event.target.value;
        
        //onclick="location.href='${pageContext.request.contextPath}/qna_main.do'"

        

    }
     

</script>
<body>
    <div class="tags">
        <input class="tag" type="button" value="ParkSeongMin" onclick="goMenu(event);">
        <input class="tag" type="button" value="Guestbook" onclick="goMenu(event);">
        <input class="tag" type="button" value="study" onclick="goMenu(event);">
    </div>
</body>
</html>