<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #middle
            {
                margin-top: 200px;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #999999">
    <center>
        <div id="middle"><form action="postdb.jsp" method="POST">
    <table style="color: white;margin-left: 100px; background-color: #717171; font-size: 25px; border-color: black ; border-style: solid" border="2" >
                <tr>
                    <td>
                        ENTER LOCATION:
                    </td>
                    <td>
                        <input type="text" name="location" required="">
                    </td>
                    </tr>
                    <tr>
                    <td>
                        ENTER WEATHER CONDITION:
                        </td>
                        <td> <select name="conditions" required>
                                <option value="sunny">sunny</option>
                                 <option value="rainy">rainy</option>
                                 <option value="windy">windy</option>
                                   <option value="fog">foggy</option>
                                    <option value="DANGER">DANGER</option>
                            </select></td>
                    </tr>
                    <tr>
                    <td>
                        ANY STATUS? PLEASE LET THE USERS KNOW:
                        </td>
                        <td><textarea rows="15" cols="100" name="details"></textarea></td>
                    </tr>
                    <tr>
                    <td>
                        <input type=submit value="POST!!">
                        </td>
                        <td><button onclick="window.location.href='adminhome.jsp'" style="background-color: pink; font-style: italic; font-size: 20px"> GO BACK </button>
                        </td>
                    </tr>
            </table>
            </form></div>
    </center>
    </body>
</html>
