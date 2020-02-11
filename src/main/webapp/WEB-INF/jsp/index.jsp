<html>
<body>
<form>
Keyword:<br>
<input type="text" name="keyword" onkeyup="callREST();"><br>
</form>
<div id="response"></div>
<script>
function callREST() {
//var xhttp = XMLHttpRequest ? new XMLHttpRequest() :
// new ActiveXObject("Microsoft.XMLHTTP");
var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {

if (this.readyState == 4 && this.status == 200) {
alert(xhttp.status);
document.getElementById("response").innerHTML = this.responseText;
} else {
alert(xhttp.status);
}
};
xhttp.open("GET", "https://connect.boomi.com/ws/rest/paging/test/paging", true);
xhttp.setRequestHeader('Access-Control-Allow-Origin', '*');
xhttp.setRequestHeader("Authorization","Basic Ym9vbWlfdmFyYWhhbmFyYXNpbWh1bHVzaS1ZOUoySFEuUEVaREVZOjVmM2RhMWNmLWQ1NTktNDk1Zi1iZDQxLTQ2NjNkY2Y2ZTM3MA");
xhttp.setRequestHeader('jwt','12313');
xhttp.send();
}
</script>
</body>
</html>