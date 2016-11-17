namespace ProjectManage
{
    partial class FormVatNuoi
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormVatNuoi));
            this.pictureReturn = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureReturn)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureReturn
            // 
            this.pictureReturn.BackColor = System.Drawing.Color.Transparent;
            this.pictureReturn.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pictureReturn.BackgroundImage")));
            this.pictureReturn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureReturn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pictureReturn.Location = new System.Drawing.Point(-4, -5);
            this.pictureReturn.Name = "pictureReturn";
            this.pictureReturn.Size = new System.Drawing.Size(100, 100);
            this.pictureReturn.TabIndex = 0;
            this.pictureReturn.TabStop = false;
            this.pictureReturn.Click += new System.EventHandler(this.pictureReturn_Click);
            // 
            // FormVatNuoi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1264, 729);
            this.Controls.Add(this.pictureReturn);
            this.Name = "FormVatNuoi";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormVatNuoi";
            this.Load += new System.EventHandler(this.FormVatNuoi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureReturn)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureReturn;

    }
}