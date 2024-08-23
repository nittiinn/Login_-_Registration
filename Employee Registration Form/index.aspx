<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #2F3645;
            display: grid;
            height: 100%;
            width: 100%;
            place-items: center;
            padding: 80px;
            background-color: #F7F9F2;
        }

        .header {
            background: #EEF7FF;
            border-radius: 15px;
            border: 1px solid black;
            width: 100%;
            box-shadow: 4px 4px 4px white;
        }

            .header .title1 {
                font-weight: 600;
                font-size: 35px;
                text-align: center;
                line-height: 100px;
                color: #fff;
                user-select: none;
                border-radius: 15px 15px 0 0;
                background-image: linear-gradient(-135deg, #36BA98, #667BC6);
            }


        .wrapper {
            background: #EEF7FF;
            border-radius: 15px;
            border: 1px solid black;
            width: 100%;
            box-shadow: 4px 4px 4px white;
        }

            .wrapper .title {
                font-weight: 600;
                font-size: 35px;
                text-align: center;
                line-height: 100px;
                color: #fff;
                user-select: none;
                border-radius: 15px 15px 0 0;
                background-image: linear-gradient(-135deg, #36BA98, #667BC6);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- criteria page --%>

        <div class="header">
            <div class="title1">
                <h2>Eligibility Criteria</h2>
            </div>
            <div class="container row p-4 ">
                <div class="col-6 ">
                    <asp:Label Text="Employee should worked in two Companies." runat="server"></asp:Label><br />
                    <asp:RadioButton ID="CheckBox1" Text="Yes" runat="server" GroupName="co" />
                    <asp:RadioButton ID="CheckBox2" Text="No" runat="server" GroupName="co" />
                    <%--<asp:TextBox runat="server" ID="TextBox11" CssClass="form-control" /><br />--%>
                </div>

                <div class="col-6 ">
                    <asp:Label Text="Total Experience should be at least 4 year." runat="server"></asp:Label>
                    <asp:TextBox runat="server" ID="TextBox21" CssClass="form-control" />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox21"
                        ErrorMessage="Not Eligible" ForeColor="Red" MaximumValue="10" MinimumValue="4"
                        SetFocusOnError="True" Type=" Integer"></asp:RangeValidator>
                       <asp:RequiredFieldValidator ErrorMessage="Please Fill this" ForeColor="Red" ControlToValidate="TextBox21" runat="server"></asp:RequiredFieldValidator>
                    <br />

                </div>
            </div>
            <div class="text-center">
                <asp:Button Text="next" runat="server" ID="btn_next" OnClick="btn_next_Click" CssClass="btn text-center w-25 " Style="background-image: linear-gradient(-135deg, #36BA98, #667BC6); border-radius: 25px; margin-bottom: 20px;" />
            </div>
        </div>



        <%-- field part --%>
        <div>
            <div class="wrapper" id="lower" runat="server">

                <div class="title">
                    <h2>Field Page </h2>
                </div>
                <div class="row  p-4 m-2">
                    <div class="col-6 ">
                        <asp:Label Text="Pervious Office Name" runat="server"></asp:Label>
                        <asp:TextBox runat="server" ID="txt1" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="Please Fill this" ForeColor="Red" ControlToValidate="txt1" runat="server"></asp:RequiredFieldValidator>
                        <br />


                        <asp:Label Text="Previous Office Experience-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txt2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="Please Fill this" ForeColor="Red" ControlToValidate="txt2" runat="server"></asp:RequiredFieldValidator><br />


                        <asp:Label Text="Second Last Office Name-" runat="server" />
                        <asp:TextBox runat="server" ID="TextBox2" CssClass=" form-control"></asp:TextBox><br />


                        <asp:Label Text="Second Last Office Experience-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txt3" placeholder="" runat="server"></asp:TextBox><br />

                        <asp:Label Text="Employee Unique Id-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="This Field is Required" ForeColor="Red" ControlToValidate="TextBox3" runat="server"></asp:RequiredFieldValidator>

                        <br />

                        <asp:Label Text="Employee First Name-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="First Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="This Field is Required" ForeColor="Red" ControlToValidate="TextBox4" runat="server"></asp:RequiredFieldValidator><br />

                        <asp:Label Text="Employee Middle Name" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="Middle Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="This Field is Required" ForeColor="Red" ControlToValidate="TextBox5" runat="server"></asp:RequiredFieldValidator><br />

                        <asp:Label Text="Employee Last Name" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="Last Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="This Field is Required" ForeColor="Red" ControlToValidate="TextBox6" runat="server"></asp:RequiredFieldValidator><br />


                        <asp:Label Text="PRAN No." runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox16" placeholder="Pran no:" runat="server" MaxLength="12"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="TextBox16" ErrorMessage="Please enter Valid No"
                            ValidationExpression="^[0-9]{12}$" ForeColor="Red">
                        </asp:RegularExpressionValidator><br />
                        <br />

                        <asp:Label Text="Mobile No" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox17" placeholder="" runat="server" MaxLength="10"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revmov" runat="server"
                            ControlToValidate="TextBox17" ErrorMessage="Please enter Valid Mob No"
                            ValidationExpression="^[6-9]{1}[0-9]{9}$" ForeColor="Red">
                        </asp:RegularExpressionValidator><br />


                    </div>

                    <div class=" col-6">

                        <asp:Label Text="Father Name-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="Father Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="This Field is Required" ForeColor="Red" ControlToValidate="TextBox8" runat="server"></asp:RequiredFieldValidator><br />

                        <asp:Label Text="Date of Birth-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" TextMode="Date" ID="TextBox9" placeholder="" runat="server">
                        </asp:TextBox><asp:RequiredFieldValidator ErrorMessage="This Field is Required" ForeColor="Red" ControlToValidate="TextBox9" runat="server"></asp:RequiredFieldValidator><br />

                        <asp:Label Text="Gender-" runat="server"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Male"></asp:ListItem>
                            <asp:ListItem Text="Female"></asp:ListItem>
                        </asp:DropDownList>
                        <br />


                        <asp:Label Text="text" ID="category" runat="server">Category<span class="text-danger ">*</span></asp:Label>
                        <asp:RequiredFieldValidator ErrorMessage="Category is Required" ControlToValidate="ddl1" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select your category-"></asp:ListItem>
                            <asp:ListItem Text="General"></asp:ListItem>
                            <asp:ListItem Text="OBC"> </asp:ListItem>
                            <asp:ListItem Text="SC">  </asp:ListItem>
                            <asp:ListItem Text="ST">  </asp:ListItem>

                        </asp:DropDownList><br />

                        <asp:Label Text="Is Handicapped-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox7" placeholder="" runat="server"></asp:TextBox><br />

                        <asp:Label Text="PAN No." runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox13" placeholder="" runat="server" MaxLength="10"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revpan" runat="server"
                            ControlToValidate="TextBox13" ErrorMessage="Please enter Valid Id"
                            ValidationExpression="^([A-Z]{5}[0-9]{4}[A-Z]{1})$" ForeColor="Red">
                        </asp:RegularExpressionValidator><br />

                        <asp:Label Text="Aadhaar No." runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" MaxLength="12"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="redhar" runat="server" ControlToValidate="TextBox14"
                            ErrorMessage="Aadhar is not valid" ValidationExpression="^([0-9]{12})$" ForeColor="Red"></asp:RegularExpressionValidator><br />

                        <asp:Label Text="Samagra ID-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" MaxLength="9"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ControlToValidate="TextBox15" ErrorMessage="Samagra is not valid"
                            ValidationExpression="^([0-9]){9}$" ForeColor="Red">
                        </asp:RegularExpressionValidator>
                        <br />


                        <asp:Label Text="Email Id-" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox18" placeholder="Email ID:" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="Revor" runat="server"
                            ControlToValidate="TextBox18" ErrorMessage="Invalid Email"
                            ValidationExpression="^([a-z-0-9]+[@]{1}[a-z]{5}.[a-z]{3})$" ForeColor="Red">
                        </asp:RegularExpressionValidator>
                        <asp:Label Text="Password" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" TextMode="Password" ID="TextBox19" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="Password is Required" ForeColor="Red" ControlToValidate="TextBox19" runat="server"></asp:RequiredFieldValidator><br />

                        <asp:Label Text="Confirm Password" runat="server"></asp:Label>
                        <asp:TextBox CssClass="form-control" TextMode="Password" ID="TextBox20" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="confirm password " ForeColor="Red" ControlToValidate="TextBox20" runat="server"></asp:RequiredFieldValidator>


                    </div>
                </div>
                <div class="text-center">
                    <asp:Button Text="Submit" runat="server" ID="store" OnClick="store_Click1" CssClass="btn text-center w-25 " Style="background-image: linear-gradient(-135deg, #36BA98, #667BC6); border-radius: 25px;" /><br />

                </div>

                <div class="container mt-5">
                    <asp:Table runat="server" ID="tbl" CssClass="table table-bordered">
                        <asp:TableHeaderRow CssClass="bg-info">
                            <asp:TableHeaderCell>Previous Office Name </asp:TableHeaderCell>
                            <asp:TableHeaderCell>Previous Experience </asp:TableHeaderCell>
                            <asp:TableHeaderCell>Second Last Office Name-</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Second Last Office Experience</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Employee Unique Id -</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Employee First Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Employee Middle Name</asp:TableHeaderCell>
                        </asp:TableHeaderRow>


                        <asp:TableRow CssClass="bg-white" Height="40px">

                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="txtName" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="txtName2" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="txtName3" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="txtName4" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="txtName5" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label6" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label7" />
                            </asp:TableCell>


                        </asp:TableRow>
                    </asp:Table>
                </div>
                <div class="container mt-4">
                    <asp:Table runat="server" ID="Table1" CssClass="table table-bordered">
                        <asp:TableHeaderRow CssClass="bg-info">
                            <asp:TableHeaderCell>Employee Last Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Father Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>DOB:</asp:TableHeaderCell>
                            <asp:TableHeaderCell>PAN No:</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Aadhar No-</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Samagra ID</asp:TableHeaderCell>
                            <asp:TableHeaderCell>PRAN No: </asp:TableHeaderCell>
                            <asp:TableHeaderCell>Mobile No: </asp:TableHeaderCell>
                            <asp:TableHeaderCell>Email id</asp:TableHeaderCell>
                        </asp:TableHeaderRow>

                        <asp:TableRow CssClass="bg-white" Height="40px">

                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label1" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label2" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label3" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label4" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label5" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label8" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label9" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label10" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label Text="" runat="server" ID="Label11" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
                <asp:ValidationSummary runat="server" ShowMessageBox="true" />
            </div>
        </div>



    </form>
</body>
</html>
