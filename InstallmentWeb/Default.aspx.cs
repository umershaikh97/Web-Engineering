using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InstallmentWeb
{
    public partial class _Default : System.Web.UI.Page
    {
        private int APR, Adv, Mon, Rem, Qst;
        private SqlConnection xConn;
        protected void Page_Load(object sender, EventArgs e)
        {
            xConn = new SqlConnection("Server=.; DataBase=Master; UID=sa; PWD=123;");
            if (!IsPostBack)
            { }
        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            APR = Int32.Parse(txtPrice.Text);
            Adv = Int32.Parse(txtAdv.Text);
            Mon = Int32.Parse(txtMonth.Text);
            Rem = APR - Adv;
            Qst = Rem / Mon;
            txtQist.Text = Qst.ToString();
        }

        private void ShowData()
        {
            DataTable xTable = new DataTable();
            new SqlDataAdapter("Select * from tblPlan",xConn).Fill(xTable);
            xGrid.DataSource = xTable;
            xGrid.DataBind();
        }
        protected void btnPlan_Click(object sender, EventArgs e)
        {
            //Run this code on SQL Server. 
            //create table tblPlan
            //(
            //PID int identity(1,1) primary key,
            //DueDate varchar(50),
            //RemPrice int,
            //Qist int,
            //Status varchar(20)
            //);
            //Select * from tblPlan;

            APR = Int32.Parse(txtPrice.Text);
            Adv = Int32.Parse(txtAdv.Text);
            Mon = Int32.Parse(txtMonth.Text);
            Rem = APR - Adv;
            Qst = Rem / Mon;
            DateTime A;
            xConn.Open();
            for (int i = 1; i <=Mon; i++)
            {
                A = DateTime.Now.AddMonths(i); //DueDate
                Rem = Rem - Qst;
                new SqlCommand("Insert into tblPlan values ('" + A.ToString("dd-MMM-yyyy") + "','" + Rem + "','" + Qst + "','Not-Paid')", xConn).ExecuteNonQuery();                
            }
            xConn.Close();
            Response.Write("Plan generated...");
            ShowData();
        }
    }
}