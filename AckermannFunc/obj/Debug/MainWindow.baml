   M S B A M L   `   `   `  ����H  DAckermannFunc, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AckermannFuncAckermannFunc  5   	       AckermannFunc.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:AckermannFunc     5   	   X TXceed.Wpf.Toolkit, Version=2.9.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   -   5          � Title$#  Ackermann Function Calculator��5	   	   $	��768��6/   $	��535��6>   $	��500��6N   $	��500��6Z    � Icon$ icon.ico��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      .+�5   
   �� -   5         ��Name$ button��5      $��	Calculate��6!   $
��Left=�65   $��
337,10,0,0q�6P   $	��Top=�6d   $��56��6|   $��25��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      �� 5   
   -   5         ��Name$ label��5      $��m��6   $
��Left=�6+   $	��Top=�6F    J� RenderTransformOrigin$ 5.268,1.989&�6^   $��0,4,0,0q�6�   �� 5   
   -   5        $ label1��5      $��n��6    $
��Left=�6,   $��	169,4,0,0q�6G   $	��Top=�6Z   $ 0.457,0.548&�6r   %  Xceed.Wpf.Toolkit.IntegerUpDown  5   
   -   5          Name$ PickM��5      �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�6,   $
��Left=�68   $��	25,10,0,0q�6S   $	��Top=�6f   $	��129��6~   $��20��6�     5   
   -   5        $ PickN��5      $ 0X�6,   $
��Left=�68   $��
191,10,0,0q�6S   $	��Top=�6g   $	��129��6   $��20��6�   �� 5   
   -   5        	 ��Name$	 textBox_result��5      
�������$��10,76,10,10q�6A   
 �� TextWrapping$

 Wrap=�6V   |�. $��2,2,2,4q�6{   ��. $	��720��6�   $	��430��6�    �� 
IsReadOnly . $��Consolas)�6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   � 5   
   $��20��6   $��35��6   $��30��6,   $��425,11,10,0q�6;   $	��Top=�6P   .+�5      � -   5         �Name$ ProgressBar0��5      $��25��60   $��25��6?   $	��339��6K   $��0,0,40,0q�6Z   �� 5      -	   5        $	 textBox��5      $��0,0,40,0q�6(   $��20��6:   $��18��6H   
������ $��0q�6m    �� TextAlignment$ Center=�6�    . |�.   J� 	AllowDrop .  ��.  6�   �� 5      -
   5        $ help_button��5      $��	290,0,5,0q�6?   $	��Top=�6R   $��30��6j   $��30��6u   $��Right=�6�   ��5      �� 5       .R�5!      �� $��up.png��6    5"      5$      5%      �� 5&   
   -   5        $ label2��5&      $��Time elapsed (hh:mm:ss): ��6    $
��Left=�6D   $��	10,45,0,0q�6_   $	��Top=�6r   �� 5'   
   -   5        $ TimeElapsed_label��5'      $
��Left=�6+   $��
155,45,0,0q�6F   $	��Top=�6Z   5(      5)      