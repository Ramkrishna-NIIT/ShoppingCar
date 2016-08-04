
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
 <head>  
   <title>Angular JS table sort and filter example </title>  
   <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">  
   <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
   <script>  
     var app = angular.module('MyForm', ['ui.bootstrap', 'ngResource']);  
     app.controller('myCtrl', function ($scope) {  
       $scope.predicate = 'name';  
       $scope.reverse = true;  
       $scope.currentPage = 1;  
       $scope.order = function (predicate) {  
         $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;  
         $scope.predicate = predicate;  
       };  
       $scope.products = ${myJson};  //This code is extracting the string object being sent from controller
       $scope.totalItems = $scope.products.length;  
       $scope.numPerPage = 5;  
       $scope.paginate = function (value) {  
         var begin, end, index;  
         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
         end = begin + $scope.numPerPage;  
         index = $scope.students.indexOf(value);  
         return (begin <= index && index < end);  
       };  
     });  
   </script>  
   <style>  
     .odd {  
       background-color: antiquewhite;  
       color: #008b8b;  
     }  
     td th {  
       height: 30px;  
       min-width: 100px;  
     }  
     thead {  
       background-color: darkgray;  
       color: white;  
       height: 30px;  
     }  
   </style>  
 </head> 
 <body>
 <h2>Add Product</h2>

<c:url var="addAction" value="/marutidatatable/add" ></c:url>
<form:form action="${addAction}" commandName="product">
<table>
    <c:if test="${!empty product.name}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name">
                <spring:message text="NAME"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
    </tr>
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="PRICE"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="category">
                <spring:message text="CATEGORY"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="milage">
                <spring:message text="MILAGE"/>
            </form:label>
        </td>
        <td>
            <form:input path="milage" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="displacement">
                <spring:message text="DISPLACEMENT"/>
            </form:label>
        </td>
        <td>
            <form:input path="displacement" />
        </td>
    </tr>
     <tr>
        <td>
            <form:label path="description">
                <spring:message text="DESCRIPTION"/>
            </form:label>
        </td>
        <td>
            <form:input path="description" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>"/>
            </c:if>
        </td>
    </tr>
</table>  
</form:form>
<br> 
 <body ng-app="MyForm">  
   <div ng-controller="myCtrl">  
     <h3>List Products</h3>  
     <div class="container-fluid">  
       <hr />  
       <table class="table table-striped">  
         <thead>  
           <tr>  
             
             <th>  
               <a href="" ng-click="order('id')">Id</a>  
             </th>   
             <th>  
               <a href="" ng-click="order('name')">Name</a>  
             </th>  
             <th><a href="" ng-click="order('price')"> Price</a> </th>  
             <th><a href="" ng-click="order('category')">Category</a> </th>
              <th><a href="" ng-click="order('milage')">milage</a> </th>
               <th><a href="" ng-click="order('displacement')">Displacement</a> </th>
                <th><a href="" ng-click="order('description')">Description</a> </th>  
           </tr>  
         </thead>  
         <tbody>  
           <tr>  
              
             <td> <input type="text" ng-model="search.id" /></td>  
             <td> <input type="text" ng-model="search.name" /></td>  
             <td> <input type="text" ng-model="search.price" /> </td>  
             <td><input type="text" ng-model="search.category" /> </td>  
              <td><input type="text" ng-model="search.milage" /> </td>
              <td><input type="text" ng-model="search.displacement" /> </td>
              <td><input type="text" ng-model="search.description" /> </td>  
           </tr>             
           <tr ng-repeat="element in products | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">  
             <td>  
              <!--  <button class="btn">  
                 Edit  
               </button>  --> 
             </td>
             <td>{{ element.id}}</td>  
             <td>{{ element.name}}</td>  
             <td>{{ element.price}}</td>  
             <td>{{ element.category}}</td> 
             <td>{{ element.milage}}</td> 
             <td>{{ element.displacement}}</td>
             <td>{{ element.description}}</td>
             <td><a href="<c:url value='/edit/${element.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/remove/${element.id}' />" >Delete</a></td>
           </tr>
           
         </tbody>  
       </table>  
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div>  
   </div>  
   

 
 </body>  
 </html>