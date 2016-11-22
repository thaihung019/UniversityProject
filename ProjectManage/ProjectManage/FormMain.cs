using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjectManage
{
    public partial class FormMain : Form
    {
        public FormMain()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void buttonCayTrong_Click(object sender, EventArgs e)
        {
            Form frm = Application.OpenForms["FormCayTrong"];

            if (frm == null) frm = new FormCayTrong();
            frm.Show();

            this.Hide();
        }

        private void buttonVatNuoi_Click(object sender, EventArgs e)
        {
            Form_VatNuoi formVatNuoi = new Form_VatNuoi();
            this.Hide();
            formVatNuoi.Show();

        }

        private void label1_Click_2(object sender, EventArgs e)
        {

        }
    }
}
