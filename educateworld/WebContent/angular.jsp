<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>  
</head>  
<body ng-app="myapp">  
<div ng-controller="HelloController" >  
<h2>Hello {{helloTo.title}} !</h2>  
</div>  
  
<script>  
angular.module("myapp", [])  
    .controller("HelloController", function($scope) {  
        $scope.helloTo = {};  
        $scope.helloTo.title = "World, AngularJS";  
    } );  
</script>  
</body>  
</html>   