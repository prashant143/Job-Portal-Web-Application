<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_show.aspx.cs" Inherits="admin_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="article"><h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Show Admin</h1></div><br /><br />
<asp:GridView ID="GridView1" runat="server" Width="740px"
     BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        BackColor="#333333" AllowPaging="True" 
        style="margin-bottom: 20px;" BorderStyle="Outset"

            AutoGenerateColumns="False" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        DataKeyNames="reg_id" 
        onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
        onrowdeleting="GridView1_RowDeleting1" >
        <Columns>
        
                
                <asp:TemplateField HeaderText="Admin Name">
                    <ItemTemplate>
                        <asp:Label ID="lblcompname" runat="server" Text='<%#Eval("username") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Contact No">
                    <ItemTemplate>
                        <asp:Label ID="lbltitle" runat="server" Text='<%#Eval("contact_no") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                  <asp:TemplateField HeaderText="Email Id">
                    <ItemTemplate>
                        <asp:Label ID="lblvacancy" runat="server" Text='<%#Eval("email_id") %>'>'></asp:Label>
                    </ItemTemplate>
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

