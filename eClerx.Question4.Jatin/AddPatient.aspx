<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="eClerx.Question4.Jatin.AddPatient" %>

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
                        <asp:Label ID="lblPatientName" runat="server">Patient Name :</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtPatientName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must enter name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPatientGender" runat="server">Patient Gender :</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DDLPatientGender" runat="server">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                            <asp:ListItem Value="O">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="DDLPatientGender" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must Enter Gender"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAge" runat="server">Age :</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:RangeValidator ForeColor="Red" MinimumValue="0" MaximumValue="120" ControlToValidate="txtAge" ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 0 and 120"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtAge" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Must Enter Age"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblContactNumber" runat="server">Contact Number :</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContactNumber" runat="server" MaxLength="10" TextMode="Phone"></asp:TextBox>
                        <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="[0-9]{10}" ControlToValidate="txtContactNumber" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Contact Number must be of 10 digits"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtContactNumber" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Must Enter Number"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDoctorName" runat="server">Doctor's Name :</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDoctorName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtDoctorName" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Must Enter Doctor Name"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Add Patient" ID="BtnAddPatiend" runat="server" OnClick="BtnAddPatiend_Click" />
                    </td>  
                    <td>
                        <asp:Button Text="Want to search a patient?" ID="BtnSearchPatiend" runat="server" CausesValidation="False" OnClick="BtnSearchPatiend_Click" />
                    </td>                

                </tr>
                <tr>
                    <asp:Label ForeColor="Green" ID="lblSuccessful" runat="server"></asp:Label>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
