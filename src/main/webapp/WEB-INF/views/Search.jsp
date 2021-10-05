<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> yuha_project </title>
<style>
body{
  background: #FFFFFF;
}
 
.box{
  margin: 20px auto;
  width: 80%
  height: 50px;
  float: left;
  padding-left: 30%; 
}

.container-1{
  width: 600px;
  vertical-align: middle;
  white-space: nowrap;
  position: relative;
}

/* 아이콘이 입력 박스에 놓이도록 설정 (relative) 	*/
.container-1 input#search{
  width: 600px;
  height: 50px;
  background: #FFFFFF;
  border:1px solid Black;
  font-size: 10pt;
  float: left;
  color: #4f5b66;
  padding-left: 45px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 2px;
}

.container-1 input#search::-webkit-input-placeholder {
   color: #4f5b66;
}
 
.container-1 input#search:-moz-placeholder { /* Firefox 18- */
   color: #4f5b66;  
}
 
.container-1 input#search::-moz-placeholder {  /* Firefox 19+ */
   color: #4f5b66;  
}
 
.container-1 input#search:-ms-input-placeholder {  
   color: #65737e;  
}

.container-1 .icon{
  position: absolute;
  top: 50%;
  margin-left: 17px;
  margin-top: 13.5px; /* 아이콘 위 마진 */
  z-index: 1;
  color: #4f5b66;
}

	
	.img4{width: 24px; 
			height: 24px;
			}
		
	.save button{border:1px solid black;
				width:120px;
				height:40px;
				border-radius: 20px;
				margin: 24px;
				}
			
			
	.keyword{text-align:center;
			width:100%;
			height:50px; /* 50 */
			float:left;
			}
			
	.keyword_btn{border:1px solid black;
				width:120px;
				height:42px; /* 42 */
				border-radius: 20px;
			}
</style>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>

<!-- 검색창 -->
	<div class="box">
	  <div class="container-1">
	      <span class="icon"><i class="fa fa-search"></i></span>
	      <input type="search" id="search" placeholder="Search..." />
	      
  	      <!--  <a href="web.jsp?target=Pop"> <img src = "Images/img4.png" width="15px" height="15px">저장됨</a>-->
	  </div>
	</div>

<!-- 찜 버튼 -->	
	<div class="save">
		<button type="submit" onclick=""> 
		<img src = "Images/img4.png" class="img4"> 찜하기 </button>
	</div>
	
	</div>
</body>
</html>