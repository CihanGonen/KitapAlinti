<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="KitapAlinti.admin.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/styles.css" rel="stylesheet" />
    <title></title>
    <style>
        .bg-color{
              background-color:#FFC370;
        }
    </style>
</head>
<body class="bg-color">
    <div class="container">
        <h1 class="text-center mt-5">ADMİN GİRİŞİ</h1>
        <div class="w-50 my-0 mx-auto mt-5">
           <form runat="server">
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Kullanıcı Adı</label>
                <asp:TextBox ID="TxtKullaniciAd" runat="server" class="form-control"></asp:TextBox>
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Şifre</label>
                <asp:TextBox ID="TxtSifre" runat="server" class="form-control"></asp:TextBox>
              </div>
               <asp:Button ID="BtnGiris" runat="server" Text="Giriş Yap" class="btn btn-primary" OnClick="BtnGiris_Click" />
               <div>
                  <asp:Label ID="HataliGiris" runat="server" Text=""></asp:Label>
               </div>
            </form>
        </div>
    </div>
</body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</html>

