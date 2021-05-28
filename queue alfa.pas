Program queue;
Uses crt;

Const max = 4;
Type
  Antri = Array [1..max] Of Char;
Label 10,20,30;
Var
  A: Antri;
  depan, belakang, x, i : Integer;
  data, pilih : Char;

Function kosong (Q:Antri) : Boolean;
Begin
  Kosong := (depan=belakang);
End;
Procedure tambah (Var Q:Antri ; X:Char);
Begin
  If belakang = max Then
    Begin
      Writeln ('                        => Maaf Data Sudah Penuh!!!');
      Writeln;
    End
  Else
    Begin
      belakang := belakang+1;
      Q[belakang] := x                   
    End;                             
  For i:= 1 To max Do
    Begin
      Write('                            Indeks Data Ke-',i,' : ',Q[i]);  
      Writeln;
    End;
End;
Function hapus (Var Q: Antri) : Char;
Begin
  If kosong(Q) Then
    Begin
      Writeln ('                        => Maaf, Data Masih Kosong..'); 
			Writeln;
    End
  Else
    Begin
      depan := depan +1;
      hapus := Q[depan];
      Q[depan] := ' ' ;
      Writeln;
    End;
  For i:= 1 To max Do
    Begin
       Write('                            Indeks Data Ke-',i,' : ',Q[i]);
      Writeln;
    End;
End;
Begin
  Clrscr;
	GotoXY (25,1);
	Writeln('===============================');
	GotoXY (25,2);
	Writeln('||       PROGRAM QUEUE       ||');
	GotoXY (25,3);
	Writeln('||  ALFA SEAN (20101106067)  ||');
  Repeat
		10:
		Writeln('                        ===============================');
		Writeln('                                  X--MENU--X');
		Writeln('                                     ====');
    Writeln('                               1. Tambah Data');
    Writeln('                               2. Hapus Data');
	  Writeln('                               3. Keluar');
		Writeln('                        ===============================');
    Write('                               => Pilih Menu    : ');
    Readln(x);
    Case x Of
      1:
         Begin
           Write ('                                  Masukkan Data : ');
           Readln (data);
           Writeln;
					 Writeln('                        ===============================');
           tambah(A,data);
         End;
      2:
         Begin
           If Not kosong(A) Then
             hapus(A) {menampilkan data inputan masih ada}
					 Else
					 hapus(A);{menampilkan kata data masih kosong}
         End;
			3: Exit;
    End;
		20 :
    Writeln;
    Write('                        => Kembali Ke Menu Awal? (y/n) : ');
    Readln (pilih);
		If (pilih = 'y') Or (pilih = 'Y') Then
			Begin
				Goto 10;
			End
		Else If (pilih = 'n') Or (pilih = 'N') Then
			Begin
				Goto 30;
			End
		Else
			Begin
				Writeln ('                           Pilihan Anda Salah!!!');
				Goto 20;
			End;
  Readln;
	Until x = 3;
	30:
End.