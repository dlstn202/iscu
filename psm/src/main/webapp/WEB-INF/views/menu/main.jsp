<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../../assets/css/menu.css">
    <title>Document</title>
</head>
<script>

    $(document).ready(function(){
        var clickMenu = "${param.param}";

        $("#"+clickMenu).addClass("nowMenu");
        $("#studyMenu").hide();
        $("#Language").hide();

        studyMenuOpenChek(clickMenu);

        content(clickMenu);

    });

    function goHome(){
        location.href="main.do";
    }

    function goMenu(event){
        $(".nowMenu").removeClass("nowMenu");

        var clickMenu = event.target.innerText;
        $("#"+clickMenu).addClass("nowMenu");

        studyMenuOpenChek(clickMenu);

        if(clickMenu != "study"){
            content(clickMenu);
            $("#Language").hide();
        }

        changeURL(clickMenu);
    }

    function studyMenuOpenChek(clickMenu){
        if(clickMenu == "study"){
            $("#studyMenu").show();
        }else{
            $("#studyMenu").hide();
        }
    }

    function content(clickMenu){
        $.ajax({
            url: "content",
            data:{"clickMenu": clickMenu},
            success: function (res_data) {
                $("#content").html(res_data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    function openChild(event){
        var clickMenu = event.target.innerText;
        $("#"+clickMenu).show();
    }

    function changeURL(menu){
        var url = new URL(window.location.href);

        // 쿼리 파라미터 변경
        url.searchParams.set("param", menu);

        // URL을 브라우저에 반영 (페이지 새로고침 없이)
        history.pushState(null, "", url);
    }

</script>
<body>
    <div id="menu">

        <div class="outer-menu" id="PORTFOLIO" onclick="goHome();">PORTFOLIO</div>
        <div class="outer-menu" id="ParkSeongMin" onclick="goMenu(event);">ParkSeongMin</div>
        <%-- <div class="outer-menu" id="Guestbook" onclick="goMenu(event);">Guestbook</div> --%>
        <div class="outer-menu" id="study" onclick="goMenu(event);">study</div>

        <ul id="studyMenu">
            <li>
                <a onclick="openChild(event);">Language</a>
                <ul id="Language">
                    <li><a onclick="goMenuChild(event);">Python</a></li>
                    <li><a onclick="goMenuChild(event);">Java</a></li>
                    <li><a onclick="goMenuChild(event);">JavaScript</a></li>
                </ul>
            </li>
            <li><a onclick="goMenuChild(event);">Style Sheet</a></li>
            <li><a onclick="goMenuChild(event);">Mark Up</a></li>
        </ul>
    </div>
    <div id="content"></div>
</body>
</html>