<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminslider.aspx.cs" Inherits="adminslider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="article"><h1 style="color:White;">Upload Slider Images</h1></div>
 <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;
        <asp:Button ID="Button1" runat="server"
            Text="Upload" onclick="Button1_Click" />
            <asp:DataList ID="DataList1" runat="server" CellSpacing="5" 
            RepeatColumns="3" DataKeyField="imgid" 
            ondeletecommand="DataList1_DeleteCommand">
            <ItemTemplate>
	                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("imgpath") %>' Width="298px" BorderColor="Black" BorderWidth="2px"  /><br />
                <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="delete" />
            </ItemTemplate>
           
        </asp:DataList>
</asp:Content>

