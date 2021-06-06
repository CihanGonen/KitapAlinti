<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="KitapAlinti.KayitOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/styles.css" rel="stylesheet" />
    <title></title>
    <style>
        .bg-color{
              background-color:#FFC370;
        }
    </style>
</head>
<body class="bg-color">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="home.aspx">K(alıntı)</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        </ul>
                    </div>
                </div>
            </nav>
    <div class="container">
        <h1 class="text-center mt-5">ŞİMDİ ÜYE OL !</h1>
        <div class="w-50 my-0 mx-auto mt-5">
           <form runat="server">
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email adresiniz</label>
                <asp:TextBox ID="TextEmailEkle" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Şifreniz</label>
                <asp:TextBox ID="TextSifreEkle" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
              </div>
               <asp:Button ID="BtnKayit" runat="server" Text="Üye Ol" class="btn btn-primary" OnClick="BtnKayit_Click" />
                 <div>
                    <asp:Label ID="LblKayitKontrol" runat="server" Text=""></asp:Label>
                </div>
            </form>
        </div>
    </div>
</body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</html>
