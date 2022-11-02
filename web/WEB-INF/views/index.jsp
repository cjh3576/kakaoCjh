<%--
  Created by IntelliJ IDEA.
  User: jaehyuk
  Date: 2022-11-01
  Time: 오후 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>공유하기</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- 카카오 -->
    <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"
            integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL"
            crossorigin="anonymous">
    </script>
    <script>
        Kakao.init('c089c8172def97eb00c07217cae17495'); // 사용하려는 앱의 JavaScript 키 입력
    </script> 
    <script>
        function shareMessage() {
            let comment = $("#comment").val();
            Kakao.Share.sendCustom({
                templateId: 82775,
                templateArgs: {

                    description: comment,
                },
            });
        }
    </script>
</head>
<body>
<div class="container">
    <div class="form-group">
        <label for="comment">Message</label>
        <textarea class="form-control" rows="5" id="comment" placeholder="보낼 내용을 입력해주세요. "></textarea>
    </div>
    <button type="button" class="btn btn-primary" onclick=shareMessage();>공유하기</button>
</div>
</body>
</html>
