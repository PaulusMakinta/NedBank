<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Nedbank.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 56%;
            height: 298px;
        }
    </style>
</head>
<body style="background-color:#003300; text-align:center; color:white" >
    <h2 style="color:white">WELCOME TO NEDBANK</h2>
    <form id="form1" runat="server" style="background-color:white; text-align:center;margin-left:225px;" class="auto-style5" >
        <table style="text-align:center; margin:auto">
            <tr>
                <td style="color:darkgreen">
                    Counter 1
                </td>
                <td>

                </td>
                <td style="color:darkgreen">
                    Counter 2
                </td>

                <td>

                </td>
                <td style="color:darkgreen">
                    Counter 3
                </td>
            </tr>
        
            <tr>
                <td>
                    <asp:TextBox ID="txtTeller1" runat="server" BackColor="#003300" ForeColor="White" Width="150px" Font-Size="Larger"></asp:TextBox>
                </td>
                <td>

                </td>
                <td>
                    <asp:TextBox ID="txtTeller2" runat="server" BackColor="#003300" ForeColor="White" Width="150px" Font-Size="Larger"></asp:TextBox>
                </td>

                <td>

                </td>
                <td>
                    <asp:TextBox ID="txtTeller3" runat="server" BackColor="#003300" ForeColor="White" Width="150px" Font-Size="Larger"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnTeller1" runat="server" Text="Next" Width="150px" Font-Size="Large" ForeColor="#003300" OnClick="btnTeller1_Click" />
                </td>
                <td>

                </td>
                <td>
                    <asp:Button ID="btnTeller2" runat="server" Text="Next" Width="150px" Font-Size="Large" ForeColor="#003300" OnClick="btnTeller2_Click" />
                </td>

                <td>

                </td>
                <td>
                    <asp:Button ID="btnTeller3" runat="server" Text="Next" Width="159px" Font-Size="Large" ForeColor="#003300" OnClick="btnTeller3_Click" />
                </td>
            </tr>
         
            
              <tr>
                <td colspan="5">
                     <asp:TextBox ID="txtDisplay" runat="server" Width="500px" BackColor="#003300" Font-Size="Larger" ForeColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                      <asp:ListBox ID="ListBox1" runat="server" ForeColor="#003300" Width="100px"></asp:ListBox>
                </td>
            </tr>
             <tr>
                <td colspan="5">
                    <asp:Button ID="btnPrintToken" runat="server" Text="Print Token" OnClick="btnPrintToken_Click" BackColor="#003300" ForeColor="White" /><br /><br />
                   
                </td>
            </tr>

              <tr>
                <td colspan="5">
                   

                   
                </td>
            </tr>

        </table>
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
     </body>
</html>
