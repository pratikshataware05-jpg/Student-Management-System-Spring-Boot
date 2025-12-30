<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Shift Batch</title>

<style>
body{
    font-family: Arial;
    background:#f4f6ff;
}
.form-box{
    width:400px;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}
input,select,button{
    width:100%;
    padding:12px;
    margin:10px 0;
    border-radius:6px;
    border:1px solid #ccc;
}
button{
    background:#ff9800;
    color:white;
    font-weight:bold;
    border:none;
}
</style>

</head>
<body>

<div class="form-box">
    <h2>Shift Batch</h2>

    <form action="updateShift" method="post">

        <input type="hidden" name="id" value="${student.id}">

       
        
        <select name="batch">
        <option value="Morning" ${student.batch=='Morning'?'selected':''} >Morning</option>
        <option value="Afternoon" ${student.batch=='Afternoon'?'selected':''} >Afternoon</option>
        <option value="Evening" ${student.batch=='Evening'?'selected':''} >Evening</option>
        
        </select>

        <select name="batchMode">
            <option value="Online" ${student.batchMode=='Online'?'selected':''}>Online</option>
            <option value="Offline" ${student.batchMode=='Offline'?'selected':''}>Offline</option>
        </select>

        <input type="text" name="batchnumber" value="${student.batchnumber}" placeholder="Batch Number">

        <button type="submit">Update Shift</button>
    </form>
</div>

</body>
</html>
