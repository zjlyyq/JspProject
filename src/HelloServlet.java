import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet extends HttpServlet {
    private String message;

    @Override
    public void init() throws ServletException {
        message = "this message is from servlet!";
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //设置响应内容类型
        resp.setContentType("text/html");

        //设置逻辑实现
        //得到get请求的参数 eg. name=zjl&age=12
        String parames = req.getQueryString();
        //得到第一个参数
        String parame1 = parames.split("&")[0];
        System.out.println(parame1);
        String name = parame1.split("=")[1];
        System.out.println(name);
        PrintWriter out = resp.getWriter();
        out.println("<h1>Hello " + name + ' ' +  message + "</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
