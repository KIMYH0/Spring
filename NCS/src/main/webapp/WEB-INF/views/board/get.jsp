<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        .container {
            display: flex;
            align-items: stretch;
            height: 500px;
            text-align: center;
        }

        #fr {
            display: flex;
            height: 100px;
        }

        #search {
            margin-bottom: 10px;
        }

        #info,
        #detail {
            flex: 1;
        }

        #form {
            text-align: center;
        }
    </style>
</head>
<body>
   <form>
        <h2>학생정보</h2>
        <input type="text" id="search" />
        
        <input type="submit" value="검색" class="btn btn-primary" />
        <div id="studentlist">${sn.}</div>
        <div class="container">
            <div class="panel-body">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>이름</th>
                            <th>주소</th>
                            <th>학교</th>
                            <th>전공</th>
                        </tr>
                    </thead>
                    <c:forEach items="${li}" var="li">
                        <tr>    
                            <td>${li.idx}</td>
                            <td>${li.membername}</td>
                            <td>${li.memberaddr}</td>
                            <td>${li.memberschool}</td>
                            <td>${li.membermajor}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </form>
</body>
</html>