<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_company.aspx.cs" Inherits="add_company" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 168px;
        }
        

        .style2
        {
            width: 150px;
        }
        

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<div class="article"><h1 style="color:White">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp; Add Company&nbsp;&nbsp;&nbsp;&nbsp;</h1></div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ValidationGroup="v1" ShowSummary="False" ShowMessageBox="True" />
    <h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
    <asp:Panel ID="pnlcompany" runat="server" GroupingText="Company Information" BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">
        <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Name:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtcompname" runat="server" CausesValidation="True" 
                        ForeColor="#666666" Height="27px" Width="325px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcompname" runat="server" 
                        ControlToValidate="txtcompname" ErrorMessage="enter the company name" 
                        ValidationGroup="v1">Enter Company name</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender1" runat="server" TargetControlID="rfvcompname" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtcompname" 
                    WatermarkText="Enter Company Name" WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>
                </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtadd" runat="server" Height="70px" 
                       Rows="4" TextMode="MultiLine" 
                        Width="325px" CausesValidation="True" ForeColor="#666666"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcompadd" runat="server" 
                        ControlToValidate="txtadd" ErrorMessage="enter the company address" 
                        ValidationGroup="v1">Enter company Address</asp:RequiredFieldValidator>
                </td>
                 <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender2" runat="server" TargetControlID="rfvcompadd" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtadd" 
                    WatermarkText="Eg:- 55-/ Shivam Complex," WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>

            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    Country:</td>
                <td>
                    
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            &nbsp; &nbsp;
                            <asp:DropDownList ID="ddlcountry" runat="server" Height="27px" 
                              Width="70px" AutoPostBack="True" CausesValidation="True" 
                                ForeColor="#666666" 
                                onselectedindexchanged="ddlcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvcountry" runat="server" 
                                ControlToValidate="ddlcountry" ErrorMessage="select the country" 
                                InitialValue="select" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                            State:-<asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
                                CausesValidation="True" ForeColor="#666666" Height="27px" 
                                onselectedindexchanged="ddlstate_SelectedIndexChanged" Width="70px">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvstate" runat="server" 
                                ControlToValidate="ddlstate" ErrorMessage="select state" InitialValue="select" 
                                ValidationGroup="v1">*</asp:RequiredFieldValidator>
                            City:-<asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" 
                                CausesValidation="True" ForeColor="#666666" Height="27px" Width="70px">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvcity" runat="server" 
                                ControlToValidate="ddlcity" ErrorMessage="select the city" 
                                InitialValue="select" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZipCode:&nbsp;</td>
                <td>
                    &nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtzipcode" runat="server" CausesValidation="True" 
                        ForeColor="#666666" Height="27px" Width="200px" MaxLength="6" 
                   ></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" 
                        FilterType="Numbers" TargetControlID="txtzipcode">
                    </asp:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="rfvzipcode" runat="server" 
                        ControlToValidate="txtzipcode" ErrorMessage="enter the zip code" 
                        ValidationGroup="v1">Enter Zip code</asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" 
                        Enabled="true" TargetControlID="rfvzipcode">
                    </asp:ValidatorCalloutExtender>
                                   </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;Company Category:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddljobcategory" runat="server" CausesValidation="True" 
                        ForeColor="#666666" Height="27px" Width="315px">
                    </asp:DropDownList>
                            

                </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;Company Type :</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlcomcategory" runat="server" Height="27px" 
                       Width="315px" CausesValidation="True" ForeColor="#666666">
                        <asp:ListItem>--select Company type--</asp:ListItem>
                        <asp:ListItem>Government</asp:ListItem>
                                     <asp:ListItem>Private</asp:ListItem>
                                     <asp:ListItem>Project based</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvindtype0" runat="server" 
                        ControlToValidate="ddlcomcategory" ErrorMessage="select company category" 
                        InitialValue="--select Company type--" ValidationGroup="v1">choose company category</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Detail:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtdescription" runat="server" ForeColor="#666666" 
                        Height="90px" Rows="4" TextMode="MultiLine" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Logo:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#666666" 
                        Height="27px" Width="300px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    

    <asp:Panel ID="pnlcontact" runat="server" GroupingText="Contact Information" BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">
        <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp; Contact Person:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtcontperson" runat="server" CausesValidation="True" 
                        ForeColor="#666666" Height="27px" Width="200px" 
                     ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvname" runat="server" 
                        ControlToValidate="txtcontperson" ErrorMessage="enter contect person name" 
                        ValidationGroup="v1">enter name of CEO</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender8" runat="server" TargetControlID="rfvname" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender8" runat="server" TargetControlID="txtcontperson" 
                    WatermarkText="Eg:- Enter the name of the CEO" WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>
                </td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email-id:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtemailid" runat="server" Height="27px" 
                     Width="200px" CausesValidation="True" ForeColor="#666666"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
                        ControlToValidate="txtemailid" ErrorMessage="enter email id" 
                        ValidationGroup="v1">Enter email-id</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemailid" ErrorMessage="enter proper email-id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="v1">enter proper emailid</asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender9" runat="server" TargetControlID="rfvemail" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" TargetControlID="txtemailid" 
                    WatermarkText="Eg:-bhumi_patel89@yahoo.com " WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>
                </td>
                
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Website:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtwebsite" runat="server" Height="27px" 
                     Width="200px" CausesValidation="True" ForeColor="#666666"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvwebsite" runat="server" 
                        ControlToValidate="txtwebsite" ErrorMessage="enter company website" 
                        ValidationGroup="v1">Enter website</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtwebsite" ErrorMessage="enter proper website name" 
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" 
                        ValidationGroup="v1">enter proper website name</asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender10" runat="server" TargetControlID="rfvwebsite" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" runat="server" TargetControlID="txtwebsite" 
                    WatermarkText="Eg:- www.visioninfotech.com" WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>
                </td>
                
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile_no:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtmono" runat="server" Height="27px" 
                      Width="200px" CausesValidation="True" ForeColor="#666666" MaxLength="10"></asp:TextBox>
                       <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                             TargetControlID="txtmono" FilterType="Numbers"></asp:FilteredTextBoxExtender>
                            
                    <asp:RequiredFieldValidator ID="rfvmono" runat="server" 
                        ControlToValidate="txtmono" ErrorMessage="enter contect no" 
                        ValidationGroup="v1">Enter mobile no</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender11" runat="server" TargetControlID="rfvmono" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender11" runat="server" TargetControlID="txtmono" 
                    WatermarkText="Eg:-9033524774" WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>
                </td>
            </tr>
           
        </table>
    </asp:Panel>
    <asp:Panel ID="pnllogin" runat="server" GroupingText="Login Information" BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">
        <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User name:</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtuname" runat="server" AutoPostBack="True" 
                                CausesValidation="True" ForeColor="#666666" Height="27px" 
                                ontextchanged="txtuname_TextChanged" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvuname" runat="server" 
                                ControlToValidate="txtuname" ErrorMessage="enter username" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                            &nbsp;<asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000" 
                                Text="Username already Exist" Visible="False"></asp:Label>
                                
                     <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender4" runat="server" TargetControlID="rfvuname" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" TargetControlID="txtuname" 
                    WatermarkText="Eg:- Pintu_27" WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>
                        </ContentTemplate>

                    </asp:UpdatePanel>

                </td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtpwd" runat="server" Height="27px" 
                    Width="200px" TextMode="Password" CausesValidation="True" ForeColor="#666666"></asp:TextBox>
                                    <br />
                    &nbsp;&nbsp;&nbsp;
                  <asp:Label ID="lblpwd" runat="server"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvpwd" runat="server" 
                        ControlToValidate="txtpwd" ErrorMessage="enter Password" ValidationGroup="v1">Enter Password</asp:RequiredFieldValidator>
                <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtpwd"
                    DisplayPosition="RightSide" 
            StrengthIndicatorType="Text"
            PreferredPasswordLength="8"
            HelpStatusLabelID="lblpwd"
             TextCssClass="TextIndicator_TextBox1"
            MinimumNumericCharacters="0"
            MinimumSymbolCharacters="0"
            RequiresUpperAndLowerCaseCharacters="false"
            PrefixText="Strength:" />
             <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender5" runat="server" TargetControlID="rfvpwd" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                      
       
                </td>
                
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcpwd" runat="server" Height="27px" 
                       Width="200px" TextMode="Password" CausesValidation="True" 
                        ForeColor="#666666"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcpwd" runat="server" 
                        ControlToValidate="txtcpwd" ErrorMessage="confirm password" 
                        ValidationGroup="v1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;
                    <asp:CompareValidator ID="cvpwd" runat="server" ControlToCompare="txtpwd" 
                        ControlToValidate="txtcpwd" ErrorMessage="password does not match">password does not match</asp:CompareValidator>
               
             <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender6" runat="server" TargetControlID="cvpwd" Enabled="true">
                        </asp:ValidatorCalloutExtender>

                </td>
                
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Security Questions:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlque" runat="server" Height="27px" 
                     Width="200px" CausesValidation="True" ForeColor="#666666">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ans:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtans" runat="server" Height="27px" 
                     Width="200px" CausesValidation="True" ForeColor="#666666"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvans" runat="server" 
                        ControlToValidate="txtans" ErrorMessage="give answer" ValidationGroup="v1">equrity question&#39;s answer</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender7" runat="server" TargetControlID="rfvans" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    
                </td>
            </tr>
            <%-- <tr>
                <td class="style1" style="text-align: right">
                    Solve Equations:</td>
                <td>
                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lbl1" runat="server"></asp:Label>
                    &nbsp; +&nbsp;
                    <asp:Label ID="lbl2" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtans1" runat="server" Height="27px" Width="180px"></asp:TextBox>
                </td>
            </tr>
