<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
        <title>CSS Registration Form</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="webapp/css/default.css"/>
    </head>
    <style>
*/*Set's border, padding and margin to 0 for all values*/
{
    padding: 0;
    margin: 0;
    border: 0;
}
body, html {
    color: #373C40;
    font-family: Verdana,Arial, Helvetica, sans-serif;
    height: 100%;
    background-color: #f0f0f0;
    margin:10px;
}
body {
    font-size: 70%;
}
p {
    padding: 7px 0 7px 0;
    font-weight: 500;
    font-size: 10pt;
}
a {
    color: #656565;
    text-decoration:none;
}
a:hover{
    color: #abda0f;
    text-decoration: none;
}
h1 {
    font-weight:200;
    color: #888888;
    font-size:16pt;
    background: transparent url(../img/h1.png) no-repeat center left;
    padding-left:33px;
    margin:7px 5px 8px 8px;
}
h4 {
    padding:1px;
    color: #ACACAC;
    font-size:9pt;
    font-weight:100;
    text-transform:uppercase;
}
form.register{
    width:800px;
    margin: 20px auto 0px auto;
    height:530px;
    background-color:#fff;
    padding:5px;
    -moz-border-radius:20px;
    -webkit-border-radius:20px;
}
form p{
    font-size: 8pt;
    clear:both;
    margin: 0;
    color:gray;
    padding:4px;
}
form.register fieldset.row1
{
    width:770px;
    padding:5px;
    float:left;
    border-top:1px solid #F5F5F5;
    margin-bottom:15px;
}
form.register fieldset.row1 label{
    width:140px;
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
}
form.register fieldset.row2
{
    border-top:1px solid #F1F1F1;
    border-right:1px solid #F1F1F1;
    height:220px;
    padding:5px;
    float:left;
}
form.register fieldset.row3
{
    border-top:1px solid #F1F1F1;
    padding:5px;
    float:left;
    margin-bottom:15px;
    width:400px;
}
form.register fieldset.row4
{
    border-top:1px solid #F1F1F1;
    border-right:1px solid #F1F1F1;
    padding:5px;
    float:left;
    clear:both;
    width:500px;
}
form.register .infobox{
    float:right;
    margin-top:20px;
    border: 1px solid #F1F1F1;
    padding:5px;
    width:380px;
    height:98px;
    font-size:9px;
    background: #FDFEFA url(../img/bg_infobox.gif) repeat-x top left;
}
form.register legend
{
    color: #abda0f;
    padding:2px;
    margin-left: 14px;
    font-weight:bold;
    font-size: 14px;
    font-weight:100;
}
form.register label{
    color:#444;
    width:98px;
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
}
form.register label.optional{
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
    color: #A3A3A3;
}
form.register label.obinfo{
    float:right;
    padding:3px;
    font-style:italic;
}
form.register input{
    width: 140px;
    color: #505050;
    float: left;
    margin-right: 5px;
}
form.register input.long{
    width: 247px;
    color: #505050;
}
form.register input.short{
    width: 40px;
    color: #505050;
}
form.register input[type=radio]
{
    float:left;
    width:15px;
}
form.register label.gender{
    margin-top:-1px;
    margin-bottom:2px;
    width:34px;
    float:left;
    text-align:left;
    line-height:19px;
}
form.register input[type=text]
{
    border: 1px solid #E1E1E1;
    height: 18px;
}
form.register input[type=password]
{
    border: 1px solid #E1E1E1;
    height: 18px;
}
.button
{
    background: #abda0f url(../img/overlay.png) repeat-x;
    padding: 8px 10px 8px;
    color: #fff;
    text-decoration: none;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    text-shadow: 0 -1px 1px rgba(0,0,0,0.25);
    cursor: pointer;
    float:left;
    font-size:18px;
    margin:10px;
}
form.register input[type=text].year
{
    border: 1px solid #E1E1E1;
    height: 18px;
    width:30px;
}
form.register input[type=checkbox] {
    width:14px;
    margin-top:4px;
}
form.register select
{
    border: 1px solid #E1E1E1;
    width: 130px;
    float:left;
    margin-bottom:3px;
    color: #505050;
    margin-right:5px;
}
form.register select.date
{
    width: 40px;
}
input:focus, select:focus{
    background-color: #efffe0;
}
p.info{
    font-size:7pt;
    color: gray;
}
p.agreement{
    margin-left:15px;
}
p.agreement label{
    width:390px;
    text-align:left;
    margin-top:3px;
}
    </style>
<body>    
        <f:form method="POST" action="saveEmployee.do"
		modelAttribute="AddEmployee">
            <h1>Registration</h1>
            <fieldset class="row1">
                <legend>Account Details
                </legend>
                <p>
                    <label>Email *
                    </label>
                    <f:input path="" type="text" id=""/>
                    
                </p>
                <p>
                    <label>Password*
                    </label>
                    <f:input path="" type="text"/>
                   
                    <label class="obinfo">* obligatory fields
                    </label>
                </p>
            </fieldset>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>First Name *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                 <p>
                    <label>Last Name *
                    </label>
                    <f:input path="" type="text" class=""/>
                </p>
                <p>
                    <label>Contact Number *
                    </label>
                    <f:input path="" type="text" maxlength="10" id=""/>
                </p>
                <p>
                    <label>Refrence Number *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>Address
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>City *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>State *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>Zip Code *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>Country *
                    </label>
                    <f:select path="" id="">
                        <option>
                        </option>
                        <option value="1">United States
                        </option>
                        <option value="2">India
                        </option>
                        <option value="3">Japan
                        </option>
                    </f:select>
                </p>
              </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                    <label>Gender *</label>
                    <f:radiobutton path="gender" value="Male" id=""/>
                    <label>Male</label>
                    <f:radiobutton path="gender" value="Female" id=""/>
                    <label>Female</label>
                </p>
                 <p>
                    <label>Date Of Birth (dd/mm/yyyy) *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>Nationality *
                    </label>
                    <f:select path="" id="">
                        <option value="0">
                        </option>
                        <option value="1">United States
                        </option>
                        <option value="2">India
                        </option>
                        <option value="3">Japan
                        </option>
                    </f:select>
                </p>
                 <p>
                    <label>Blood Group 
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>Marital Status *
                    </label>
                    <f:select path="" id="">
                        <option value="0">
                        </option>
                        <option value="1">married
                        </option>
                         <option value="2">unmarried
                        </option>
                    </f:select>
                </p>
                <p>
                    <label>Designation *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>Previous Company *
                    </label>
                    <f:input path="" type="text" id=""/>
                </p>
                <p>
                    <label>Current Package *
                    </label>
                    <f:input path="" type="text" maxlength="10"/>
                </p>
               
            </fieldset>
            <fieldset class="row4">
                <legend>Terms and Mailing
                </legend>
                <p class="agreement">
                    <input path="" type="checkbox" value=""/>
                    <label>*  I accept the <a href="#">Terms and Conditions</a></label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>I want to receive personalized offers by your site</label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>Allow partners to send me personalized offers and related services</label>
                </p>
            </fieldset>
            <div><button class="button">Register &raquo;</button></div>
        </f:form>

</body>
</html>