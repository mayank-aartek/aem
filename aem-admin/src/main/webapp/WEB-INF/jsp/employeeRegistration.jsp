<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <head>
        <title>CSS Registration Form</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="resources/css/style.css"/>
    </head>
    <body>    
        <f:form action="saveEmployee.do" class="register" modelAttribute="AddEmployee">
            <h1>Registration</h1>
            <fieldset class="row1">
                <legend>Account Details </legend>
                
                        <p>
                    <label>Email *
                    </label>
                    <f:input path="email" type="text" id="email"/>
                    
                </p>
                <p>
                    <label>Password*
                    </label>
                    <f:input path="password" type="text" id="password"/>
                   
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
                    <f:input path="firstName" type="text" id="firstName"/>
                </p>
                 <p>
                    <label>Last Name *
                    </label>
                    <f:input path="lastName" type="text" id="lastName"/>
                </p>
                <p>
                    <label>Contact Number *
                    </label>
                    <f:input path="contactNo" type="text" maxlength="10" id="contactNo"/>
                </p>
                <p>
                    <label>Refrence Number *
                    </label>
                    <f:input path="refrenceNo" type="text" id="refrenceNo"/>
                </p>
                <p>
                    <label>Address *
                    </label>
                    <f:input path="address" type="text" id="address"/>
                </p>
                <p>
                    <label>City *
                    </label>
                    <f:input path="city" type="text" id="city"/>
                </p>
                <p>
                    <label>State *
                    </label>
                    <f:input path="state" type="text" id="state"/>
                </p>
                <p>
                    <label>Zip Code *
                    </label>
                    <f:input path="zipCode" type="text" id="zipCode"/>
                </p>
                <p>
                    <label>Country *
                    </label>
                    <f:select path="country" id="country">
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
                    <f:radiobutton path="gender" value="Male" id="gender"/>
                    <label>Male</label>
                    <f:radiobutton path="gender" value="Female" id="gender"/>
                    <label>Female</label>
                </p>
                 <p>
                    <label>Date Of Birth (dd/mm/yyyy) *
                    </label>
                    <f:input path="DOB" type="text" id="DOB"/>
                </p>
                <p>
                    <label>Nationality *
                    </label>
                    <f:select path="nationality" id="nationality">
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
                    <f:input path="bloodGroup" type="text" id="bloodGroup"/>
                </p>
                <p>
                    <label>Marital Status *
                    </label>
                    <f:select path="maritalStatus" id="maritalStatus">
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
                    <f:input path="designation" type="text" id="designation"/>
                </p>
                <p>
                    <label>Previous Company *
                    </label>
                    <f:input path="previousCompany" type="text" id="previousCompany"/>
                </p>
                <p>
                    <label>Current Package *
                    </label>
                    <f:input path="currentPackage" type="text" maxlength="10" id="currentPackage"/>
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
            <div><button class="button">Register &raquo;</button>
            </div>   
                     <%-- </fieldset> --%>
            
        </f:form>
    </body>
</html>





