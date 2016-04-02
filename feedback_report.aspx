<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="feedback_report.aspx.cs" Inherits="feedback_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <asp:Panel ID="pnlperpage" runat="server" Font-Bold="True" Font-Size="small" 
        ForeColor="Black" Width="750px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Per Page Records:-
    
    <asp:DropDownList runat="server" ID="ddlperpage" AutoPostBack="True" 
            onselectedindexchanged="ddlperpage_SelectedIndexChanged">
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
    </asp:DropDownList></asp:Panel>

 <h1 style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;
    Feedback Report</h1>

<asp:Panel ID="Panel1" runat="server" Width="750px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbtnall" 
        runat="server" AutoPostBack="True" GroupName="feedback" Text="All" />
&nbsp;
    <asp:RadioButton ID="rbtntoday" runat="server" AutoPostBack="True" 
        GroupName="feedback" Text="Today" />
    &nbsp;&nbsp;
    <asp:RadioButton ID="rbtncurrentmonth" runat="server" AutoPostBack="True" 
        GroupName="feedback" Text="Current Month" />
</asp:Panel>
   <asp:GridView ID="grdfeedback" runat="server"
   BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        Width="750px" BackColor="#333333" 
        style="margin-bottom: 25px;" BorderStyle="Outset"

            AutoGenerateColumns="False" DataKeyNames="feedback_id" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        onpageindexchanging="grdfeedback_PageIndexChanging" 
        onrowdeleting="grdfeedback_RowDeleting" 
        EnableViewState="False" 
        onselectedindexchanged="grdfeedback_SelectedIndexChanged" 
        AllowPaging="True" PageSize="5" onrowupdating="grdfeedback_RowUpdating"  >
            <Columns>

                  <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="email_id">
                    <ItemTemplate>
                        <asp:Label ID="lbleid" runat="server" Text='<%#Eval("email_id") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="message">
                    <ItemTemplate>
                        <asp:Label ID="lblmsg" runat="server" Text='<%#Eval("message") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Feedback_date">
                    <ItemTemplate>
                        <asp:Label ID="lblfdate" runat="server" Text='<%#Eval("Feedback_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                  <asp:TemplateField HeaderText="Reply">
                    <ItemTemplate>
                       
                        <asp:Button ID="btnreply" runat="server" Text="Reply" CommandName="update" />
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icon_delete.gif" CommandName="delete"/>
                       <%-- <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="delete" />--%>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
            
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="#E7E7FF" Font-Size="Small" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" Font-Size="Small" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" Font-Size="Small" />
        </asp:GridView>

</asp:Content>

