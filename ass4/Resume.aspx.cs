using System;

namespace ass4
    {
        public partial class Resume : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
            }

            protected void SubmitButton_Click(object sender, EventArgs e)
            {
                if (string.IsNullOrWhiteSpace(NameTextBox.Text) ||
                    string.IsNullOrWhiteSpace(FatherNameTextBox.Text) ||
                    string.IsNullOrWhiteSpace(OccupationTextBox.Text) ||
                    string.IsNullOrWhiteSpace(DOBTextBox.Text))
                {
                    StatusLabel.Text = "Please fill out all the required fields.";
                    return;
                }
                NameLabel.Text = NameTextBox.Text;
                FatherNameLabel.Text = FatherNameTextBox.Text;
                OccupationLabel.Text = OccupationTextBox.Text;
                DOBLabel.Text = DOBTextBox.Text;
                TenthLabel.Text = TenthTextBox.Text;
                TwelfthLabel.Text = TwelfthTextBox.Text;
                BELabel.Text = BETextBox.Text;
                ExperienceLabel.Text = ExperienceTextBox.Text;
                SalaryLabel.Text = SalaryTextBox.Text;

                // Show the resume display panel
                ResumeDisplayPanel.Visible = true;

                // Hide the form
                FormPanel.Visible = false;
            }
        }
    }
