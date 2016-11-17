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
    public partial class FormCayTrong : Form
    {
        public FormCayTrong()
        {
            InitializeComponent();
        }

        private void FormCayTrong_Load(object sender, EventArgs e)
        {

        }

        private void buttonReturn_Click(object sender, EventArgs e)
        {
            
        }

        private void pictureReturn_Click(object sender, EventArgs e)
        {
            Form frm = Application.OpenForms["FormMain"];

            if (frm == null) frm = new FormMain();
            frm.Show();

            this.Hide();

        }
    }
}
