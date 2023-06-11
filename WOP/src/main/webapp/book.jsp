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
        <script src="https://www.gstatic.com/firebasejs/7.13.1/firebase-storage.js"></script>
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
      <a class="navbar-brand" href="index.html" style="font-weight: bold; margin-left: 20%; font-size: 200%;">
        What's On Pads
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
            <a class="nav-link" href="account.jsp">Account</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <table id="tb_book" class="table table-striped">
     <tr>
		                                        <td>#ID</td>
		                                        <td>Authors</td>
		                                        <td>Name</td>
		                                        <td>Price</td>
		                                    </tr>
		                                </table>
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
            <input placeholder="Authors: J.K. Rowli" id="authors" class="inputnama"></input>
            <input placeholder="Book Name: Harry potter and Deathly Hallow" id="name" class="inputnama"></input>
            <input placeholder="Price: 200.000" id="price" type="number" class="inputnama"></input>
			<input type="file" id="files" name="files" accept="image/png,
				image/jpeg">
            <p class="text-danger" id="modalAlert2" style="display: none;">Something went wrong</p>
            <!-- input harga -->

          </div>
          <div class="modal-footer col-12">
            <input type="button" class="btn btn-primary" value="Add Book Now" id="buttonAdd" onclick="save_book()">
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
  <script src="book.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <script src="vendor/jquery/jquery.min.js"></script>
		    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		    <!-- Core plugin JavaScript-->
		    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		    <script>
		        var tbMataKuliah = document.getElementById('tb_book');
		        var databaseRef = firebase.database().ref('book/');
		        var rowIndex = 1;
		        databaseRef.once('value', function (snapshot) {
		            snapshot.forEach(function (childSnapshot) {
		                var childKey = childSnapshot.key;
		                var childData = childSnapshot.val();
		                var row = tbMataKuliah.insertRow(rowIndex);
		                var cellId = row.insertCell(0);
		                var cellAuthors = row.insertCell(1);
		                var cellName = row.insertCell(2);
		                var cellPrice = row.insertCell(3);
		                cellId.appendChild(document.createTextNode(childKey));
		                cellAuthors.appendChild(document.createTextNode(childData.authors));
		                cellName.appendChild(document.createTextNode(childData.name));
		                cellPrice.appendChild(document.createTextNode(childData.price));
		                rowIndex = rowIndex + 1;
		            });
		            var table = document.getElementById("tb_book");
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
		                        var authors = cell2.innerHTML;
		                        var name = cell3.innerHTML;
		                        var price = cell4.innerHTML;
		                        document.getElementById('uid').value = id;
		                        document.getElementById('authors').value = authors;
		                        document.getElementById('name').value = name;
		                        document.getElementById('price').value = price;
		                    };
		                };
		                currentRow.onclick = createClickHandler(currentRow);
		            }
		        });
		        
		        var databaseRef = firebase.database().ref('book/');
		        function save_book() {
		        	const file = document.querySelector('input[type="file"]').files[0];
		            var storage = firebase.storage();
		            var pathReference = storage.ref('coba/');
		            var metadata = {

		            contentType: 'image/jpeg',
		            };

		            var uploadTask = pathReference.child(file.name).put(file, metadata);
		            uploadTask
		            .then(snapshot => snapshot.ref.getDownloadURL())
		            .then((url) => {
		            console.log(url);
		            document.querySelector('input[type="file"]').src = url;
		            
		            })
		            var authors = document.getElementById('authors').value;
		            var name = document.getElementById('name').value;
		            var price = document.getElementById('price').value;
		            var foto = file.name;
		            var uid = firebase.database().ref().child('book').push().key;
		            var data = {
		                authors: authors,
		                name: name,
		                price: price,
		                foto: foto
		            }
		            
		            var updates = {};
		            updates['/book/' + uid] = data;
		            firebase.database().ref().update(updates);
		            alert('New Book has been created successfully!');
		            reload_page();
		        }
		        function reload_page() {
		            window.location.reload();
		        }
		    </script>
</body>

</html>