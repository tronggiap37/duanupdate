package admin.controller;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/UploadFileServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 50, // 50MB
    maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadFileServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    for (Part part : request.getParts()) {
      String fileName = extractFileName(part);
      // refines the fileName in case it is an absolute path
      fileName = new File(fileName).getName();
      part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
    }
//    request.setAttribute("message", "Upload File Success!");
//    getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
    request.setAttribute("message", "");
    getServletContext().getRequestDispatcher("/recruitment.htm").forward(request, response);
  }
  /**
   * Extracts file name from HTTP header content-disposition
   */
  private String extractFileName(Part part) {
    String contentDisp = part.getHeader("content-disposition");
    String[] items = contentDisp.split(";");
    for (String s : items) {
      if (s.trim().startsWith("filename")) {
        return s.substring(s.indexOf("=") + 2, s.length() - 1);
      }
    }
    return "";
  }
  public File getFolderUpload() {
    File folderUpload = new File(System.getProperty("user.home") + "D:/HOC TAP/hoc tap/Duan2/duantotnghiep/WebContent/img");
    if (!folderUpload.exists()) {
      folderUpload.mkdirs();
    }
    return folderUpload;
  }
}
