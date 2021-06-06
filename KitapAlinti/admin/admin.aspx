<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="KitapAlinti.admin.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Kontrol Paneli</title>
    <link href="../css/styles.css" rel="stylesheet" />
    <style>
        .card-body{
            background-color:#808080;
            color:#000000;
        }
        .card-body:hover{
            background-color:#3f3f3f;
             color:#ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-8">
                        <div class="card">
                            <asp:Button ID="kullaniciAc" runat="server" Text="Kullanıcılar" CssClass="card-body" OnClick="kullaniciAc_Click"  />
                        </div>
                    </div>
                      <div class="col-md-2">
                             <a class="nav-link text-danger fw-bold mt-2" href="../home.aspx">ÇIKIŞ</a>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-8">
                        <div class="card">
                            <asp:Panel ID="PanelKullanici" visible="false" runat="server">
                               <table border="1" cellspacing="0" cellpadding="10" width="850" class="table">
                                   <tr>
                                       <td>Kullanıcı Adı</td>
                                       <td>Sil</td>
                                   </tr>
                                    <asp:Repeater ID="RpKullaniciCek" runat="server">
                                       <ItemTemplate>
                                           <tr>
                                               <td><%#Eval("email") %></td>
                                               <td><a href="admin.aspx?kullaniciID=<%#Eval("kullaniciID") %>&userVeri=sil" style="color:red;">SİL</a></td>
                                           </tr>
                                       </ItemTemplate>
                                   </asp:Repeater>
                               </table>
                            </asp:Panel>
                        </div>
                    </div>
                      <div class="col-md-2">

                    </div>
                </div>
                 <div class="row mt-5">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-8">
                        <div class="card">
                            <asp:Button ID="alintiAc" runat="server" Text="Alıntılar" CssClass="card-body" OnClick="alintiAc_Click" />
                        </div>
                    </div>
                      <div class="col-md-2">

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-8">
                        <div class="card">
                            <asp:Panel ID="PanelAlinti" visible="false" runat="server">
                               <table border="1" cellspacing="0" cellpadding="10" width="850" class="table">
                                   <tr>
                                       <td>Alıntı Başlığı</td>
                                       <td>Sil</td>
                                   </tr>
                                   <asp:Repeater ID="RpAlintiCek" runat="server">
                                       <ItemTemplate>
                                           <tr>
                                               <td><%#Eval("alintiBaslik") %></td>
                                               <td><a href="admin.aspx?alintiID=<%#Eval("alintiID") %>&veri=sil" style="color:red;">SİL</a></td>
                                           </tr>
                                       </ItemTemplate>
                                   </asp:Repeater>
                               </table>
                            </asp:Panel>
                        </div>
                    </div>
                    <div class="col-md-2">
                        
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</html>
