FasdUAS 1.101.10   ��   ��    k             l      �� ��    � �Get the CWD, this should be the directory the script was launched in
finder from, would be better to get the file location but this works
for now       	  l     
�� 
 r         I    �� ��
�� .earsffdralis        afdr   f     ��    o      ���� 0 thepath thePath��   	     l     ������  ��        l      �� ��    3 -Use finder to browse to and launch the server         l   ( ��  O    (    k    '       r        l    ��  n        m    ��
�� 
ctnr  o    ���� 0 thepath thePath��    o      ���� "0 theparentfolder theParentFolder     !   r     " # " b     $ % $ b     & ' & l    (�� ( c     ) * ) o    ���� "0 theparentfolder theParentFolder * m    ��
�� 
TEXT��   ' m     + +  
Server:OSX    % m     , ,  :    # o      ���� 0 	thefolder 	theFolder !  -�� - I   '�� .��
�� .aevtodocnull  �    alis . l   # /�� / n    # 0 1 0 4     #�� 2
�� 
file 2 m   ! " 3 3  FlyingAntOSX    1 4     �� 4
�� 
cfol 4 o    ���� 0 	thefolder 	theFolder��  ��  ��    m    	 5 5�null     �����  :
Finder.app `)1 8�����������`)1 8����တ  �`)1     ���        MACS   alis    r  Macintosh HD               �ښ�H+    :
Finder.app                                                       G0�U4)        ����  	                CoreServices    ���      �T��      :      3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��     6 7 6 l     ������  ��   7  8 9 8 l      �� :��   : � �Types and typecasting in applescript is nonsensical, this is a 
roundabout way of getting a correct type of var to open but I can't 
find a better method    9  ; < ; l  ) . =�� = r   ) . > ? > b   ) , @ A @ o   ) *���� 0 	thefolder 	theFolder A m   * + B B  flyingant.conf    ? o      ���� 0 a  ��   <  C D C l  / 6 E�� E r   / 6 F G F n   / 2 H I H 1   0 2��
�� 
psxp I o   / 0���� 0 a   G o      ���� 0 b  ��   D  J K J l  7 C L�� L r   7 C M N M 4   7 ?�� O
�� 
psxf O o   ; >���� 0 b   N o      ���� 0 conffile confFile��   K  P Q P l     ������  ��   Q  R S R l      �� T��   T  read in the config file    S  U V U l  D K W�� W I  D K�� X��
�� .rdwropenshor       file X o   D G���� 0 conffile confFile��  ��   V  Y Z Y l  L _ [�� [ r   L _ \ ] \ I  L [�� ^ _
�� .rdwrread****        **** ^ o   L O���� 0 conffile confFile _ �� `��
�� 
deli ` J   R W a a  b�� b o   R U��
�� 
ret ��  ��   ] o      ���� 0 confcontents confContents��   Z  c d c l  ` g e�� e I  ` g�� f��
�� .rdwrclosnull���     **** f o   ` c���� 0 conffile confFile��  ��   d  g h g l     ������  ��   h  i j i l      �� k��   k Q Kwait a second before opening the browser to make sure
the server has loaded    j  l m l l  h m n�� n I  h m�� o��
�� .sysodelanull��� ��� nmbr o m   h i���� ��  ��   m  p q p l     ������  ��   q  r s r l      �� t��   t � �read every line looking for open_url, could screw up if
open url is somewhere unexpected but couldn't find a way
to force it to only look at the start of a line    s  u v u l  n � w�� w Y   n � x�� y z�� x k   � � { {  | } | r   � � ~  ~ n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 confcontents confContents  o      ���� 0 temptext tempText }  ��� � Z   � � � ����� � E   � � � � � o   � ����� 0 temptext tempText � m   � � � �  	open_url     � k   � � � �  � � � l   � ��� ���   � ; 5once we've found the line skip over the open_url text    �  � � � r   � � � � � c   � � � � � n   � � � � � 7  � ��� � �
�� 
cha  � m   � �����  � m   � ������� � o   � ����� 0 temptext tempText � m   � ���
�� 
TEXT � o      ���� 0 	launchurl 	launchUrl �  � � � l   � ��� ���   � - 'launch the url with the default browser    �  � � � I  � ��� ���
�� .GURLGURLnull    ��� TEXT � l  � � ��� � c   � � � � � o   � ����� 0 	launchurl 	launchUrl � m   � ���
�� 
TEXT��  ��   �  ��� �  S   � ���  ��  ��  ��  �� 0 i   y m   q r����  z n   r ~ � � � m   y }��
�� 
nmbr � n  r y � � � 2  u y��
�� 
cobj � o   r u���� 0 confcontents confContents��  ��   v  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  ��� � l     ������  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �  ; � �  C � �  J � �  U � �  Y � �  c � �  l � �  u����  ��  ��   � ���� 0 i   � "���� 5������ + ,����~ 3�} B�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n ��m�l�k�j
�� .earsffdralis        afdr�� 0 thepath thePath
�� 
ctnr�� "0 theparentfolder theParentFolder
�� 
TEXT�� 0 	thefolder 	theFolder
� 
cfol
�~ 
file
�} .aevtodocnull  �    alis�| 0 a  
�{ 
psxp�z 0 b  
�y 
psxf�x 0 conffile confFile
�w .rdwropenshor       file
�v 
deli
�u 
ret 
�t .rdwrread****        ****�s 0 confcontents confContents
�r .rdwrclosnull���     ****
�q .sysodelanull��� ��� nmbr
�p 
cobj
�o 
nmbr�n 0 temptext tempText
�m 
cha �l �k 0 	launchurl 	launchUrl
�j .GURLGURLnull    ��� TEXT�� �)j  E�O� ��,E�O��&�%�%E�O*��/��/j UO��%E�O��,E` O*a _ /E` O_ j O_ a _ kvl E` O_ j Okj O Wk_ a -a ,Ekh  _ a �/E` O_ a  (_ [a \[Za \Zi2�&E`  O_  �&j !OY h[OY�� ascr  ��ޭ