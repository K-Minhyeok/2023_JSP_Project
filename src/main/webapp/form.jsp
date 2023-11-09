<%--
  Created by IntelliJ IDEA.
  User: 김민혁
  Date: 2023-11-07
  Time: 오전 1:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
    <script>

        function valid(){
            var name = document.mileage_form1.name;
            if(name.value==""){
            alert("Enter Your Name");
            return false;
            }

            var id = document.mileage_form1.id;
            if(id.value==""){
            alert("Enter Your Student ID");
            return false;
            }

            var major = document.mileage_form1.major;
            if(major.value==""){
            alert("Choose Your Major");
            return false;
            }

            var birthday_check = document.mileage_form1.birth;

            if(birthday_check.value==""){
            alert("Enter Your Birthday");
            return false;
            }
            var birthday =new Date(document.mileage_form1.birth.value);
            var today = new Date();
            var age = today.getFullYear() - birthday.getFullYear();


            var bank = document.mileage_form1.bank;
            if(bank.value==""){
            alert("Enter Your Bank account");
            return false;
            }

            alert("Added Successfully");

        }

      </script>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/offcanvas-navbar/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="my.css">

    <title>ADD Info</title>
</head>
<body>

    <h1 id="start"> Enter your info </h1>


    <form class="mileage-form" action="form_ok.jsp" onsubmit="return valid()" method="post">
        <!-- 이름, 생년월일,남녀, 전공, 사는 기숙사 ,설문조사 일시-->
    <!-- 고향, 혈액형,  -->
    <div>
    <li>Name:
    <input type="text" name = "name"  >
    <br>
    </div>
    <br>
    </li>

    <div>
        <li>Student ID:
        <input type="text" name = "id" >
        <br>
        </div>
        <br>
        </li>

        <div>
            <li> 1st Major:
                <input type="radio" id="CSEE" name="major" value="CSEE">
                <label for="CSEE"> CSEE</label>
                <input type="radio" id="Comunication" name="major" value="Comunication">
                <label for="Comunication"> Comunication</label>
                <input type="radio" id="law" name="major" value="law">
                <label for="law"> law</label>
                <input type="radio" id="GLS" name="major" value="GLS">
                <label for="GLS"> GLS</label>
                <input type="radio" id="Management" name="major" value="Management">
                <label for="Management"> Management</label> <br>
                <input type="radio" id="Life SC" name="major" value="Life SC">
                <label for="Life SC">Life SC</label>
                <input type="radio" id="Counseling" name="major" value="Counseling">
                <label for="Counseling"> Counseling</label>

            </div>
            <br>
            </li>


    <div>
    <li>Birth date:
    <input type="date" name="birth" >
    <br>
    </div>
    <br>
    </li>

    <div>
        <li>Your bank account:
        <input type="text"  name="bank" >
        <br>
        </div>
        <br>
    </li>



    <hr>
    <h1>Sub info</h1>

    <div>
    <li>Gender:
    <input type="radio" id="male" name="gender" value="male">
    <label for="male">male</label>

    <input type="radio" id="female" name="gender" value="female">
    <label for="male">female</label>
    <br>
    </div>
    <br>
    </li>




        <div>
            <li>Domitory:
            <select name = "Domitory">
                    <option value="비전"> 비전 </option>
                    <option value="국제"> 국제 </option>
                    <option value="로뎀" selected> 로뎀 </option>
                    <option value="은혜"> 은혜 </option>
                    <option value="카이퍼"> 카이퍼 </option>
                    <option value="창조"> 창조 </option>
                    <option value="갈대상자"> 갈대상자관 </option>
            </select>
            <br>
            </div>
            <br>
            </li>

            <div>
                <li>Prof in charge of you:
                <input type="text" name="prof"id="prof">
                <br>
                </div>
                <br>
                </li>


        <div>
            <li>Blood type:
            <select name = "blood">
                    <option value="A"> A </option>
                    <option value="B"> B </option>
                    <option value="O" selected> O </option>
                    <option value="Ab"> AB </option>
            </select>
            <br>
            </div>
            <br>
            </li>

            <div>
                <li>Home:
                <select name = "home">
                        <option value="서울"> 서울 </option>
                        <option value="경기도"> 경기도 </option>
                        <option value="경상도" selected> 경상도 </option>
                        <option value="강원도"> 강원도 </option>
                        <option value="제주도"> 제주도 </option>
                        <option value="전라도"> 전라도 </option>
                        <option value="충청도"> 충청도 </option>
                </select>
                <br>
                </div>
                <br>
                </li>



        <div>
            <li>Tell me yourself:
            <textarea name="selfa" clos="100" rows=""20>hello</textarea>
            <br>
            </div>
            <br>
            </li>



            <div>
                <li>Today:
                <input type="date" id="today">
            </li>
                <br>
                </div>
                <br>

                <input type="submit" style="border: 3px solid black;" value="submit"> </input>

    </form>
</body>
</html>