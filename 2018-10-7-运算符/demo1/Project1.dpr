program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
  1������

    �������С�Ĵ洢��Ԫ(�ռ�)�����Ŀռ��С����������ʱ���������;���

    1)������

      ����һ������������Delphi����Ҫʹ��һ��������xxx�ռ��С��xxx���ڴ�ռ�

      var ������:��������;

    2)��ʼ��:�������ĵ�һ�θ�ֵ

      ��ֵ��������:=������ֵ;

  2�������
    ���������: + - * /(��������)  div(����) mod(��ģ��������)

  3�����ʽ
}
var
  Age: Integer;
//���ַ�ʽ���������ҳ�ʼ��һ������;
var
  Name: string = 'С��';
begin
  //��ʼ��
  Age := 0;
  //д��(������̨)ָ��������
  Writeln(6/4);
  Writeln(6 div 3);
  Writeln(6 mod 4);
  //���������\
  Writeln(1 = 2);
  Writeln(1 <> 2);
  Writeln(not(1 <> 2));
  //���ȼ�
  //and:�Ƚϵ���������һ�������false,��ô����Ľ������false
  Writeln;
  Writeln('and');
  Writeln((1 < 2) and (2 < 3));
  Writeln((1 < 2) and (2 > 3));
  //or:�Ƚϵ���������һ�������true,��ô����Ľ������true
  Writeln;
  Writeln('or');
  Writeln((1 < 2) or (2 < 3));
  Writeln((1 < 2) or (2 > 3));
  //xor:�ж���������ͬΪfalse,��ͬΪtrue
  Writeln;
  Writeln('xor');
  Writeln((1 < 2) xor (2 < 3));
  Writeln((1 < 2) xor (2 > 3));
  Writeln('�����:', 1 + 2);
  //�ӿ���̨����һ������,�����ڵ���Ҫ���þ�����ͣ,�ȴ����ǰ��»س���
  Readln;
end.
