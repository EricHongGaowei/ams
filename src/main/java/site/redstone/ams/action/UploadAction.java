package site.redstone.ams.action;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/")
@Action(value = "uploadAction")
public class UploadAction extends ActionSupport {

	private static final long serialVersionUID = 1669922471465487746L;

	private File file; // 上传的文件
	private String fileFileName; // 文件名称
	private String fileContentType; // 文件类型

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("文件上传");
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String realpath = ServletActionContext.getServletContext().getRealPath("/upload");
		if (file != null) {
			String srcName = "file-" + UUID.randomUUID() + fileFileName.substring(fileFileName.lastIndexOf("."));
			File savefile = new File(new File(realpath), srcName);
			if (savefile.getParentFile().exists()) {
				try {
					savefile.getParentFile().mkdirs();
					FileUtils.copyFile(file, savefile);
					System.out.println("{'fileName':'" + srcName + "'}");
					out.write("{\r\n" + 
							"  \"code\": 0\r\n" + 
							"  ,\"msg\": \"\" \r\n" + 
							"  ,\"data\": {\r\n" + 
							"    \"src\": \""+ServletActionContext.getRequest().getContextPath()+"/upload/"+srcName+"\"\r\n" + 
							"  }\r\n" + 
							"}");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return NONE;
	}
}
