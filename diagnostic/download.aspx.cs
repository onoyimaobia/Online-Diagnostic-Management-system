using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace diagnostic
{
    public partial class download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridview();
                //bingd roles in gridview
                DisplayRolesInGrid();
                // bing user and role
                BindUserToUserList();
                BindRoleToList();
                // check the selected user's role
               CheckRolesForSelectedUser();
                // display those users belonging to the currently selected role
                DisplayUsersBelongToRole();
                //bind records
                bindData();
            }

        }
        private void BindGridview()
        {
            string nwa = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(nwa))
            {
                SqlCommand com = new SqlCommand("select referralId,fileName from referral ", conn);
                conn.Open();
                grddownload.DataSource = com.ExecuteReader();
                grddownload.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkdownload_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            string nwa = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(nwa))
            {
                using (SqlCommand com = new SqlCommand())
                {
                    com.CommandText = "select fileName,data,contentType from referral where referralId = @referralId";
                    com.Parameters.AddWithValue("@referralId", id);
                    com.Connection = conn;
                    conn.Open();
                    using (SqlDataReader srd = com.ExecuteReader())
                    {
                        srd.Read();
                        bytes = (byte[])srd["data"];
                        contentType = srd["contentType"].ToString();
                        fileName = srd["fileName"].ToString();
                    }

                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment;filename =" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

        protected void btnCreateRole_Click(object sender, EventArgs e)
        {

            string newRoleName = txtRoleName.Text.Trim();
            if (!Roles.RoleExists(newRoleName))
            {
                //create role
                Roles.CreateRole(newRoleName);
                //refresh rolelist for update
                DisplayRolesInGrid();

                //clear the textbox
                txtRoleName.Text = string.Empty;

            }
            else
            {
                lblrole.Text = "the role name already exist";
            }
        }
       private void DisplayRolesInGrid()
        {
            RoleList.DataSource = Roles.GetAllRoles();
           RoleList.DataBind();
        }

      protected void RoleList_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            //Get the RoleNameLabel
            Label RoleNameLabel = RoleList.Rows[e.RowIndex].FindControl("RoleNameLabel") as Label;
            //Delete the Role
            Roles.DeleteRole(RoleNameLabel.Text, false);
            //bind the data to the Rolelist grid

            DisplayRolesInGrid();
        }
        private void BindUserToUserList()
        {
            //Get all of the user accounts
            MembershipUserCollection user = Membership.GetAllUsers();
            UserList.DataSource = user;
            UserList.DataBind();
        }
        private void BindRoleToList()
        {
            //Get sll of the roles
            string[] roles = Roles.GetAllRoles();
            UsersRoleList.DataSource = roles;
            UsersRoleList.DataBind();

            RoleList1.DataSource = roles;
            RoleList1.DataBind();
        }
        private void CheckRolesForSelectedUser()
        {
            //Determine what roles the selected user belongs to
            string selectedUserName = UserList.SelectedValue;
            string[] selectedUsersRole = Roles.GetRolesForUser(selectedUserName);
            //loop through the repeater's items and check or uncheck the checkboxas needed
            foreach (RepeaterItem ri in UsersRoleList.Items)
            {
                //programmatically reference the chechbox
                CheckBox RoleCheckBox = ri.FindControl("RoleCheckBox") as CheckBox;
                // see if RoleCheckBox.Text is in selectedUserRole
                if (selectedUsersRole.Contains<string>(RoleCheckBox.Text))
                {
                    RoleCheckBox.Checked = true;
                }
                else
                {
                    RoleCheckBox.Checked = false;
                }
            }
        }

        protected void UserList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckRolesForSelectedUser();
        }

        protected void RoleCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            //reference thecheckbox that raised this event
            CheckBox RolecheckBox = sender as CheckBox;
            // get the currently selected user and role.
            string selectedUserName = UserList.SelectedValue;

            string roleName = RolecheckBox.Text;
            // determine if we need to add or remove the from this role
            if (RolecheckBox.Checked)
            {
                //add user to the role
                Roles.AddUserToRole(selectedUserName, roleName);
                // display a staus message
                lblactionstatus.Text = string.Format("User {0} was added to role{1}.", selectedUserName, roleName);

            }
            else
            {
                //remove the user from role 
                Roles.RemoveUserFromRole(selectedUserName, roleName);
                //display a status message
                lblactionstatus.Text = string.Format("User {0} was added to role{1}.", selectedUserName, roleName);
            }
            // refresh the "by role" interface by calling this method
            DisplayUsersBelongToRole();
        }
        private void DisplayUsersBelongToRole()
        {
            //get theselected role
            string selectedRoleName = RoleList1.SelectedValue;
            //get the list of username that belong to the role
            string[] usersBelongingToRoles = Roles.GetUsersInRole(selectedRoleName);
            // bind the list of users to the gridview
            RoleUserList.DataSource = usersBelongingToRoles;
            RoleUserList.DataBind();
        }

        protected void RoleList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DisplayUsersBelongToRole();
        }

        protected void RoleUserList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //getthe selected role
            string selectedRoleName = RoleList1.SelectedValue;
            //reference the UserNameLabel 
            Label UserNameLabel = RoleUserList.Rows[e.RowIndex].FindControl("UserNameLabel") as Label;
            //remove user from the role
            Roles.RemoveUserFromRole(UserNameLabel.Text, selectedRoleName);
            //refresh the gridview
            DisplayUsersBelongToRole();

            //display a status message
            lblactionstatus.Text = string.Format("User {0} was added to role{1}.", UserNameLabel.Text, selectedRoleName);

            //refresh the "by user" by calling this method
            CheckRolesForSelectedUser();
        }

        protected void AddUserToRole_Click(object sender, EventArgs e)
        {
            // get the selectedrole and username
            string selectedRoleName = RoleList1.SelectedValue;
            string userNameToAddToRole = UserNameToAddToRole.Text;
            // make sure that a value was entered
            if (userNameToAddToRole.Trim().Length == 0)
            {
                lblactionstatus.Text = "you must enter a username in the textbox.";
                return;

            }
            //make sure that user exist in the system
            MembershipUser userInfo = Membership.GetUser(userNameToAddToRole);
            if (userInfo == null)
            {
                lblactionstatus.Text = string.Format("The user{0} does not  exist in the system.", userNameToAddToRole);
                return;
            }
            // make sure that the user doesnot already belong to this role
            if (Roles.IsUserInRole(userNameToAddToRole, selectedRoleName))
            {
                lblactionstatus.Text = string.Format("The user{0} already is a memeber of role{1}.", userNameToAddToRole, selectedRoleName);
                return;
            }
            // if we reach here , we need to add the user to the role
            Roles.AddUserToRole(userNameToAddToRole, selectedRoleName);
            // clear out the textbox
            UserNameToAddToRole.Text = string.Empty;
            // refresh the gridview
            DisplayUsersBelongToRole();
            // display a status message
            lblactionstatus.Text = string.Format("The user{0} was added to role{1}.", userNameToAddToRole, selectedRoleName);

            //refresh the "by user" interface by calling this method
            CheckRolesForSelectedUser();
        }
        private void bindData()
        {

            string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(too))
            {


                SqlCommand com = new SqlCommand("select referralId,name, age,email,time,contact,addrress,service,date,doctor,doneTest,specimen,result,fileName,contentType,hospital from referral", con);
                con.Open();
                GridView1.DataSource = com.ExecuteReader();
                GridView1.DataBind();

            }
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            //var name = row.Cells[10].Controls[0].FindControl("txtdone") as TextBox;

            TextBox txtdone = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdone");
            TextBox txtspecimen = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtspecimen");
            TextBox txtresult = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtresult");

            string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(too))
            {


                SqlCommand com = new SqlCommand();
                com.CommandText = "update appoint set ptDoneTest ='" + txtdone.Text + "',ptDoneTest ='" + txtspecimen.Text + "',ptDoneTest ='" + txtresult.Text + "' where Id =" + id;
                com.Connection = con;
                //com.Parameters.AddWithValue("@ptDoneTest", txtdone);
                con.Open();
                com.ExecuteNonQuery();
            }
            GridView1.EditIndex = -1;
            this.bindData();
            // }
            // }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            this.BindGrid();

        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM referral WHERE name LIKE '%' + @name + '%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@name", txtsearch.Text.Trim());
                    DataSet dt = new DataSet();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }

        }
        protected void searchphone_Click(object sender, EventArgs e)
        {
            this.BindGridcontact();
        }
        private void BindGridcontact()
        {
            string constr = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM referral WHERE contact LIKE '%' + @contact + '%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@contact", txtsearchphone.Text.Trim());
                    DataSet dt = new DataSet();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }

        }
        protected void searchemail_Click(object sender, EventArgs e)
        {
            this.BindGridemail();
        }
        private void BindGridemail()
        {
            string constr = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM appoint WHERE email LIKE '%' + @email + '%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@email", txtserachemail.Text.Trim());
                    DataSet dt = new DataSet();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }

        }
    }
    }

   

