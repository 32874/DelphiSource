program ProjectDemo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
  注释
  1、连接编译器
  2、编译：将我们的代码(文字)翻译成计算机能够识别的符号
  3、运行：计算机开始执行它能识别的符号

  命名规范
    1、见名知意：在我们定义一些东西的时候尽量使用英文，Name
    2、驼峰原则：
        大驼峰：每个单词的首字母大写
          StudentName
        小驼峰：由第二个单词开始，每个单词的首字母大写
          studentName

}

//Delphi学习C系语言的注释方式
(*
  注释
*)
{
  1、为什么要定义类型
    为了更加合理、科学的使用计算机存储空间
  2、有哪些类型

    1)数值型
      整数、小数(实数)

    2)逻辑型
      真(true) 非0为真、假(false) 0

    3)指针类型

    4)数组、子界、集合、自定义类型(结构体、类)

    5)字符串

  3、类型转换

    1)四舍五入

    2)自动类型转换：整数转小数
        取值范围小的数据类型向取值范围大的数据类型进行转换

    3)强制类型转换：小数转整数
        取值范围大的数据类型向取值范围小的数据类型进行转换

        要转换成的数据类型(等待被转换的类型)
}
begin

end.
