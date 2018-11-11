<?php
	class model{
		//inisialisasi awal untuk class biasa disebut instansiasi 
		var $conn;
		function __construct(){
			$this->conn = mysqli_connect("localhost", "root", "", "kuliah");
			// $db = mysqli_connect_db("kuliah");
			//buatlah koneksi seperti modul 9 kemarin
			
		}
		
		function execute($query){
			return $this->conn->query($query);
		}
		
		function selectAll(){
			$query = "SELECT * FROM mahasiswa";//query select*from 
			return $this->execute($query);
		}
		
		function selectMhs($nim){
			$query = "SELECT * FROM mahasiswa WHERE nim='$nim'";//query select mahasiswa berdasarkan nim
			return $this->execute($query);
		}
		
		function updateMhs($nim, $nama, $angkatan, $fakultas, $prodi, $genre, $wisata){
			$query = "UPDATE mahasiswa SET nim='$nim', nama='$nama', angkatan='$angkatan', fakultas='$fakultas', prodi='$prodi', genre='$genre', wisata='$wisata' WHERE nim='$nim'";//query update nim, nama, angkatan, fakultas, prodi
			return $this->execute($query);
		}
		
		function deleteMhs($nim){
			$query = "DELETE FROM mahasiswa WHERE nim='$nim'";//query delete berdasarkan nim
			return $this->execute($query);
		}
		
		function insertMhs($nim, $nama, $angkatan, $fakultas, $prodi, $genre, $wisata){
			$query = "INSERT INTO mahasiswa(nim, nama, angkatan, fakultas, prodi, genre, wisata) VALUES ('$nim', '$nama', '$angkatan', '$fakultas', '$prodi', '$genre', '$wisata')";//query insert nim,nama, angkatan, fakultas, prodi
			return $this->execute($query);
		}
		
		function fetch($var){
			return mysqli_fetch_array($var);
		}
		
		//pasangan construct adalah destruct untuk menghapus inisialisasi class pada memori
		function __destruct(){
		}
	}
?>