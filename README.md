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