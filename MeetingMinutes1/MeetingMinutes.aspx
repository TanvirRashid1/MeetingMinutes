<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MeetingMinutes.aspx.cs" Inherits="MeetingMinutes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meeting Minutes</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <span>Meeting Minutes</span>
        <br />
        <asp:Label runat="server">Select Customer Type</asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Corporate</asp:ListItem>
            <asp:ListItem>Individual</asp:ListItem>
        </asp:RadioButtonList>
  <div class="row">
      <div class="container">
          <div class="col-md-6">
              <asp:Table runat="server">
                  <asp:TableRow>
                      <asp:TableCell>
                          <asp:Label runat="server">Customer Name</asp:Label>
              <asp:DropDownList runat="server"   Height="20px" Width="100px" ForeColor="Black"  ID="ddlCustomerName">

              </asp:DropDownList>
<%--                         <asp:SqlDataSource ID="SqlDataCustomerName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CustomerName FROM Corporate_Customer_Tbl"></asp:SqlDataSource>--%>

                      </asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow>
                      <asp:TableCell><asp:Label runat="server">Date</asp:Label></asp:TableCell>
                       <asp:TableCell>
                           <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                           
                       </asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow>
                      <asp:TableCell>Attends From Client Side</asp:TableCell>
                      <asp:TableCell><asp:TextBox runat="server" TextMode="MultiLine" placeholder="Present Client Side" ForeColor="Black"></asp:TextBox></asp:TableCell>
                      </asp:TableRow>

                  <asp:TableRow>
                      <asp:TableCell>Attends From Host Side</asp:TableCell>
                      <asp:TableCell><asp:TextBox runat="server" placeholder="Present Self Side" ForeColor="Black"></asp:TextBox></asp:TableCell>
                      </asp:TableRow>

                  <asp:TableRow>
                      <asp:TableCell>Interested Product/Service</asp:TableCell>
                      <asp:TableCell>
                             <asp:DropDownList runat="server">
                  
                            </asp:DropDownList>
                      </asp:TableCell>
                  </asp:TableRow>

                  <asp:TableRow>
                      <asp:TableCell></asp:TableCell>
                  </asp:TableRow>

              </asp:Table>
               <asp:Button ID="btnAdd" runat="server" Text="Add" ForeColor="Black" />

          </div>
         
           <div class="col-md-6">
               fjkkd
          </div>
      </div>
    </div>
        <div>
            <asp:GridView ID="gvProductService" runat="server">

            </asp:GridView>

        </div>
    </div>
    </form>
</body>
</html>
