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
    public partial class Form_VatNuoi : Form
    {
        private QUANLYVATNUOICAYTRONGEntities quanlyvatnuoi = new QUANLYVATNUOICAYTRONGEntities();
        public Form_VatNuoi()
        {
            InitializeComponent();
        }

        private void FormVatNuoi_Load(object sender, EventArgs e)
        {
            HienDuLieu();
           comboBoxIDkhuvuc.DataSource = quanlyvatnuoi.KHU_VUC.Select(c => c.IDKHUVUC).ToList();
        }
        private void HienDuLieu()
        {
            dataGridViewVatNuoi.DataSource = quanlyvatnuoi.DOI_TUONG.Where(c => c.IDLOAIDOITUONG == "VN").Select(c => new {ID = c.IDDOITUONG, Tên = c.TENDOITUONG, Khu_Vực = c.IDKHUVUC, Ngày_Nuôi = c.NGAYNHAP, Ngayxuat = c.NGAYXUAT }).ToList();
        }
        /// <summary>
        /// Thêm
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private bool KiemTraSo(string s)
        {
            try
            {
                double.Parse(s);
                return true;
            }
            catch 
            {
                return false;
            }
        }
        private void buttonThem_Click(object sender, EventArgs e)
        {
            try
            {
                
                DOI_TUONG doiTuong = new DOI_TUONG();
                    doiTuong.TENDOITUONG = textBoxName.Text;
                    doiTuong.IDKHUVUC = comboBoxIDkhuvuc.SelectedItem.ToString();
                    doiTuong.IDLOAIDOITUONG = "VN";
                    doiTuong.NGAYNHAP = dateTimePickerNgayNhap.Value;
                    doiTuong.NGAYXUAT = dateTimePickerNgayxuat.Value;
                    if (dateTimePickerNgayxuat.Value < dateTimePickerNgayNhap.Value)
                    {
                        MessageBox.Show("Thêm không Thành Công.");
                    }
                    else
                    {
                        quanlyvatnuoi.DOI_TUONG.Add(doiTuong);
                        quanlyvatnuoi.SaveChanges();
                        MessageBox.Show("Thêm Thành Công.");
                        HienDuLieu();
                    }
                   

            }
            catch 
            {
                MessageBox.Show("Thêm Thất Bại");
            }
        }

        private void buttonSua_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(dataGridViewVatNuoi.CurrentRow.Cells[0].Value.ToString());
                DOI_TUONG doituong = quanlyvatnuoi.DOI_TUONG.Find(id);
               doituong.TENDOITUONG = textBoxName.Text;
               doituong.NGAYNHAP = dateTimePickerNgayNhap.Value;
               doituong.NGAYXUAT = dateTimePickerNgayxuat.Value;
               quanlyvatnuoi.SaveChanges();
                 MessageBox.Show("Sửa thành công!");
                 HienDuLieu();
            }
            catch (Exception)
            {
                  MessageBox.Show("Sửa không thành công!");
            }
        }

        private void buttonXoa_Click(object sender, EventArgs e)
        {
            try
            {
                DialogResult dr = MessageBox.Show("Bạn chắc chắn muốn xóa?", "Xóa", MessageBoxButtons.YesNo);
                if (dr==DialogResult.Yes)
	            {
		            int id = int.Parse(dataGridViewVatNuoi.CurrentRow.Cells[0].Value.ToString());
                    DOI_TUONG doituong = quanlyvatnuoi.DOI_TUONG.Find(id);
                    quanlyvatnuoi.DOI_TUONG.Remove(doituong);
                    quanlyvatnuoi.SaveChanges();
                      MessageBox.Show("Xóa thành công!");
                    HienDuLieu();
	            }
            }
            catch
            {
                MessageBox.Show("Xóa không thành công!");
            }
        }
        /// <summary>
        /// khi chọn trên sẽ lấy thông tin xuống dưới
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewVatNuoi_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = int.Parse(dataGridViewVatNuoi.CurrentRow.Cells[0].Value.ToString());
            DOI_TUONG doituong = quanlyvatnuoi.DOI_TUONG.Find(id);
            
            textBoxName.Text = doituong.TENDOITUONG.ToString();
            comboBoxIDkhuvuc.SelectedItem = doituong.IDKHUVUC.ToString();
            dateTimePickerNgayNhap.Value = doituong.NGAYNHAP.Value;
            dateTimePickerNgayxuat.Value = doituong.NGAYXUAT.Value;
            
        }

        private void dataGridViewVatNuoi_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void groupBoxThongTinVatNuoi_Enter(object sender, EventArgs e)
        {

        }
    }
}
