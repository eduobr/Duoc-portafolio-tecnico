   M S B A M L   `   `   `  ????@  <Vista, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:VistaVista  5   	   T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fZ=clr-namespace:MahApps.Metro.Behaviours;assembly=MahApps.MetroMahApps.Metro.Behaviours 5   	   V;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5	   	       Vista.Principal   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Vista     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   N
behaviours=clr-namespace:MahApps.Metro.Behaviours;assembly=MahApps.Metro  5   	   JControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5	   	     ? Title$  	Principal??5   	   $	??541??6   $	??826??6(   .??5      ? .+?5   
   ,  &MahApps.Metro.Controls.MetroTabControl  -   5        $??TCMain??5   #   .@?5      )  #MahApps.Metro.Controls.MetroTabItem  .??5      ? ??5      ?? 5       ?? EndPoint$ 0.5,1&?6.    ?? 
StartPoint$ 0.5,0&?6?   .??5      ?  ? Color$ 	#FF10426C??6+    ? Offset$
 0.39Q?6=   ? 5      $ White??6+   $ 1Q?69   5      .+?5      !  MahApps.Metro.Controls.Tile  -   5          Name$ ctlIngresar??5   $   $??	10,98,0,0q?69   $	??122??6L   $	??175??6Y   ???	#CC19C0FF   Title$ Ingresar Medicamento??6|    J? RenderTransformOrigin$ -11,0.5&?6?   $??Italic$?6?   
???   ?$??0q?6(  $
??Left=?6<  $	??Top=?6W     HorizontalTitleAlignment$ Center=?6o  	   VerticalTitleAlignment$	 Stretch=?6?  
 J? Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      .??5      ?? $!??Img\agregar-medicamento.png??6    $??44??6E   $??90??6Q   5        5      -   5        $ ctlBaja??5   $   $??
199,98,0,0q?65   $	??122??6I   $	??175??6V   ???	#CC19C0FF$ Baja Medicamento??6y   $ -11,0.5&?6?   $??Italic$?6?   $ Center=?6?   $
??Left=?6?   $	??Top=?6  $	 Stretch=?6  
???   ?
 5        5      .??5!      ?? $??Img\baja-medicamento.png??6    $??44??6B   $??90??6N   5"        5#      -   5        $ 
ctlEntrega??5#   $   $??
388,98,0,0q?68   $	??122??6L   $	??175??6Y   ???	#CC19C0FF$ Entregar Medicamento??6|   $ -11,0.5&?6?   $??Italic$?6?   $
??Left=?6?   $	??Top=?6?   $ Center=?6?   $	 Stretch=?6!  
???   ?
 5$        5%      .??5'      ?? $??Img/entrega.png??6    $??44??69   $??90??6E   5(        5)      -   5        $ ctlInformeStock??5)   $   $??
578,98,0,0q?6=   $	??122??6Q   $	??175??6^   ???	#CC19C0FF$ Informe Stock??6?   $ -11,0.5&?6?   $??Italic$?6?   $	 Stretch=?6?   $
??Left=?6?   $ Center=?6  $	??Top=?6(  ???	#FF060505
 5*        5+      .??5-      ?? $??Img/stock.png??6    $??44??67   $??90??6C   5.        5/      -   5        $ ctlReservar??5/   $   $??280,271,0,0q?69   $	??122??6N   $	??175??6[   ???	#CC19C0FF$ Reservar Medicamento??6~   $ -11,0.5&?6?   $??Arial)?6?   $??Italic$?6?   $
??Left=?6?   $	??Top=?6?   $ Center=?6  $	 Stretch=?66  ???	#FF060505
 50        51      .??53      ?? $??Img/med-reservado.png??6    $??63??6?   $??75??6K   54        55      -   5        $ 
ctlRevisar??55   $   $??
58,271,0,0q?68   $	??122??6L   $	??175??6Y   ???	#CC19C0FF$ Revisar Preescripcion??6|   $ -11,0.5&?6?   $??Italic$?6?   $ Center=?6?   $
??Left=?6?   $	??Top=?6
  $	 Stretch=?6"  ???	#FF040404
 56        57      .??59      ?? $??Img/prescripcion.png??6    $??44??6>   $??90??6J   5:        5;      -   5        $ 
ctlInforme??5;   $   $??501,271,0,0q?68   $	??122??6M   $	??175??6Z   ???	#CC19C0FF$$ Informe Medicamentos Reservado??6}   $ -11,0.5&?6?   $??Italic$?6?   ???	#FF020202$	 Stretch=?65  $ Center=?6V  $
??Left=?6x  $	??Top=?6?  
 5<        5=      .??5?      ?? $ ??Img/informe-reservados.png??6    $??44??6D   $??90??6P   5@      ?? 5A      $??	0,0,0,434q?6   .+?5B      ?? 
???   ?$
??Left=?61   $??62??6L   
???   ?$	??Top=?6g   $	??818??6    J? Opacity$	 0.8Q?6?   ?? 5C      -	   5         ??Name$ 	lblTitulo??5C       $
??Menu??63   $
??Left=?6B   $	??Top=?6]   
???????$??62??6?   $	??445??6?   $
??Bold"?6?   $??36(?6?   $??Rockwell Extra Bold)?6?    ?? Left$ 10??6?   5E      ?? 5F      -
   5         ??Name$ abrir_usuario??5F       $
??Left=?67   $??33??6R   $??765,437,0,0q?6^   $	??Top=?6s   $??53??6?   ???	#FFFFFEFE$ 0Q?6?   #  MahApps.Metro.Controls.Flyout  5G      -   5          Name$ 
flyUsuario??5G   &   $	??196??6:   ???	#FF23272E$	 0.9Q?6]      Header$ Usuario??6k   ???	#FFFFF4F4$ 0.5,0.5&?6?      Position$ Right=?6?   z?5H      V? 5I      .~?5J   "   ?? ?? 5K   "   ?? 5L   "    ?? Angle$ 0.054Q?62   T? 5M   "   5N      .??5P      ?? .+?5Q      ?? -   5         ??Name$ imUser??5Q   $   $??72??64   $ 51??6@   $??77??6Q   $??Img/User-Login.png??6\   ?? 5R      -   5        $ lblUser??5R   $   $??Nombre de Usuario??65   $ 23??6Q   
 ?? Top$ 72??6b   $	??141??6r   ???	#FFD3C7C7$
??Bold"?6?   $??14(?6?   ?? 5S      -   5         ??Name$ btnCerrarSesion??5S   %   $??Cerrar Sesion??6>   $ 38??6V   $	 127??6g   $	??114??6x   $??28??6?   ???	#FF0027AA???	#FF0E208F6?   5T      5U      5V      5W        5X      $??1??6$   $??Right=?6/   $??24??6K   .??5Y      ? $??0,2,-2,2q?6   ??5Z      ?? 5[      $ 0.5,1&?6.   $ 0.5,0&?6?   .??5\      ? $ 	#FF10426C??6+   $
 0.39Q?6=   ? 5]      $ White??6+   $ 1Q?69   5^      .+?5`        -   5        $ flyUsuario1??5`   &   $	??196??6;   ???	#FF23272E$	 0.9Q?6^   $ Usuario??6l   ???	#FFFFF4F4$ 0.5,0.5&?6?   $ Right=?6?   z?5a      V? 5b      .~?5c   "   ?? ?? 5d   "   ?? 5e   "   $ 0.054Q?62   T? 5f   "   5g      .??5i      ?? .+?5j      ?? -   5        $ imUser1??5j   $   $??72??65   $ 51??6A   $??77??6R   $??Img/User-Login.png??6]   ?? 5k      -   5        $ lblUser1??5k   $   $??Nombre de Usuario??66   $ 23??6R   $ 72??6c   $	??141??6s   ???	#FFD3C7C7$
??Bold"?6?   $??14(?6?   ?? 5l      -   5        $ btnCerrarSesion1??5l   %   $??Cerrar Sesion??6?   $ 38??6W   $	 127??6h   $	??114??6y   $??28??6?   ???	#FF0027AA???	#FF0E208F6?   5m      5n      ?? 5p      -   5        $ lblNombreMedicamento??5p      $??Nombre Medicamento??6:   $
??Left=?6W   $??
185,53,0,0q?6r   $	??Top=?6?   $??10(?6?   $??Italic$?6?   ???	#FFFFF3F3
 5q        5r      5t      ?? 5u      -   5        $ lblFabricante??5u      $??
Fabricante??63   $
??Left=?6H   $??
185,87,0,0q?6c   $	??Top=?6w   $??10(?6?   $??Italic$?6?   ???	#FFFFF3F3
 5v        5w      5y      ?? 5z      -   5        $ lblTipo??5z      $
??Tipo??6-   $
??Left=?6<   $??185,129,0,0q?6W   $	??Top=?6l   $??10(?6?   $??Italic$?6?   ???	#FFFFF3F3
 5{        5|      5~      ?? 5      -   5        $ lblContenido??5      $??	Contenido??62   $
??Left=?6F   $??185,171,0,0q?6a   $	??Top=?6v   $ -0.044,0.192&?6?   $??10(?6?   $??Italic$?6?   ???	#FFFFF3F3
 5?        5?      5?      ?? 5?      -   5        $ lblCantidad??5?      $??Cantidad??61   $
??Left=?6D   $??185,309,0,0q?6_   $	??Top=?6t   $ 	0.5,0.013&?6?   $??10(?6?   $??Italic$?6?   ???	#FFFFF3F3
 5?        5?      5?      ?? 5?      -   5        $ 
lblGramaje??5?      $??Gramaje??60   $
??Left=?6B   $??185,343,0,0q?6]   $	??Top=?6r   $ 0.149,-0.026&?6?   $??10(?6?   $??Italic$?6?   ???	#FFFFF3F3
 5?        5?      5?      ?? 5?      -   5        $ lblFechaVencimiento??5?      $??Fecha de Vencimiento??69   $
??Left=?6X   $??187,374,0,0q?6s   $	??Top=?6?   $??10(?6?   $??Italic$?6?   ???	#FFFFF3F3
 5?        5?      5?      (  "System.Windows.Controls.DatePicker  5?      -   5          Name$ dpFecVencimiento??5?   !   $
??Left=?6;   $??291,380,0,0q?6V   $	??Top=?6k   $??22??6?   $	??121??6?   $??9(?6?   ?? 5?      -   5        $ btnIngresarMed??5?      $??Ingresar Medicamento??65   $
??Left=?6T   $??292,422,0,0q?6o   $	??Top=?6?   $	??121??6?   $??23??6?   $??10(?6?   ???	#FF252323???	#FFE2DCDC$	 0.8Q?6?   ?? 5?      -   5         ??Name$ txtCantidad??5?      $
??Left=?63   $??23??6N   $??292,309,0,0q?6Z    ?? TextWrapping$
 Wrap=?6o   $	??Top=?6?   $	??121??6?   $??9(?6?   $ -0.321,5&?6?   ?? 5?      -   5        $ 
txtGramaje??5?      $
??Left=?62   $??23??6M   $??291,343,0,0q?6Y   $
 Wrap=?6n   $	??Top=?6?   $	??121??6?   $??9(?6?   $ -0.321,5&?6?   ?? 5?      -   5        $ txtContenido??5?      $
??Left=?64   $	??124??6O   $??291,171,0,0q?6\   $
 Wrap=?6q   $	??Top=?6?   $	??180??6?   ? 5?      $
??Left=?6   $	??508??66   $	??Top=?6C   $	??179??6[   ???	#FF0F0F0F$	 0.9Q?6~   ? 5?      $??19,15,679,425q?6   .+?5?      ?? -   5        $ irAtras1??5?       $
??Left=?62   $??32??6M   $??Img/atras.png??6X   $??90,0,0,0q?6o   $??26??6?   $	??Top=?6?   ?? 5?      -    5        $ label9??5?       $??Menu Principal??60   $
??Left=?6I   $	??Top=?6d   $??90??6|   $ 0.519,2.808&?6?   ???	#FFEAD3D36?   5?      ?? 5?      -!   5        $ btnIngresarMedicamento1??5?      $??Ingresar Medicamento??6>   $
??Left=?6]   $??0,59,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF??5?      ?? 5?      5?      ?? 5?      -"   5        $ btnBajaMedicamento1??5?      $??Baja de Medicamento??6:   $
??Left=?6X   $??0,87,0,0q?6s   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -#   5        $ btnInformeStock1??5?      $??Informe de Stock??67   $
??Left=?6R   $??	0,115,0,0q?6m   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -$   5        $ btnRevisarPrescripcion1??5?      $??Revisar Prescripcion??6>   $
??Left=?6]   $??	0,143,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -%   5        $ btnReservarMedicamento1??5?      $??Reservar Medicamento??6>   $
??Left=?6]   $??	0,171,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -&   5        $ btnMedicamentoReservado1??5?      $%??Informe Medicamentos Reservados??6?   $
??Left=?6i   $??	0,199,0,0q?6?   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1q?6	  ???	#FFCFCFCF6  ?? 5?      -'   5        $ txtFabricante??5?      $
??Left=?65   $??23??6P   $??
291,87,0,0q?6\   $
 Wrap=?6p   $	??Top=?6?   $	??135??6?   $??9(?6?   $ -0.321,5&?6?   ?? 5?      -(   5        $ txtTipo??5?      $
??Left=?6/   $??23??6J   $??291,129,0,0q?6V   $
 Wrap=?6k   $	??Top=?6   $	??135??6?   $??9(?6?   $ -0.321,5&?6?   ?? 5?      -)   5        $ txtMedicamento??5?      $
??Left=?66   $??23??6Q   $??
292,53,0,0q?6]   $
 Wrap=?6q   $	??Top=?6?   $	??135??6?   $??9(?6?   $ -0.321,5&?6?   ?? 5?      -*   5        $ abrir_usuario1??5?       $
??Left=?68   $??33??6S   $??767,433,0,0q?6_   $	??Top=?6t   $??53??6?   ???	#FFFFFEFE$ 0Q?6?   5?      5?        5?      $??2??6%   .??5?      ? ??5?      ?? 5?      $ 0.5,1&?6.   $ 0.5,0&?6?   .??5?      ? $ 	#FF10426C??6+   $
 0.39Q?6=   ? 5?      $ White??6+   $ 1Q?69   5?      .+?5?      ?? -+   5        $ 
label_Copy??5?      $??
Fabricante??60   $
??Left=?6E   $??
184,87,0,0q?6`   $	??Top=?6t   $??10(?6?   ???	#FFFFF8F86?   ?? 5?      -,   5        $ label_Copy1??5?      $??Cantidad??61   $
??Left=?6D   $??184,146,0,0q?6_   $	??Top=?6t   $??10(?6?   ???	#FFFFF8F86?   ?? 5?      --   5         ??Name$ comboBox??5?      $
??Left=?61   $??
299,85,0,0q?6L   $	??Top=?6`   $	??151??6x   $??9(?6?   $??16??6?   ?? 5?      -.   5        $ cboCantidad??5?      $
??Left=?63   $??17??6N   $??393,149,0,0q?6Z   $
 Wrap=?6o   $	??Top=?6?   $??57??6?   $??9(?6?   ?? 5?      -/   5        $ 
btnDarBaja??5?      $??Dar de Baja ??61   $
??Left=?6H   $??368,180,0,0q?6c   $	??Top=?6x   $??82??6?   $??10(?6?   ???	#FF0A0909$	 0.8Q?6?   ???	#FFD8D8D86?   ? 5?      $
??Left=?6   $	??470??66   $	??Top=?6C   $	??179??6[   ???	#FF0F0F0F$	 0.9Q?6~   ?? 5?      $??9,15,545,236q?6   .+?5?      ?? $
??Left=?6!   $??26??6<   $	??Top=?6H   $??32??6`   $??Img/atras.png??6k   $	 100??6?   ?? 5?      $??Menu Principal??6!   $
??Left=?6:   $	??Top=?6U   $??90??6m   $ 0.519,2.808&?6x   ???	#FFEAD3D3$ 10??6?   5?      ?? 5?      -0   5        $ btnIngresarMedicamento2??5?      $??Ingresar Medicamento??6>   $
??Left=?6]   $??0,59,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -1   5        $ btnBajaMedicamento2??5?      $??Baja de Medicamento??6:   $
??Left=?6X   $??0,87,0,0q?6s   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -2   5        $ btnInformeStock2??5?      $??Informe de Stock??67   $
??Left=?6R   $??	0,115,0,0q?6m   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -3   5        $ btnRevisarPrescripcion2??5?      $??Revisar Prescripcion??6>   $
??Left=?6]   $??	0,143,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -4   5        $ btnReservarMedicamento2??5?      $??Reservar Medicamento??6>   $
??Left=?6]   $??	0,171,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -5   5        $ btnMedicamentoReservado2??5?      $%??Informe Medicamentos Reservados??6?   $
??Left=?6i   $??	0,199,0,0q?6?   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1q?6	  ???	#FFCFCFCF6  ?? 5?      -6   5        $ lblGramaje2??5?      $??Gramaje??61   $
??Left=?6C   $??184,121,0,0q?6^   $	??Top=?6s   $??10(?6?   ???	#FFFFF8F86?   ?? 5?      -7   5        $ 
cboGramaje??5?      $
??Left=?63   $??380,116,0,0q?6N   $	??Top=?6c   $??70??6{   $??9(?6?   $??16??6?   ?? 5?      -8   5        $ comboBox_Copy1??5?      $
??Left=?67   $??
299,53,0,0q?6R   $	??Top=?6f   $	??151??6~   $??9(?6?   $??16??6?   ?? 5?      
???   ?$
??Left=?6-   $??29??6H   
???   ?$	??Top=?6c   $	??639??6{   $	 0.8Q?6?   $??	179,0,0,0q?6?   ?? 5?      $??Dar de baja Medicamento??6   $
??Left=?6>   $	??Top=?6Y   
???????$??29??6?   $	??272??6?   $
??Bold"?6?   $??16(?6?   $??Rockwell Extra Bold)?6?   $??	178,0,0,0q?6?   ?? 5?      -9   5        $ lblMedicamento??5?      $??Nombre Medicamento??64   $
??Left=?6Q   $??
184,50,0,0q?6l   $	??Top=?6?   $??10(?6?   ???	#FFFFF8F86?   ?? 5?      -:   5        $ abrir_usuario2??5?       $
??Left=?68   $??33??6S   $??765,437,0,0q?6_   $	??Top=?6t   $??53??6?   
???????$ 0Q?6?     5?      -;   5        $ flyUsuario2??5?   &   $	??196??6;   ???	#FF23272E$	 0.9Q?6^   $ Usuario??6l   ???	#FFFFF4F4$ 0.5,0.5&?6?   $ Right=?6?   z?5?      V? 5?      .~?5?   "   ?? ?? 5?   "   ?? 5?   "   $ 0.054Q?62   T? 5?   "   5?      .??5?      ?? .+?5?      ?? -<   5        $ imgUser2??5?   $   $??72??66   $ 51??6B   $??77??6S   $??Img/User-Login.png??6^   ?? 5?      -=   5        $ lblUser2??5?   $   $??Nombre de Usuario??66   $ 23??6R   $ 72??6c   $	??141??6s   ???	#FFD3C7C7$
??Bold"?6?   $??14(?6?   ?? 5?      ->   5        $ btnCerrarSesion2??5?   %   $??Cerrar Sesion??6?   $ 38??6W   $	 127??6h   $	??114??6y   $??28??6?   ???	#FF0027AA???	#FF0E208F6?   5?      5?      5?      5?        5?      $??3??6$   .??5?      ? ??5?      ?? 5?      $ 0.5,1&?6.   $ 0.5,0&?6?   .??5?      ? $ 	#FF10426C??6+   $
 0.39Q?6=   ? 5?      $ White??6+   $ 1Q?69   5?      .+?5?      ?? $??Generar Por??6   $
??Left=?62   $??
236,41,0,0q?6M   $	??Top=?6a   ???	#FFFFEEEE$??Italic$?6?   
 5?        5?      5?      ?? 5?      -?   5        $ 	cbGenerar??5?      $
??Left=?62   $??
314,41,0,0q?6M   $	??Top=?6a   $	??140??6y   ?? 5?      -@   5        $ button??5?      $??Generar Informe??6-   $
??Left=?6G   $??314,239,0,0q?6b   $	??Top=?6w   $	??120??6?   $??21??6?   $??10(?6?   ? 5?      $
??Left=?6   $	??137??66   $??
198,87,0,0q?6C   $	??Top=?6W   $	??379??6o   ???	#FFE2C8C8$
 0.36Q?6?   ? 5?      $
??Left=?6   $	??470??66   $	??Top=?6C   $	??179??6[   ???	#FF0F0F0F$	 0.9Q?6~   ?? 5?      $??9,15,668,431q?6   .+?5?      ?? $
??Left=?6    $??26??6;   $	??Top=?6G   $??32??6_   $??Img/atras.png??6j   $	 100??6?   ?? 5?      $??Menu Principal??6    $
??Left=?69   $	??Top=?6T   $??90??6l   $ 0.519,2.808&?6w   ???	#FFEAD3D3$ 10??6?   5?      ?? 5?      -A   5        $ btnIngresarMedicamento3??5?      $??Ingresar Medicamento??6>   $
??Left=?6]   $??0,59,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -B   5        $ btnBajaMedicamento3??5?      $??Baja de Medicamento??6:   $
??Left=?6X   $??0,87,0,0q?6s   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -C   5        $ btnInformeStock3??5?      $??Informe de Stock??67   $
??Left=?6R   $??	0,115,0,0q?6m   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -D   5        $ btnRevisarPrescripcion3??5?      $??Revisar Prescripcion??6>   $
??Left=?6]   $??	0,143,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -E   5        $ btnReservarMedicamento3??5?      $??Reservar Medicamento??6>   $
??Left=?6]   $??	0,171,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5?      -F   5        $ btnMedicamentoReservado3??5?      $%??Informe Medicamentos Reservados??6?   $
??Left=?6i   $??	0,199,0,0q?6?   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1q?6	  ???	#FFCFCFCF6  ?? 5?      -G   5        $ abrir_usuario3??5?       $
??Left=?68   $??33??6S   $??755,427,0,0q?6_   $	??Top=?6t   $??53??6?   
???????$ 0Q?6?     5?      -H   5        $ flyUsuario3??5?   &   $	??196??6;   ???	#FF23272E$	 0.9Q?6^   $ Usuario??6l   ???	#FFFFF4F4$ 0.5,0.5&?6?   $ Right=?6?   z?5?      V? 5?      .~?5?   "   ?? ?? 5?   "   ?? 5?   "   $ 0.054Q?62   T? 5   "   5     .??5     ?? .+?5     ?? -I   5        $ imgUser3??5  $   $??72??66   $ 51??6B   $??77??6S   $??Img/User-Login.png??6^   ?? 5     -J   5        $ lblUser3??5  $   $??Nombre de Usuario??66   $ 23??6R   $ 72??6c   $	??141??6s   ???	#FFD3C7C7$
??Bold"?6?   $??14(?6?   ?? 5     -K   5        $ btnCerrarSesion3??5  %   $??Cerrar Sesion??6?   $ 38??6W   $	 127??6h   $	??114??6y   $??28??6?   ???	#FF0027AA???	#FF0E208F6?   5     5     5	     5
       5     $??4??6%   .??5     ? ??5     ?? 5     $ 0.5,1&?6.   $ 0.5,0&?6?   .??5     ? $ 	#FF10426C??6+   $
 0.39Q?6=   ? 5     $ White??6+   $ 1Q?69   5     .+?5     ?? -L   5        $ label9_Copy??5     $??Prescripciones Pendientes??61   $
??Left=?6U   $	??Top=?6p   $	??233??6?   $ 0.519,2.808&?6?   ???	#FFEAD3D3$	 270??6?   $
??Bold"?6?   $??18(?6?   $ 18??6  $??Italic$?6  $??
288,48,0,0q?6$  
 5       5     5     ? 5     $
??Left=?6   $	??180??66   $??
236,87,0,0q?6C   $	??Top=?6W   $	??336??6o   
???????$	 0.6Q?6?   ? 5     $
??Left=?6   $	??470??66   $	??Top=?6C   $	??179??6[   ???	#FF0F0F0F$	 0.9Q?6~   ?? 5     $??9,15,668,431q?6   .+?5     ?? $
??Left=?6    $??26??6;   $	??Top=?6G   $??32??6_   $??Img/atras.png??6j   $	 100??6?   ?? 5     $??Menu Principal??6    $
??Left=?69   $	??Top=?6T   $??90??6l   $ 0.519,2.808&?6w   ???	#FFEAD3D3$ 10??6?   5     ?? 5     -M   5        $ btnIngresarMedicamento4??5     $??Ingresar Medicamento??6>   $
??Left=?6]   $??0,59,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5     -N   5        $ btnBajaMedicamento4??5     $??Baja de Medicamento??6:   $
??Left=?6X   $??0,87,0,0q?6s   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5      -O   5        $ btnInformeStock4??5      $??Informe de Stock??67   $
??Left=?6R   $??	0,115,0,0q?6m   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5!     -P   5        $ btnRevisarPrescripcion4??5!     $??Revisar Prescripcion??6>   $
??Left=?6]   $??	0,143,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5"     -Q   5        $ btnReservarMedicamento4??5"     $??Reservar Medicamento??6>   $
??Left=?6]   $??	0,171,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5#     -R   5        $ btnMedicamentoReservado4??5#     $%??Informe Medicamentos Reservados??6?   $
??Left=?6i   $??	0,199,0,0q?6?   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1q?6	  ???	#FFCFCFCF6  ?? 5$     -S   5        $ abrir_usuario4??5$      $
??Left=?68   $??33??6S   $??765,437,0,0q?6_   $	??Top=?6t   $??53??6?   
???????$ 0Q?6?     5%     -T   5        $ flyUsuario4??5%  &   $	??196??6;   ???	#FF23272E$	 0.9Q?6^   $ Usuario??6l   ???	#FFFFF4F4$ 0.5,0.5&?6?   $ Right=?6?   z?5&     V? 5'     .~?5(  "   ?? ?? 5)  "   ?? 5*  "   $ 0.054Q?62   T? 5+  "   5,     .??5.     ?? .+?5/     ?? -U   5        $ imgUser4??5/  $   $??72??66   $ 51??6B   $??77??6S   $??Img/User-Login.png??6^   ?? 50     -V   5        $ lblUser4??50  $   $??Nombre de Usuario??66   $ 23??6R   $ 72??6c   $	??141??6s   ???	#FFD3C7C7$
??Bold"?6?   $??14(?6?   ?? 51     -W   5        $ btnCerrarSesion4??51  %   $??Cerrar Sesion??6?   $ 38??6W   $	 127??6h   $	??114??6y   $??28??6?   ???	#FF0027AA???	#FF0E208F6?   52     53     54     55       56     $??5??6$   .??57     ? ??58     ?? 59     $ 0.5,1&?6.   $ 0.5,0&?6?   .??5:     ? $ 	#FF10426C??6+   $
 0.39Q?6=   ? 5;     $ White??6+   $ 1Q?69   5<     .+?5>     ?? -X   5        $ lblNomPaciente??5>     $??Nombre Paciente:??64   $
??Left=?6O   $??
184,10,0,0q?6j   $	??Top=?6~   ???	#FFFFF1F16?   ?? 5?     -Y   5        $ lblDiagnostico??5?     $??Diagnostico:??64   $
??Left=?6K   $??
184,41,0,0q?6f   $	??Top=?6z   ???	#FFFFF1F16?   ?? 5@     -Z   5        $ lblTratamiento??5@     $??Tratamiento:??64   $
??Left=?6K   $??
184,67,0,0q?6f   $	??Top=?6z   ???	#FFFFF1F16?   ?? 5A     -[   5        $ 	lblMedico??5A     $??Medico:??6/   $
??Left=?6A   $??
184,93,0,0q?6\   $	??Top=?6p   ???	#FFFFF1F16?   ?? 5B     -\   5        $ 	lblReceta??5B     $??Receta:??6/   $
??Left=?6A   $??184,119,0,0q?6\   $	??Top=?6q   ???	#FFFFF1F16?   ? 5C     $
??Left=?6   $	??470??66   $	??Top=?6C   $	??179??6[   ???	#FF0F0F0F$	 0.9Q?6~   ?? 5D     $??9,15,668,431q?6   .+?5E     ?? $
??Left=?6    $??26??6;   $	??Top=?6G   $??32??6_   $??Img/atras.png??6j   $	 100??6?   ?? 5F     $??Menu Principal??6    $
??Left=?69   $	??Top=?6T   $??90??6l   $ 0.519,2.808&?6w   ???	#FFEAD3D3$ 10??6?   5G     ?? 5H     -]   5        $ btnIngresarMedicamento5??5H     $??Ingresar Medicamento??6>   $
??Left=?6]   $??0,59,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5I     -^   5        $ btnBajaMedicamento5??5I     $??Baja de Medicamento??6:   $
??Left=?6X   $??0,87,0,0q?6s   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5J     -_   5        $ btnInformeStock5??5J     $??Informe de Stock??67   $
??Left=?6R   $??	0,115,0,0q?6m   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5K     -`   5        $ btnRevisarPrescripcion5??5K     $??Revisar Prescripcion??6>   $
??Left=?6]   $??	0,143,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5L     -a   5        $ btnReservarMedicamento5??5L     $??Reservar Medicamento??6>   $
??Left=?6]   $??	0,171,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5M     -b   5        $ btnMedicamentoReservado5??5M     $%??Informe Medicamentos Reservados??6?   $
??Left=?6i   $??	0,199,0,0q?6?   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1q?6	  ???	#FFCFCFCF6  ?? 5N     -c   5        $ abrir_usuario5??5N      $
??Left=?68   $??33??6S   $??765,437,0,0q?6_   $	??Top=?6t   $??53??6?   
???????$ 0Q?6?     5O     -d   5        $ flyUsuario5??5O  &   $	??196??6;   ???	#FF23272E$	 0.9Q?6^   $ Usuario??6l   ???	#FFFFF4F4$ 0.5,0.5&?6?   $ Right=?6?   z?5P     V? 5Q     .~?5R  "   ?? ?? 5S  "   ?? 5T  "   $ 0.054Q?62   T? 5U  "   5V     .??5X     ?? .+?5Y     ?? -e   5        $ imgUser5??5Y  $   $??72??66   $ 51??6B   $??77??6S   $??Img/User-Login.png??6^   ?? 5Z     -f   5        $ lblUser5??5Z  $   $??Nombre de Usuario??66   $ 23??6R   $ 72??6c   $	??141??6s   ???	#FFD3C7C7$
??Bold"?6?   $??14(?6?   ?? 5[     -g   5        $ btnCerrarSesion5??5[  %   $??Cerrar Sesion??6?   $ 38??6W   $	 127??6h   $	??114??6y   $??28??6?   ???	#FF0027AA???	#FF0E208F6?   5\     5]     5^     5_       5`     $??6??6$   .??5a     ? ??5b     ?? 5c     $ 0.5,1&?6.   $ 0.5,0&?6?   .??5d     ? $ 	#FF10426C??6+   $
 0.39Q?6=   ? 5e     $ White??6+   $ 1Q?69   5f     .+?5h     ? $
??Left=?6   $	??250??66   $??
204,70,0,0q?6C   $	??Top=?6W   $	??361??6o   ???	#FFFFF4F4$	 0.7Q?6?   ?? 5i     $%??Informe Medicamentos Reservados??6   $
??Left=?6F   $??
204,17,0,0q?6a   $	??Top=?6u   $	??289??6?   $??16(?6?   
???????$
??Bold"?6?   $??Italic$?6?   ? 5j     $
??Left=?6   $	??470??66   $	??Top=?6C   $	??179??6[   ???	#FF0F0F0F$	 0.9Q?6~   ?? 5k     $??9,15,668,431q?6   .+?5l     ?? $
??Left=?6    $??26??6;   $	??Top=?6G   $??32??6_   $??Img/atras.png??6j   $	 100??6?   ?? 5m     $??Menu Principal??6    $
??Left=?69   $	??Top=?6T   $??90??6l   $ 0.519,2.808&?6w   ???	#FFEAD3D3$ 10??6?   5n     ?? 5o     -h   5        $ btnIngresarMedicamento6??5o     $??Ingresar Medicamento??6>   $
??Left=?6]   $??0,59,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5p     -i   5        $ btnBajaMedicamento6??5p     $??Baja de Medicamento??6:   $
??Left=?6X   $??0,87,0,0q?6s   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5q     -j   5        $ btnInformeStock6??5q     $??Informe de Stock??67   $
??Left=?6R   $??	0,115,0,0q?6m   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5r     -k   5        $ btnRevisarPrescripcion6??5r     $??Revisar Prescripcion??6>   $
??Left=?6]   $??	0,143,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5s     -l   5        $ btnReservarMedicamento6??5s     $??Reservar Medicamento??6>   $
??Left=?6]   $??	0,171,0,0q?6x   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1,1,1,0q?6?   ???	#FFCFCFCF6  ?? 5t     -m   5        $ btnMedicamentoReservado6??5t     $%??Informe Medicamentos Reservados??6?   $
??Left=?6i   $??	0,199,0,0q?6?   $	??Top=?6?   $	??179??6?   $??28??6?   $??10(?6?   
???   ?
???????$	 0.9Q?6?   $??1q?6	  ???	#FFCFCFCF6  ?? 5u     -n   5        $ abrir_usuario6??5u      $
??Left=?68   $??33??6S   $??765,437,0,0q?6_   $	??Top=?6t   $??53??6?   
???????$ 0Q?6?     5v     -o   5        $ flyUsuario6??5v  &   $	??196??6;   ???	#FF23272E$	 0.9Q?6^   $ Usuario??6l   ???	#FFFFF4F4$ 0.5,0.5&?6?   $ Right=?6?   z?5w     V? 5x     .~?5y  "   ?? ?? 5z  "   ?? 5{  "   $ 0.054Q?62   T? 5|  "   5}     .??5     ?? .+?5?     ?? -p   5        $ imgUser6??5?  $   $??72??66   $ 51??6B   $??77??6S   $??Img/User-Login.png??6^   ?? 5?     -q   5        $ lblUser6??5?  $   $??Nombre de Usuario??66   $ 23??6R   $ 72??6c   $	??141??6s   ???	#FFD3C7C7$
??Bold"?6?   $??14(?6?   ?? 5?     -r   5        $ btnCerrarSesion6??5?  %   $??Cerrar Sesion??6?   $ 38??6W   $	 127??6h   $	??114??6y   $??28??6?   ???	#FF0027AA???	#FF0E208F6?   5?     5?     ?? 5?     -s   5        $ btnMedReservados??5?     $0??*Generar Informe de Medicamentos Reservados??67   $
??Left=?6l   $??218,352,0,0q?6?   $	??Top=?6?   $	??330??6?   5?     5?     5?     5?     5?     