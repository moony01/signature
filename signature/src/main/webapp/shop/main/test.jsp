<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
        window.onload = function(){
            var test1View = new Vue({
                el : '#test1',
                data : {
                    message : '첫 번째 Vue.js '
                }
            });
        }    
    </script>
</head>
<body>
<div>test</div>
    <div id="test1">
        <h1>{{ message }}</h1>
    </div>
</body>
</html>