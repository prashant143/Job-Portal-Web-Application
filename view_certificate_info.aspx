<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="view_certificate_info.aspx.cs" Inherits="view_certificate_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="article"><h1 style="color:White;">&nbsp;&nbsp;&nbsp; Certificates    </h1></div>
    <p>&nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" Width="100%" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="certificate_id" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowdeleting="GridView1_RowDeleting"
        onrowupdating="GridView1_RowUpdating" BorderStyle="None">
        <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" 
            HorizontalAlign="Center" VerticalAlign="Middle" />
        <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        <Columns>
                <asp:TemplateField HeaderText="User Name">
                    <ItemTemplate>
                        <asp:Label ID="lbluname" runat="server" Text='<%#Eval("first_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                <asp:TemplateField HeaderText="Certificate Name">
                    <ItemTemplate>
                        <asp:Label ID="lblcname" runat="server" Text='<%#Eval("certificate_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Certificates">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtneid" runat="server" Text='<%#Eval("certificate_path") %>' CommandName="update">'></asp:LinkButton>
                    </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        
                        <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="delete" />
                    </ItemTemplate>
                 </asp:TemplateField>

        </Columns>
    </asp:GridView>
</asp:Content>

