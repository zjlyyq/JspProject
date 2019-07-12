#### 动作元素

动作元素基本上都是预定义的函数，JSP规范定义了一系列的标准动作，它用JSP作为前缀。

```jsp
<jsp:action_name attribute="value" />
```

1.  useBean动作：使用JavaBean

   ```jsp
   <jsp:useBean id="people" class="com.zjltcb.main.People"></jsp:useBean>
   <%
       People p = new People();
       p.setAge("12");
       p.setName("张嘉璐");
   %>
   <br>
   <textarea><%= p.getName() + p.getAge() + "岁"%></textarea>
   ```

   > 1. java bean必须先编译成.class文件
   > 2. 默认包的class无法被使用，必须先建个包

2. setProperty：用来设置已经实例化的Bean对象的属性

   + 在useBean外部使用

     ```
     
     ```

   + 在useBean内部使用

3. getProperty

4. forward：把请求转到另外的页面。jsp:forward标记只有一个属性page

5. plugin：不知道怎么用



### 隐式对象

JSP隐式对象是JSP容器为每个页面提供的Java对象，开发者可以直接使用它们而不用显式声明。JSP隐式对象也被称为预定义变量。

1. request对象：request对象是javax.servlet.http.HttpServletRequest 类的实例。每当客户端请求一个JSP页面时，JSP引擎就会制造一个新的request对象来代表这个请求。request对象提供了一系列方法来获取HTTP头信息，cookies，HTTP方法等等。

2. response对象：response对象是javax.servlet.http.HttpServletResponse类的实例。当服务器创建request对象时会同时创建用于响应这个客户端的response对象。

   response对象也定义了处理HTTP头模块的接口。通过这个对象，开发者们可以添加新的cookies，时间戳，HTTP状态码等等。

3. out对象：out对象是 javax.servlet.jsp.JspWriter 类的实例，用来在response对象中写入内容。

   最初的JspWriter类对象根据页面是否有缓存来进行不同的实例化操作。可以在page指令中使用buffered='false'属性来轻松关闭缓存。JspWriter类包含了大部分java.io.PrintWriter类中的方法。不过，JspWriter新增了一些专为处理缓存而设计的方法。还有就是，JspWriter类会抛出IOExceptions异常，而PrintWriter不会。

4. session对象：session对象是 javax.servlet.http.HttpSession 类的实例。和Java Servlets中的session对象有一样的行为。session对象用来跟踪在各个客户端请求间的会话。

5. application对象：application对象直接包装了servlet的ServletContext类的对象，是javax.servlet.ServletContext 类的实例。这个对象在JSP页面的整个生命周期中都代表着这个JSP页面。这个对象在JSP页面初始化时被创建，随着jspDestroy()方法的调用而被移除。***通过向application中添加属性，则所有组成您web应用的JSP文件都能访问到这些属性***

6. config对象： config对象是 javax.servlet.ServletConfig 类的实例，直接包装了servlet的ServletConfig类的对象。这个对象允许开发者访问Servlet或者JSP引擎的初始化参数，比如文件路径等。

7. pageContext 对象：pageContext对象是javax.servlet.jsp.PageContext 类的实例，用来代表整个JSP页面。

   这个对象主要用来访问页面信息，同时过滤掉大部分实现细节。

   这个对象存储了request对象和response对象的引用。application对象，config对象，session对象，out对象可以通过访问这个对象的属性来导出。

   pageContext对象也包含了传给JSP页面的指令信息，包括缓存信息，ErrorPage URL,页面scope等。

   PageContext类定义了一些字段，包括PAGE_SCOPE，REQUEST_SCOPE，SESSION_SCOPE， APPLICATION_SCOPE。它也提供了40余种方法，有一半继承自javax.servlet.jsp.JspContext 类。

   其中一个重要的方法就是removeArribute()，它可接受一个或两个参数。比如，pageContext.removeArribute("attrName")移除四个scope中相关属性

8. page 对象：这个对象就是页面实例的引用。它可以被看做是整个JSP页面的代表。

   page 对象就是this对象的同义词。

9. 

### 过滤器

JSP 和 Servlet 中的过滤器都是 Java 类。

过滤器可以动态地拦截请求和响应，以变换或使用包含在请求或响应中的信息。可以将一个或多个过滤器附加到一个 Servlet 或一组 Servlet。过滤器也可以附加到 JavaServer Pages (JSP) 文件和 HTML 页面。过滤器是可用于 Servlet 编程的 Java 类，可以实现以下目的：

+ 在客户端的请求访问后端资源之前，拦截这些请求。
+ 在服务器的响应发送回客户端之前，处理这些响应。

