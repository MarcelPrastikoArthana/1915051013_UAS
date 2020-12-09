<?php
    include"koneksi.php";
        $ver_nama =$_POST['ver_nama'];
        $ver_alamat=$_POST['ver_alamat'];
        $foto=$_FILES['foto']['name'];
        $targetdir = "img/";
        $targetfile = $targetdir.basename($_FILES["foto"]["name"]);
        // Select file type
 		 $imageFileType = strtolower(pathinfo($targetfile,PATHINFO_EXTENSION));

  		// Valid file extensions
 		 $extensions_arr = array("jpg","jpeg","png","gif");

        $sql_simpan=$verlipdo->prepare("insert into  tb_siswa(id_siswa,nama_siswa,alamat_siswa,pp)
            values ('','$ver_nama','$ver_alamat','$foto')");
                $sql_simpan->execute();

        move_uploaded_file($_FILES['foto']['tmp_name'],$targetdir.$foto);
            ?>
            
        <br/>
        <script language="JavaScript">alert('Data Berhasil Di Simpan !');
document.location=('index.php')</script>
