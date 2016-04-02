<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="search_job.aspx.cs" Inherits="search_job" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
                        <div class="article"><h1 style="color:White;">Search Jobs</h1></div>
    <p>&nbsp;</p>
    
 <asp:GridView ID="GridView1" runat="server" Width="650px"
     BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        BackColor="#464646" AllowPaging="True" 
        style="margin-bottom: 20px; margin-left:0px;" BorderStyle="Outset"

            AutoGenerateColumns="False" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        DataKeyNames="jobpost_id" onrowdeleting="GridView1_RowDeleting" onpageindexchanging="GridView1_PageIndexChanging" 
         >
        <Columns>
        
                
                <asp:TemplateField HeaderText="company name">
                    <ItemTemplate>
                        <asp:Label ID="lblcompname" runat="server" Text='<%#Eval("Company_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Job title">
                    <ItemTemplate>
                        <asp:Label ID="lbltitle" runat="server" Text='<%#Eval("job_title") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                  <asp:TemplateField HeaderText="Vacancy">
                    <ItemTemplate>
                        <asp:Label ID="lblvacancy" runat="server" Text='<%#Eval("no_of_vacancy") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Maximum Salary">
                    <ItemTemplate>
                        <asp:Label ID="lblmaxsal" runat="server" Text='<%#Eval("Max_sal") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Minimum Salary">
                    <ItemTemplate>
                        <asp:Label ID="lblminsal" runat="server" Text='<%#Eval("min_sal") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                  <asp:TemplateField HeaderText="Application End Date">
                    <ItemTemplate>
                        <asp:Label ID="lblappenddate" runat="server" Text='<%#Eval("app_end_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Require Experience">
                    <ItemTemplate>
                        <asp:Label ID="lblreqexp" runat="server" Text='<%#Eval("require_exper") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Require Skill">
                    <ItemTemplate>
                        <asp:Label ID="lblreqskill" runat="server" Text='<%#Eval("require_skill") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Require Position Type">
                    <ItemTemplate>
                        <asp:Label ID="lblreqedu" runat="server" Text='<%#Eval("require_postype") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Interview Date">
                    <ItemTemplate>
                        <asp:Label ID="lblinterviewdate" runat="server" Text='<%#Eval("interview_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>


                <asp:TemplateField HeaderText="Command">
                    <ItemTemplate>
                        
                        <asp:Button ID="btndelete" runat="server" Text="Apply" CommandName="delete" 
                        BackColor="#666666" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Medium" 
                  ForeColor="White" Height="27px" 
                                   Width="60px" />
           
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#6C5B6B" Font-Bold="False" ForeColor="#E7E7FF" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="False" ForeColor="White" Font-Size="Small" HorizontalAlign="Right" VerticalAlign="Middle" />

    </asp:GridView>  
</asp:Content>

