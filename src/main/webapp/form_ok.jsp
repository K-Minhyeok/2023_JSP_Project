<%--
  Created by IntelliJ IDEA.
  User: 김민혁
  Date: 2023-11-07
  Time: 오전 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String major = request.getParameter("major");
    String birth = request.getParameter("birth");
    String bank = request.getParameter("bank");
    String gender = request.getParameter("gender");
    String Dorm = request.getParameter("Domitory");
    String prof = request.getParameter("prof");
    String blood = request.getParameter("blood");
    String home = request.getParameter("home");
    String comment = request.getParameter("selfa");





%>


<html lang="en">
<script>
    function delbtn(){
        event.preventDefault();
        if(confirm("you want delete it?")){
            alert("Deleted");
        }else
            alert("Canceld");
    }

</script>

<style>

    body {
        font: 20px Montserrat, sans-serif;
        line-height: 1.8;
        color: #f5f6f7;
    }
</style>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <link rel="stylesheet" href="my.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Main page for Mileage</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/offcanvas-navbar/">



    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">



    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" aria-label="Main navigation">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">CSEE 마일리지 신청</a>
        <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Notifications</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Settings</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown01">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex">
                <button class="btn btn-outline-success" type="submit">Search</button>
                <button class="btn btn-outline-success"  type="button" onclick = "location.href = 'add.html' ">add</button>
            </form>
        </div>
    </div>
</nav>

<div class="nav-scroller bg-body shadow-sm">
    <nav class="nav nav-underline" aria-label="Secondary navigation">
        <a class="nav-link active" aria-current="page" href="#">Dashboard</a>
        <a class="nav-link" href="#">
            Friends
            <span class="badge bg-light text-dark rounded-pill align-text-bottom">27</span>
        </a>
        <a class="nav-link" href="#">Explore</a>
        <a class="nav-link" href="#">Suggestions</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
    </nav>
</div>

<main class="container">

    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <h6 id="start_index" class="border-bottom pb-2 mb-0">Students Info list</h6>
        <div class="d-flex text-muted pt-3">
            <img class="flex-shrink-0 me-2 rounded" src="user.png" alt="User Image" width="32" height="32">
            <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
                <a href="view.html">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Student No</th>
                            <th scope="col">birthday</th>
                            <th scope="col">Major</th>
                            <th scope="col">Bank Account</th>

                            <th scope="col">Gender</th>
                            <th scope="col">Domitory</th>
                            <th scope="col">prof.</th>
                            <th scope="col">Blood type</th>
                            <th scope="col">Home</th>
                            <th scope="col">Comment</th>

                            <th scope="col">Options</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td><%=name%></td>
                            <td><%=id%> </td>
                            <td><%=birth%></td>
                            <td><%=major%></td>
                            <td><%=bank%></td>
                            <td><%=gender%></td>
                            <td><%=Dorm%> </td>
                            <td><%=prof%></td>
                            <td><%=blood%></td>
                            <td><%=home%></td>
                            <td><%=comment%></td>


                            <td>
                                <a href="edit.html" >Edit</a>
                                <button onclick="delbtn()"  id="btn">Delete</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </a>


            </div>
        </div>

        <br>









</div>

</main>


<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

<script src="offcanvas.js"></script>
</body>
</html>
