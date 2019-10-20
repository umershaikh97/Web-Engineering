using System;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace PracticeWeb
{
    public partial class SignUp : System.Web.UI.Page
    {
        private OleDbConnection xConn;
        protected void Page_Load(object sender, EventArgs e)
        {
            xConn = new OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0; Data Source=" + Server.MapPath("PracticeDB.mdb"));
            xConn.Open();
            Response.Write("Testing Connection...Ok");
            xConn.Close();
            ShowData();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            xConn.Open();
            new OleDbCommand("Insert into tblLogin (Email,FullName,Pass) values ('" + txtEmailSignUp.Text + "','" + txtNameSignUp.Text + "','" + TxtPassSignUp.Text + "')", xConn).ExecuteNonQuery();
            xConn.Close();
            Response.Write("Data Saved ...");
            ShowData();
        }
        private void ShowData() {
            DataTable xTable = new DataTable();
            new OleDbDataAdapter("Select * from tblLogin",xConn).Fill(xTable);
            xGrid.DataSource = xTable;
            xGrid.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            xConn.Open();
            new OleDbCommand("Delete from tblLogin where ID="+txtID.Text+"",xConn).ExecuteNonQuery();
            xConn.Close();
            ShowData();
        }
    }
}