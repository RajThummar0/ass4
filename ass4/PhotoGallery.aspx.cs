using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ass4
{
    public partial class PhotoGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPhotos();
            }
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    // Save uploaded file to "Photos" directory
                    string folderPath = Server.MapPath("~/Photos/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    string fileName = Path.GetFileName(FileUploadControl.FileName);
                    string filePath = folderPath + fileName;
                    FileUploadControl.SaveAs(filePath);

                    StatusLabel.Text = "Upload successful!";
                    StatusLabel.ForeColor = System.Drawing.Color.Green;

                    // Reload the photos in the gallery
                    LoadPhotos();
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Error: " + ex.Message;
                    StatusLabel.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                StatusLabel.Text = "Please select a photo to upload.";
                StatusLabel.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void LoadPhotos()
        {
            // Fetch all photos from "Photos" directory
            string folderPath = Server.MapPath("~/Photos/");
            if (Directory.Exists(folderPath))
            {
                var photos = Directory.GetFiles(folderPath);
                var photoList = new System.Collections.Generic.List<dynamic>();

                foreach (var photo in photos)
                {
                    photoList.Add(new { ImageUrl = "~/Photos/" + Path.GetFileName(photo) });
                }

                PhotoRepeater.DataSource = photoList;
                PhotoRepeater.DataBind();
            }
        }
    }
}