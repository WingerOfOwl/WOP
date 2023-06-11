<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>What's On Pad</title>
    <link rel="stylesheet" href="style.css">
     <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
        <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>
        <!-- TODO: Add SDKs for Firebase products that you want to use https://firebase.google.com/docs/web/setup#available-libraries -->
        <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-analytics.js"></script>
        <script src="https://www.gstatic.com/firebasejs/7.14.4/firebase-auth.js"></script>
        <script>
            // Your web app's Firebase configuration
            var firebaseConfig = {
            		 apiKey: "AIzaSyAtIehiDs4vBjgaLTlb0QNHzbYHc3PItwk",
            		  authDomain: "cobafirebase-388713.firebaseapp.com",
            		  databaseURL: "https://cobafirebase-388713-default-rtdb.asia-southeast1.firebasedatabase.app",
            		  projectId: "cobafirebase-388713",
            		  storageBucket: "cobafirebase-388713.appspot.com",
            		  messagingSenderId: "130642067337",
            		  appId: "1:130642067337:web:f694a1839a5a1b04eaeb58",
            		  measurementId: "G-0J9VRNW01W"
            };
            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
            firebase.analytics();
        </script>
</head>

<body>
    <div class="wrapper">
        <div class="title-text">
            <div class="title login">
                <a href="login.html">

                </a>
                <img src="img/WOP_hitam.png">
            </div>
        </div>
        <div class="form-container">
            <div class="form-inner">
             <form action="index.jsp" class="login" onclick="signIn()" id="signIn">
                    <div class=" field">
                        <input id="email" type="text" placeholder="Enter your email" required>
                    </div>
                    <div class="field">
                        <input id="password" type="password" placeholder="Enter your password" required>
                    </div>
                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="LOGIN" onclick="signIn()" id="signIn">
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
<script src="admin/vendor/jquery/jquery.min.js"></script>
<script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="admin/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="admin/js/sb-admin-2.min.js"></script>
<script>
function signIn() {
var email=document.getElementById("email").value;
var password=document.getElementById("password").value;
firebase.auth().signInWithEmailAndPassword(email,password).then(function () {
window.location.href="index.jsp";
}).catch(function (error) {
var errorMessage=error.message;
alert(errorMessage);
});
}
</script>
</body>

</html>