--%>            
            <caption>
                <br />
            </caption>
            </tr>
            <tr>
                
                <td colspan="2">

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="btnaccount" runat="server" Height="30px" 
                  Text="Add Company" Width="170px" Font-Bold="True" Font-Italic="True" 
                  Font-Names="Modern No. 25" Font-Size="Large" ValidationGroup="v1" 
                        onclick="btnaccount_Click" BackColor="#333333" ForeColor="White"  />

                    <asp:RoundedCornersExtender ID="btnaccount_RoundedCornersExtender" 
                        runat="server" Enabled="True" TargetControlID="btnaccount">
                    </asp:RoundedCornersExtender>
                    <asp:DropShadowExtender ID="btnaccount_DropShadowExtender" runat="server" 
                        Enabled="True" TargetControlID="btnaccount">
                    </asp:DropShadowExtender>

                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Height="30px" 
                  Text="Reset" Width="100px" Font-Bold="True" Font-Italic="True" 
                  Font-Names="Modern No. 25" Font-Size="Large" onclick="btnreset_Click" 
                        BackColor="#333333" ForeColor="White"  />
                    <asp:RoundedCornersExtender ID="btnreset_RoundedCornersExtender" runat="server" 
                        Enabled="True" TargetControlID="btnreset">
                    </asp:RoundedCornersExtender>
                    <asp:DropShadowExtender ID="btnreset_DropShadowExtender" runat="server" 
                        Enabled="True" TargetControlID="btnreset">
                    </asp:DropShadowExtender>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
  
</asp:Content>

