   M S B A M L   `   `   `  ���� H  DAckermannFunc, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AckermannFuncAckermannFunc      AckermannFunc.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:AckermannFunc     X TXceed.Wpf.Toolkit, Version=2.9.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  -     � Title$#  Ackermann Function Calculator��$	��768��$	��535��$	��500��$	��500�� � Icon$ icon.ico��.���  � ColumnDefinitions �� .+��� -    ��Name$ button��$��	Calculate��$
��Left=�$��
337,10,0,0q�$	��Top=�$��56��$��25�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  �� -    ��Name$ label��$��m��$
��Left=�$	��Top=� J� RenderTransformOrigin$ 5.268,1.989&�$��0,4,0,0q��� -   $ label1��$��n��$
��Left=�$��	169,4,0,0q�$	��Top=�$ 0.457,0.548&�%  Xceed.Wpf.Toolkit.IntegerUpDown  -     Name$ PickM���  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�$
��Left=�$��	25,10,0,0q�$	��Top=�$	��129��$��20��  -   $ PickN��$ 0X�$
��Left=�$��
191,10,0,0q�$	��Top=�$	��129��$��20���� -   	 ��Name$	 textBox_result��
�������$��10,76,10,10q�
 �� TextWrapping$

 Wrap=�|�. $��2,2,2,4q���. $	��720��$	��430�� �� 
IsReadOnly . $��Consolas)�" �� VerticalScrollBarVisibility$
 Auto=�� $��20��$��35��$��30��$��425,11,10,0q�$	��Top=�.+�� -    �Name$ ProgressBar0��$��25��$��25��$	��339��$��0,0,40,0q��� -	   $	 textBox��$��0,0,40,0q�$��20��$��18��
������ $��0q� �� TextAlignment$ Center=� . |�.   J� 	AllowDrop .  ��.  �� -
   $ help_button��$��	290,0,5,0q�$	��Top=�$��30��$��30��$��Right=����� .R��� $��up.png���� -   $ label2��$��Time elapsed (hh:mm:ss): ��$
��Left=�$��	10,45,0,0q�$	��Top=��� -   $ TimeElapsed_label��$
��Left=�$��
155,45,0,0q�$	��Top=