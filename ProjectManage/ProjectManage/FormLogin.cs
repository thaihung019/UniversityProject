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
    public partial class FormLogin : Form
    {
        public FormLogin()
        {
            InitializeComponent();
        }
        string id = "admin";
        string password = "admin";
        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (DangNhap(txtDangNhap.Text, txtMatKhau.Text))
            {

                FormMain f1 = new FormMain();
                f1.Show();
                this.Hide();
            }
            else
            {
                //sai tk or mk
                MessageBox.Show("Sai Tài Khoảng Hoặc Mật Khẩu", "Thông Báo", MessageBoxButtons.OK);
            }
        }
        void XoaDL()
        {
            //foreach (TextBox item in this.Controls) //nếu chỉ có 1 loại
            foreach (var item1 in this.Controls)//this.Controls lấy tất cả các Controls nằm trong form hiện tại
            {
                TextBox item = item1 as TextBox;//không cần biết control gì nếu nó có thể ép kiểu sanh Textbox đc thì nó là textbox
                if (item != null)
                {
                    item.Clear();
                }
            }
        }
        bool DangNhap(string id, string password)
        {
            if (id == this.id && password == this.password)
            {
                return true;
            }
            return false;
        }
        private void btnThoats_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void frm_DangNhap_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult dr;
            dr = MessageBox.Show("Bạn chắc chắn muốn thoát", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if (dr == DialogResult.No)
            {
                e.Cancel = true;
            }

        }
    }
}
