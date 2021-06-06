<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlintiPaylas.aspx.cs" Inherits="KitapAlinti.AlintiPaylas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/styles.css" rel="stylesheet"/>
    <title></title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="homeLoggedin.aspx">K(alıntı)</a>
           <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="home.aspx">Çıkış Yap</a></li>
                 </ul>
            </div>
        </div>
    </nav>
    <div class="container">
            <div class="row">
                <div class="col-md-12">
                 <h1 class="text-center mt-5">ALINTINI PAYLAŞ</h1>

                </div>
            </div>
              <div class="row mt-5">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-8">
                    <form id="form2" runat="server">
                        <div class="form-group">
				            <label class="control-label col-sm-2" for="comment">Alıntı Başlığı:</label>
				            <div class="col-md-12">
                            <asp:TextBox ID="TextBaslik" runat="server"  CssClass="form-control" Rows="1"></asp:TextBox>
				            </div>
				        </div>  
                          <div class="form-group mt-5">
				            <label class="control-label col-sm-2" for="comment">Alıntı:</label>
				            <div class="col-md-12">
                            <asp:TextBox ID="TextAlinti" runat="server"  CssClass="form-control" Rows="5" TextMode="MultiLine"></asp:TextBox>
				            </div>
				        </div>  
                          <div class="form-group mt-5">
				            <label class="control-label col-sm-2" for="comment">Kitap:</label>
				            <div class="col-md-12">
                            <asp:TextBox ID="TextKitap" runat="server"  CssClass="form-control" Rows="1"></asp:TextBox>
				         </div>
				        </div>  
                        <asp:Button ID="BtnAlintiPaylas" runat="server" Text="Alıntı Paylaş" class="btn btn-primary mt-5" OnClick="BtnAlintiPaylas_Click" />
                         <div>
                             <asp:Label ID="HataliGiris" runat="server" Text=""></asp:Label>
                        </div>
                    </form>
                    </div>
                      <div class="col-md-2">

                    </div>
                </div>

        </div>
    </div>
</body>
</html>
