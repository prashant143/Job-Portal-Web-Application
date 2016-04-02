<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="add_category" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width: 80%;">
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
     </asp:ToolkitScriptManager>
        <tr>
            <td colspan="2"><div class="article"><h1 style="color:White;">Add Category</h1></div>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: medium; color: #008080">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td class="style1" style="font-size: medium; color: #008080">
                Category Name:-</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Country name" ControlToValidate="TextBox1" 
                    ValidationGroup="v"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1" style="font-size: medium; color: #008080">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" 
                                    Font-Names="Arial Black" Height="40px" Width="80px" 
                                   BackColor="#333333" ForeColor="White" 
                    onclick="btnadd_Click" ValidationGroup="v" />
                                <asp:RoundedCornersExtender ID="btnsearch_RoundedCornersExtender" 
                                    runat="server" Enabled="True" TargetControlID="btnadd">
                                </asp:RoundedCornersExtender>
                                <asp:DropShadowExtender ID="btnsearch_DropShadowExtender" runat="server" 
                                    Enabled="True" TargetControlID="btnadd">
                                </asp:DropShadowExtender>

 
                <br />
                <br />
 
            </td>
            
        </tr>
    </table>
    <asp:Panel ID="pnlperpage" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="Black" Width="750px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Per 
        Page Records:-
    
    <asp:DropDownList runat="server" ID="ddlperpage" AutoPostBack="True" 
            onselectedindexchanged="ddlperpage_SelectedIndexChanged" >
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
    </asp:DropDownList></asp:Panel>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="category_id" ShowFooter="True" 
            BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" ForeColor="White" 
        BackColor="#333333" 
        style="margin-bottom: 20px;" BorderStyle="Outset"
 CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
        Width="600px" onrowcancelingedit="GridView1_RowCancelingEdit">
            <Columns>
                <asp:TemplateField HeaderText="Category Id">
                    <ItemTemplate>
                        <asp:Label ID="lblcid" runat="server" Text='<%#Eval("category_id") %>'>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="lblid" runat="server" Text='<%#Eval("category_id") %>'>'>></asp:Label>
                    </EditItemTemplate>
                    
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="Category name">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("category_name") %>'>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("category_name") %>'>'></asp:TextBox>
                    </EditItemTemplate>
                   
                </asp:TemplateField>



                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/icon_edit.gif" CommandName="edit"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="update" />
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="cancel" />
                     </EditItemTemplate>
                  
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icon_delete.gif" CommandName="delete"/>
                  
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
           <HeaderStyle BackColor="#333333" Font-Bold="False" ForeColor="#E7E7FF" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="False" ForeColor="White" Font-Size="Small" HorizontalAlign="Right" VerticalAlign="Middle" />

        </asp:GridView>
   
</asp:Content>

