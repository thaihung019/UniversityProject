namespace ProjectManage
{
    partial class FormMain
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMain));
            this.labelTitle = new System.Windows.Forms.Label();
            this.buttonCayTrong = new System.Windows.Forms.Button();
            this.buttonVatNuoi = new System.Windows.Forms.Button();
            this.buttonProfit = new System.Windows.Forms.Button();
            this.buttonNgTT = new System.Windows.Forms.Button();
            this.buttonNCC = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // labelTitle
            // 
            this.labelTitle.AutoSize = true;
            this.labelTitle.BackColor = System.Drawing.Color.Transparent;
            this.labelTitle.Font = new System.Drawing.Font("Times New Roman", 30F, System.Drawing.FontStyle.Bold);
            this.labelTitle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(210)))), ((int)(((byte)(63)))));
            this.labelTitle.Location = new System.Drawing.Point(333, 52);
            this.labelTitle.Name = "labelTitle";
            this.labelTitle.Size = new System.Drawing.Size(664, 45);
            this.labelTitle.TabIndex = 0;
            this.labelTitle.Text = "QUẢN LÝ CÂY TRỒNG VẬT NUÔI";
            this.labelTitle.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.labelTitle.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // buttonCayTrong
            // 
            this.buttonCayTrong.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(206)))), ((int)(((byte)(172)))));
            this.buttonCayTrong.Font = new System.Drawing.Font("Times New Roman", 20F, System.Drawing.FontStyle.Bold);
            this.buttonCayTrong.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(210)))), ((int)(((byte)(63)))));
            this.buttonCayTrong.Location = new System.Drawing.Point(181, 207);
            this.buttonCayTrong.Name = "buttonCayTrong";
            this.buttonCayTrong.Size = new System.Drawing.Size(315, 118);
            this.buttonCayTrong.TabIndex = 1;
            this.buttonCayTrong.Text = "Cây Trồng";
            this.buttonCayTrong.UseVisualStyleBackColor = false;
            this.buttonCayTrong.Click += new System.EventHandler(this.buttonCayTrong_Click);
            // 
            // buttonVatNuoi
            // 
            this.buttonVatNuoi.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(206)))), ((int)(((byte)(172)))));
            this.buttonVatNuoi.FlatAppearance.BorderColor = System.Drawing.Color.Red;
            this.buttonVatNuoi.FlatAppearance.BorderSize = 3;
            this.buttonVatNuoi.Font = new System.Drawing.Font("Times New Roman", 20F, System.Drawing.FontStyle.Bold);
            this.buttonVatNuoi.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(210)))), ((int)(((byte)(63)))));
            this.buttonVatNuoi.Location = new System.Drawing.Point(780, 207);
            this.buttonVatNuoi.Name = "buttonVatNuoi";
            this.buttonVatNuoi.Size = new System.Drawing.Size(315, 118);
            this.buttonVatNuoi.TabIndex = 1;
            this.buttonVatNuoi.Text = "Vật Nuôi";
            this.buttonVatNuoi.UseVisualStyleBackColor = false;
            this.buttonVatNuoi.Click += new System.EventHandler(this.buttonVatNuoi_Click);
            // 
            // buttonProfit
            // 
            this.buttonProfit.Location = new System.Drawing.Point(280, 431);
            this.buttonProfit.Name = "buttonProfit";
            this.buttonProfit.Size = new System.Drawing.Size(165, 65);
            this.buttonProfit.TabIndex = 2;
            this.buttonProfit.Text = "Lợi Nhuận";
            this.buttonProfit.UseVisualStyleBackColor = true;
            this.buttonProfit.Click += new System.EventHandler(this.button1_Click);
            // 
            // buttonNgTT
            // 
            this.buttonNgTT.Location = new System.Drawing.Point(561, 431);
            this.buttonNgTT.Name = "buttonNgTT";
            this.buttonNgTT.Size = new System.Drawing.Size(165, 65);
            this.buttonNgTT.TabIndex = 2;
            this.buttonNgTT.Text = "Nguồn Tiêu Thụ";
            this.buttonNgTT.UseVisualStyleBackColor = true;
            this.buttonNgTT.Click += new System.EventHandler(this.button1_Click);
            // 
            // buttonNCC
            // 
            this.buttonNCC.Location = new System.Drawing.Point(832, 431);
            this.buttonNCC.Name = "buttonNCC";
            this.buttonNCC.Size = new System.Drawing.Size(165, 65);
            this.buttonNCC.TabIndex = 2;
            this.buttonNCC.Text = "Nhà Cung Cấp";
            this.buttonNCC.UseVisualStyleBackColor = true;
            this.buttonNCC.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.label1.Location = new System.Drawing.Point(1100, 707);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(166, 19);
            this.label1.TabIndex = 3;
            this.label1.Text = "Coppyrigh @ Invincible";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label1.Click += new System.EventHandler(this.label1_Click_2);
            // 
            // FormMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1264, 729);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.buttonNCC);
            this.Controls.Add(this.buttonNgTT);
            this.Controls.Add(this.buttonProfit);
            this.Controls.Add(this.buttonVatNuoi);
            this.Controls.Add(this.buttonCayTrong);
            this.Controls.Add(this.labelTitle);
            this.HelpButton = true;
            this.Name = "FormMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormMain";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelTitle;
        private System.Windows.Forms.Button buttonCayTrong;
        private System.Windows.Forms.Button buttonVatNuoi;
        private System.Windows.Forms.Button buttonProfit;
        private System.Windows.Forms.Button buttonNgTT;
        private System.Windows.Forms.Button buttonNCC;
        private System.Windows.Forms.Label label1;

    }
}

