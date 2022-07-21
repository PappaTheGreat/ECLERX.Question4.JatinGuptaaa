<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPatient.aspx.cs" Inherits="eClerx.Question4.Jatin.SearchPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblSearchDocName" runat="server">Search by Doctor's Name :</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSearchDocName" runat="server"></asp:TextBox>
                       
                        <asp:Button Text="Search" runat="server" ID="BtnSearch" OnClick="BtnSearch_Click" />
                    </td>
                </tr>
                    
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
