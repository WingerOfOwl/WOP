<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>What's On Pads Admin</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
        <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>
        <!-- TODO: Add SDKs for Firebase products that you want to use https://firebase.google.com/docs/web/setup#available-libraries -->
        <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-analytics.js"></script>
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

  <nav class="navbar navbar-expand-lg navbar-dark  fixed-top" style="background-color: #82AAE3;">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.html" style="font-weight: bold; margin-left: 20%; font-size: 40px;">
        What's On
        Pads
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-right" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0" style="margin-right: 25%;">
          <li class="nav-item ">
            <a class="nav-link" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="book.jsp">Book</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="order.jsp">Order</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="user.jsp">User</a>
          </li>
          <li class="nav-item" style="background-color:#E8A0BF; border-radius: 30px;">
            <a class="nav-link" href="account.html">Account</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <table class="table table-striped" id="tb_user">
     <tr>
		                                        <td>#ID</td>
		                                        <td>Account name</td>
		                                        <td>Email</td>
		                                        <td>Status</td>
		                                    </tr>
		                                </table>
  <td><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
      Delete
    </button>
    <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
    tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalToggleLabel">Add Book Now</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form onsubmit="return false">
          <div class="modal-body">
            <input placeholder="Account Name : Winger" id="acc" class="inputnama"></input>
            <input placeholder="Book Name: Winger@gmail.com" id="email" type="email" class="inputnama"></input>
            <input placeholder="Active" id="status" type="text" class="inputnama"></input>
            <p class="text-danger" id="modalAlert2" style="display: none;">Something went wrong</p>
            <!-- input harga -->

          </div>
          <div class="modal-footer col-12">
            <input type="button" class="btn btn-primary" value="Add Book Now" id="buttonAdd" onclick="save_user()">
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class=" modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2"
    tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalToggleLabel2">Congratulation!!!</h5>
          <a href="afbookadd.html"><button type="button" class="btn-close" data-bs-dismiss="modal"
              aria-label="Close"></button></a>
        </div>
        <div class="modal-body">
          Congrats You have to add The Book
        </div>
        <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>
  <div class="col-12" style="display: flex; justify-content: center;">
    <div class="row">
      <a class="btn btn-primary" data-bs-toggle="modal" href="#exampleModalToggle" role="button">Add Book</a>
    </div>
  </div>
    <script src="user.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"></script>
  <script src="vendor/jquery/jquery.min.js"></script>
		    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		    <!-- Core plugin JavaScript-->
		    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		    <script>
		        var tbMataKuliah = document.getElementById('tb_user');
		        var databaseRef = firebase.database().ref('user/');
		        var rowIndex = 1;
		        databaseRef.once('value', function (snapshot) {
		            snapshot.forEach(function (childSnapshot) {
		                var childKey = childSnapshot.key;
		                var childData = childSnapshot.val();
		                var row = tbMataKuliah.insertRow(rowIndex);
		                var cellId = row.insertCell(0);
		                var cellAcc = row.insertCell(1);
		                var cellEmail = row.insertCell(2);
		                var cellStatus = row.insertCell(3);
		                cellId.appendChild(document.createTextNode(childKey));
		                cellAcc.appendChild(document.createTextNode(childData.acc));
		                cellEmail.appendChild(document.createTextNode(childData.email));
		                cellStatus.appendChild(document.createTextNode(childData.status));
		                rowIndex = rowIndex + 1;
		            });
		            var table = document.getElementById("tb_user");
		            var rows = table.getElementsByTagName("tr");
		            for (i = 0; i < rows.length; i++) {
		                var currentRow = table.rows[i];
		                var createClickHandler = function (row) {
		                    return function () {
		                        var cell1 = row.getElementsByTagName("td")[0];
		                        var cell2 = row.getElementsByTagName("td")[1];
		                        var cell3 = row.getElementsByTagName("td")[2];
		                        var cell4 = row.getElementsByTagName("td")[3];
		                        var id = cell1.innerHTML;
		                        var acc = cell2.innerHTML;
		                        var email = cell3.innerHTML;
		                        var status = cell4.innerHTML;
		                        document.getElementById('uid').value = id;
		                        document.getElementById('acc').value = acc;
		                        document.getElementById('email').value = email;
		                        document.getElementById('status').value = status;
		                    };
		                };
		                currentRow.onclick = createClickHandler(currentRow);
		            }
		        });
		        
		        var databaseRef = firebase.database().ref('user/');
		        function save_user() {
		            var acc = document.getElementById('acc').value;
		            var email = document.getElementById('email').value;
		            var status = document.getElementById('status').value;
		            var uid = firebase.database().ref().child('user').push().key;
		            var data = {
		                acc: acc,
		                email: email,
		                status: status
		            }
		            var updates = {};
		            updates['/user/' + uid] = data;
		            firebase.database().ref().update(updates);
		            alert('New User has been created successfully!');
		            reload_page();
		        }
		        function reload_page() {
		            window.location.reload();
		        }
		    </script>
</body>

</html>