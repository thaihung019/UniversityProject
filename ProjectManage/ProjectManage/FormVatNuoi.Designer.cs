namespace ProjectManage
{
    partial class Form_VatNuoi
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_VatNuoi));
            this.dataGridViewVatNuoi = new System.Windows.Forms.DataGridView();
            this.groupBoxThongTinVatNuoi = new System.Windows.Forms.GroupBox();
            this.comboBoxIDkhuvuc = new System.Windows.Forms.ComboBox();
            this.buttonXoa = new System.Windows.Forms.Button();
            this.buttonSua = new System.Windows.Forms.Button();
            this.buttonThem = new System.Windows.Forms.Button();
            this.dateTimePickerNgayxuat = new System.Windows.Forms.DateTimePicker();
            this.dateTimePickerNgayNhap = new System.Windows.Forms.DateTimePicker();
            this.textBoxName = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.Name = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVatNuoi)).BeginInit();
            this.groupBoxThongTinVatNuoi.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridViewVatNuoi
            // 
            this.dataGridViewVatNuoi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewVatNuoi.Location = new System.Drawing.Point(12, 235);
            this.dataGridViewVatNuoi.MultiSelect = false;
            this.dataGridViewVatNuoi.Name = "dataGridViewVatNuoi";
            this.dataGridViewVatNuoi.ReadOnly = true;
            this.dataGridViewVatNuoi.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridViewVatNuoi.Size = new System.Drawing.Size(585, 288);
            this.dataGridViewVatNuoi.TabIndex = 0;
            this.dataGridViewVatNuoi.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewVatNuoi_CellClick);
            this.dataGridViewVatNuoi.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewVatNuoi_CellContentClick);
            // 
            // groupBoxThongTinVatNuoi
            // 
            this.groupBoxThongTinVatNuoi.Controls.Add(this.comboBoxIDkhuvuc);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.buttonXoa);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.buttonSua);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.buttonThem);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.dateTimePickerNgayxuat);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.dateTimePickerNgayNhap);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.textBoxName);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.label4);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.label1);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.label3);
            this.groupBoxThongTinVatNuoi.Controls.Add(this.Name);
            this.groupBoxThongTinVatNuoi.Location = new System.Drawing.Point(13, 530);
            this.groupBoxThongTinVatNuoi.Name = "groupBoxThongTinVatNuoi";
            this.groupBoxThongTinVatNuoi.Size = new System.Drawing.Size(584, 173);
            this.groupBoxThongTinVatNuoi.TabIndex = 1;
            this.groupBoxThongTinVatNuoi.TabStop = false;
            this.groupBoxThongTinVatNuoi.Text = "Thông Tin Vật Nuôi";
            this.groupBoxThongTinVatNuoi.Enter += new System.EventHandler(this.groupBoxThongTinVatNuoi_Enter);
            // 
            // comboBoxIDkhuvuc
            // 
            this.comboBoxIDkhuvuc.FormattingEnabled = true;
            this.comboBoxIDkhuvuc.Location = new System.Drawing.Point(72, 74);
            this.comboBoxIDkhuvuc.Name = "comboBoxIDkhuvuc";
            this.comboBoxIDkhuvuc.Size = new System.Drawing.Size(215, 21);
            this.comboBoxIDkhuvuc.TabIndex = 4;
            // 
            // buttonXoa
            // 
            this.buttonXoa.Location = new System.Drawing.Point(328, 80);
            this.buttonXoa.Name = "buttonXoa";
            this.buttonXoa.Size = new System.Drawing.Size(75, 23);
            this.buttonXoa.TabIndex = 3;
            this.buttonXoa.Text = "Xóa";
            this.buttonXoa.UseVisualStyleBackColor = true;
            this.buttonXoa.Click += new System.EventHandler(this.buttonXoa_Click);
            // 
            // buttonSua
            // 
            this.buttonSua.Location = new System.Drawing.Point(328, 51);
            this.buttonSua.Name = "buttonSua";
            this.buttonSua.Size = new System.Drawing.Size(75, 23);
            this.buttonSua.TabIndex = 3;
            this.buttonSua.Text = "Sửa";
            this.buttonSua.UseVisualStyleBackColor = true;
            this.buttonSua.Click += new System.EventHandler(this.buttonSua_Click);
            // 
            // buttonThem
            // 
            this.buttonThem.Location = new System.Drawing.Point(328, 22);
            this.buttonThem.Name = "buttonThem";
            this.buttonThem.Size = new System.Drawing.Size(75, 23);
            this.buttonThem.TabIndex = 3;
            this.buttonThem.Text = "Thêm";
            this.buttonThem.UseVisualStyleBackColor = true;
            this.buttonThem.Click += new System.EventHandler(this.buttonThem_Click);
            // 
            // dateTimePickerNgayxuat
            // 
            this.dateTimePickerNgayxuat.Location = new System.Drawing.Point(72, 127);
            this.dateTimePickerNgayxuat.Name = "dateTimePickerNgayxuat";
            this.dateTimePickerNgayxuat.Size = new System.Drawing.Size(200, 20);
            this.dateTimePickerNgayxuat.TabIndex = 2;
            // 
            // dateTimePickerNgayNhap
            // 
            this.dateTimePickerNgayNhap.Location = new System.Drawing.Point(72, 101);
            this.dateTimePickerNgayNhap.Name = "dateTimePickerNgayNhap";
            this.dateTimePickerNgayNhap.Size = new System.Drawing.Size(200, 20);
            this.dateTimePickerNgayNhap.TabIndex = 2;
            // 
            // textBoxName
            // 
            this.textBoxName.Location = new System.Drawing.Point(72, 49);
            this.textBoxName.Name = "textBoxName";
            this.textBoxName.Size = new System.Drawing.Size(215, 20);
            this.textBoxName.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 74);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Idkhuvuc";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 127);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "NgayXuat";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 101);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "NgayNhap";
            // 
            // Name
            // 
            this.Name.AutoSize = true;
            this.Name.Location = new System.Drawing.Point(6, 49);
            this.Name.Name = "Name";
            this.Name.Size = new System.Drawing.Size(35, 13);
            this.Name.TabIndex = 0;
            this.Name.Text = "Name";
            // 
            // Form_VatNuoi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1264, 729);
            this.Controls.Add(this.groupBoxThongTinVatNuoi);
            this.Controls.Add(this.dataGridViewVatNuoi);
            
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Vat Nuoi";
            this.Load += new System.EventHandler(this.FormVatNuoi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVatNuoi)).EndInit();
            this.groupBoxThongTinVatNuoi.ResumeLayout(false);
            this.groupBoxThongTinVatNuoi.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewVatNuoi;
        private System.Windows.Forms.GroupBox groupBoxThongTinVatNuoi;
        private System.Windows.Forms.Button buttonXoa;
        private System.Windows.Forms.Button buttonSua;
        private System.Windows.Forms.Button buttonThem;
        private System.Windows.Forms.DateTimePicker dateTimePickerNgayxuat;
        private System.Windows.Forms.DateTimePicker dateTimePickerNgayNhap;
        private System.Windows.Forms.TextBox textBoxName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label Name;
        private System.Windows.Forms.ComboBox comboBoxIDkhuvuc;



    }
}