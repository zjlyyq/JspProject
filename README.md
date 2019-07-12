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

1. request对象：request对象是javax.servlet.http.HttpServletRequest 类的实例。每当客户端请求一个JSP页面时，JSP引擎就会制造一个新的request对象来代表这个请求。

   request对象提供了一系列方法来获取HTTP头信息，cookies，HTTP方法等等。


