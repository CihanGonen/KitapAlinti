<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeLoggedin.aspx.cs" Inherits="KitapAlinti.homeLoggedin" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Alıntı</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
             <header class="py-5 bg-light border-bottom mb-4">
                <div class="container">
                    <div class="text-center my-5">
                        <h1 class="fw-bolder">K(alıntı)</h1>
                        <p class="lead mb-0">Kitap Alıntıları Paylaşım Platformu.</p>
                    </div>
                </div>
             </header>
            <div class="container">
                    <div class="row">
                        <!-- Blog entries-->
                        <div class="col-lg-8">
                            <!-- Nested row for non-featured blog posts-->
                            <div class="row">
                                    <!-- Blog post-->
                                <a class="nav-link mb-1" href="AlintiPaylas.aspx">Alıntı Paylaş</a>
                                <asp:Repeater ID="RpAlintilar" runat="server">
                                    <ItemTemplate>
                                         <div class="col-lg-6">
                                            <div class="card mb-4">
                                                <div class="card-body">
                                                    <div class="small text-muted"><%#Eval("alintiTarih") %></div>
                                                    <h2 class="card-title h4"><%#Eval("alintiBaslik") %></h2>
                                                    <p class="card-text"><%#Eval("alintiMetni") %></p>
                                                    <p class="card-text">- <%#Eval("alintiKitap") %></p>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                 </asp:Repeater>  
                            </div>
                        </div>
                         <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header">Search</div>
                        <div class="card-body">
                            <div class="input-group">
                                <asp:TextBox ID="TextSearch" runat="server" class="form-control"></asp:TextBox>
                                <asp:Button ID="BtnSearch" runat="server" Text="Ara!" class="btn btn-primary" OnClick="BtnSearch_Click" />
                            </div>
                        </div>
                    </div>
              <%--       <div class="card mb-4">
                        <div class="card-header">Alıntı Ekle</div>
                        <div class="card-body"></div>
                    </div>--%>
                </div>
                    </div>
                </div>
                <footer class="py-5 bg-dark">
                 <div class="container"><p class="m-0 text-center text-white">Copyright &copy; K(alıntı)</p></div>
                </footer>
        </div>
    </form>
</body>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</html>

