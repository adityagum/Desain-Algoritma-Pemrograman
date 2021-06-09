Program TubesSewaKendaraan;
uses crt;
const Nmax = 3;
	type penyewa = record
				nama, jk, tglsewa, noHp, kodekend : string;
				lamasewa, id : integer;
				biayatot, biayaperhari : longint;
				end;
	type listpenyewa = array[1..Nmax] of penyewa;
VAR
	x, i : integer;
	j : integer=0;
	jum : integer;
	datapenyewa : listpenyewa;
	arsippenyewa : file of penyewa;
procedure LoadData();
	begin
		assign(arsippenyewa, 'penyewa.txt');
		reset(arsippenyewa);
		while not eof(arsippenyewa) do
		begin
			jum := jum + 1;
			read(arsippenyewa,datapenyewa[jum]);
		end;
	end;

procedure savedata();
	begin
		rewrite(arsippenyewa);
		for i := 1 to jum do
		begin
			write(arsippenyewa,datapenyewa[i]);
		end;
			close(arsippenyewa);
	end;

procedure motor;
	var
		pilmotor : integer;
	begin
		repeat
			clrscr;
			writeln(':================================================:');
			writeln(':                PILIHAN MOTOR                   :');
            writeln(':================================================:');
            writeln(':                                                :');
            writeln(':      1. Kawasaki Ninja 250cc                   :');
	        writeln(':      2. Yamaha R25                             :');
	        writeln(':      3. Yamaha Jupiter MX                      :');
	        writeln(':      4. Yamaha Mio GT                          :');
	        writeln(':      5. Honda Vario                            :');
	        writeln(':                                                :');
	        writeln(':                                                :');
	        writeln(':      0. Kembali                                :');
	        writeln(':                                                :');
	        writeln(':================================================:');
	        writeln('Masukan Kode Motor yang Anda pilih : ');
	        readln(pilmotor);
			case pilmotor of
	        		1:begin
	        			writeln('Biaya perhari : Rp 150.000');
						datapenyewa[jum].biayaperhari := 150000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'Ninja';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
		        		readln;
					end;

					2:begin
						writeln('Biaya perhari : Rp 125.000');
						datapenyewa[jum].biayaperhari := 125000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'R25';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
					end;

					3:begin
						writeln('Biaya perhari : Rp 100.000');
						datapenyewa[jum].biayaperhari := 100000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'MX';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
					end;

					4:begin
						writeln('Biaya perhari : Rp 70.000');
						datapenyewa[jum].biayaperhari := 70000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'GT';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
					end;

					5:begin
						writeln('Biaya perhari : Rp 85.000');
						datapenyewa[jum].biayaperhari := 85000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'Vario';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
					end;
					0:begin

					end;

			end;
		until (pilmotor=0);
	end;

procedure mobil;
	var
		pilmobil : integer;
	begin
		repeat
		clrscr;
		writeln(':================================================:');
		writeln(':                PILIHAN MOBIL                   :');
		writeln(':================================================:');
		writeln(':                                                :');
		writeln(':      1. Lamborghini Aventador                  :');
		writeln(':      2. Honda Civiv Type R                     :');
		writeln(':      3. Honda City                             :');
		writeln(':      4. Toyota Yaris                           :');
		writeln(':      5. Daihatsu Ayla                          :');
		writeln(':                                                :');
		writeln(':                                                :');
		writeln(':      0. Kembali                                :');
		writeln(':                                                :');
		writeln(':================================================:');
		writeln('Masukan Kode Mobil yanng Anda pilih : ');
		readln(pilmobil);
			case pilmobil of
	        		1:begin
	        			writeln('Biaya perhari : Rp 900.000');
						datapenyewa[jum].biayaperhari := 900000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'lambor';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
		        		readln;
					end;

					2:begin
						writeln('Biaya perhari : Rp 700.000');
						datapenyewa[jum].biayaperhari := 700000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'Type R';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
					end;

					3:begin
						writeln('Biaya perhari : Rp 250.000');
						datapenyewa[jum].biayaperhari := 250000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'City';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
					end;

					4:begin
						writeln('Biaya perhari : Rp 300.000');
						datapenyewa[jum].biayaperhari := 300000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'Yaris';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
					end;

					5:begin
						writeln('Biaya perhari : Rp 270.000');
						datapenyewa[jum].biayaperhari := 270000;
						datapenyewa[jum].biayatot := datapenyewa[jum].biayaperhari*datapenyewa[jum].lamasewa;
						writeln('Biaya total : Rp ' ,datapenyewa[jum].biayatot);
						datapenyewa[jum].kodekend := 'Ayla';
						writeln('Kode kendaraan : ' ,datapenyewa[jum].kodekend);
						readln;
						end;
					0:begin

					end;
			end;
		until (pilmobil=0);
	end;

procedure pilihkendaraan;
	begin
    	repeat
        	clrscr;
			writeln(':==============================================:');
			writeln(':              PILIHAN KENDARAAN               :');
			writeln(':==============================================:');
			writeln(':                                              :');
			writeln(':            1. Motor                          :');
			writeln(':            2. Mobil                          :');
			writeln(':                                              :');
			writeln(':                                              :');
			writeln(':            0. Kembali                        :');
			writeln(':                                              :');
			writeln(':==============================================:');
			writeln('Kode Kendaraan yang Anda pilih : ');
			readln(x);
			writeln(' ');
				case x of
					1:begin
						motor;
	        		end;
					2:begin
						mobil;
					end;
					0:begin

                	end;
				end;
    	until(x=0);
	end;

function caridata1(search : string):integer;
	var
        temp : integer;
		cek : boolean;
	begin
		caridata1 := 0;
		temp := 0;
		cek := false;
		j := 1;
		while ((not cek) and (j <= jum)) do
		begin
                        if (datapenyewa[j].nama = search) then
	        	begin
	    	    	        cek := true;
	     	    	        temp := j;
                        end;
	                j := j + 1;
                end;
                caridata1 := temp;
		readln;
	end;

procedure sortdata;
	var
		temp2 : penyewa;
		k : integer;
		i : integer;
	begin
		for i := jum to 2 do
		begin
	    	for k := 2 to i do
	    	begin
	    		if (datapenyewa[k].lamasewa > datapenyewa[k-1].lamasewa) then
	           		begin
		        		temp2 := datapenyewa[k];
						datapenyewa[k] := datapenyewa[k-1];
						datapenyewa[k-1] := temp2;
					end;
	    	end;
		end;
	end;

procedure tampildata;
	var
		i : integer;
	begin
		clrscr;
		for i := 1 to jum do
			begin
	     		sortdata;
	     		writeln('Nomor Pelanggan : ' ,datapenyewa[i].id);
             	writeln('Nama : ' ,datapenyewa[i].nama);
             	writeln('Nomor HP : ' ,datapenyewa[i].noHp);
             	writeln('Jenis Kelamin : ' ,datapenyewa[i].jk);
             	writeln('Tanggal Sewa : ' ,datapenyewa[i].tglsewa);
             	writeln('Lama Sewa : ' ,datapenyewa[i].lamasewa);
             	writeln('Kode Kendaraan : ' ,datapenyewa[i].kodekend);
             	writeln('Biaya Perhari : Rp.' ,datapenyewa[i].biayaperhari);
             	writeln('Biaya Total : Rp.' ,datapenyewa[i].biayatot);
             	readln;
			end;
	end;

procedure datagagaldihapus;
	begin
		writeln(':==================================================:');
		writeln(':                DATA BELUM DIHAPUS                :');
		writeln(':==================================================:');
		writeln;
		readln;
	end;

procedure datadihapus;
	begin
		writeln(':===================================================:');
		writeln(':               DATA BERHASIL DIHAPUS               :');
		writeln(':===================================================:');
		writeln;
		readln;
	end;

procedure hapusdata;
	var
		hps, j : integer;
		YT : string;
		temp : penyewa;
	begin
		clrscr;
		writeln(':==================================================:');
		writeln(':                                                  :');
		writeln(':          SELAMAT DAATANG DI MENU UNTUK           :');
		writeln(':             MENGHAPUS DATA PENYEWA               :');
		writeln(':                                                  :');
		writeln(':==================================================:');
		writeln;
		writeln('Masukan nomor pelanggan yang ingin dihapus : ');
		readln(hps);
		if ((hps <= jum) and (hps > 0)) then
			begin
	    		writeln;
	    		writeln(':=================================================:');
	    		writeln(':         DATA PENYEWA YANG AKAN DIHAPUS          :');
	    		writeln(':=================================================:');
			    writeln;
			    writeln;
	    		writeln('Nomor Pelanggan : ' ,datapenyewa[hps].id);
	    		writeln('Nama : ' ,datapenyewa[hps].nama);
	    		writeln('Nomor HP : ' ,datapenyewa[hps].noHp);
	    		writeln('Jenis Kelamin : ' ,datapenyewa[hps].jk);
	    		writeln('Tanggal Sewa : ' ,datapenyewa[hps].tglsewa);
	    		writeln('Lama Sewa : ' ,datapenyewa[hps].lamasewa);
	    		writeln('Kode Kendaraan : ' ,datapenyewa[hps].kodekend);
	    		writeln('Biaya Perhari : Rp.' ,datapenyewa[hps].biayaperhari);
	    		writeln('Biaya Total : Rp.' ,datapenyewa[hps].biayatot);
	    		writeln;
	    		writeln('Apakah Anda yakin pelanggan ke-',hps, ' sudah mengembalikan kendaraan ? [Y/T]');
	    		readln(YT);
	    		if ((YT = 'Y') or (YT ='y')) then
	        		begin
	            		datapenyewa[hps].id := 0;
   	            		datapenyewa[hps].nama := ' ';
   		    			datapenyewa[hps].noHp := ' ';
   		    			datapenyewa[hps].jk := ' ';
   		    			datapenyewa[hps].tglsewa := ' ';
   		    			datapenyewa[hps].lamasewa := 0;
   		    			datapenyewa[hps].biayaperhari := 0;
   		    			datapenyewa[hps].biayatot := 0;
   		    			for j:=1 to jum-1 do
   							begin
                            	if ((datapenyewa[hps].id=0)and(datapenyewa[hps].nama='')and(datapenyewa[hps].nohp='')and(datapenyewa[hps].jk='')and(datapenyewa[hps].tglsewa='')and(datapenyewa[hps].lamasewa=0)and(datapenyewa[hps].biayaperhari=0) and
                                   (datapenyewa[hps].biayatot=0)) then
                                	begin
   		                        		temp := datapenyewa[j];
    		                        	datapenyewa[j] := datapenyewa[j+1];
    		                        	datapenyewa[j+1] := temp;
                                	end;
    		            	end;
    		                        jum:=jum-1;
    			                	datadihapus;
    			    end
    	        else
    	        					datagagaldihapus;
                		end;
	readln;
	end;

procedure editdata;
	var
		nopel : integer;
	begin
		clrscr;
		writeln(':===================================================:');
		writeln(':                                                   :');
		writeln(':           SELAMAT DATANG DI MENU UNTUK            :');
		writeln(':               MENGEDIT DATA PENYEWA               :');
		writeln(':                                                   :');
		writeln(':===================================================:');
		writeln;
		writeln('Masukan nomor pelanggan yang ingin di edit : ');
		readln(nopel);
		if ((nopel <= jum) and (nopel > 0)) then
	   		begin
	        	writeln;
				writeln(':===================================================:');
				writeln(':          DATA PENYEWA YANG INGIN DI EDIT          :');
				writeln(':===================================================:');
        		writeln;
	    		writeln('Nomor pelanggan : ' ,datapenyewa[nopel].id);
				writeln('Nama : ' ,datapenyewa[nopel].nama);
				writeln('Nomor Hp : ' ,datapenyewa[nopel].noHp);
				writeln('Jenis kelamin : ' ,datapenyewa[nopel].jk);
				writeln('Tanggal sewa : ' ,datapenyewa[nopel].tglsewa);
				writeln('Lama sewa : ' ,datapenyewa[nopel].lamasewa);
				writeln('Kode kendaraan : ' ,datapenyewa[nopel].kodekend);
				writeln('Biaya perhari : Rp.' ,datapenyewa[nopel].biayaperhari);
				writeln('Biaya total : Rp.' ,datapenyewa[nopel].biayatot);
				writeln;
				writeln(':===================================================:');
				writeln(':                EDIT DATA PENYEWA                  :');
				writeln(':===================================================:');
				writeln;
				writeln('Nomor pelanggan ' ,datapenyewa[nopel].id);
				repeat
					write('Nama : ');
					readln(datapenyewa[nopel].nama);
				until ((datapenyewa[nopel].nama)<>'');

				repeat
					write('Nomor Hp : ');
					readln(datapenyewa[nopel].noHp);
				until ((datapenyewa[nopel].noHp)>'');

				repeat
					write('Jenis kelamin [L/P] : ');
					readln(datapenyewa[nopel].jk);
				until ((datapenyewa[nopel].jk)<>'');

	   			repeat
	   				write('Tanggal sewa [dd/mm/yy] : ');
                    readln(datapenyewa[nopel].tglsewa);
				until ((datapenyewa[nopel].tglsewa)<>'');

				repeat
					write('Lama sewa (dalam hari) : ');
					readln(datapenyewa[nopel].lamasewa);
				until ((datapenyewa[nopel].lamasewa)>=1);
				writeln;
                writeln(':==================================================:');
	   			writeln(':           DATA BERHASIL DIPERBAHARUI             :');
	   			writeln(':==================================================:');
	   		end
		else
        	begin
	    		writeln(':==================================================:');
				writeln(':	         DATA YANG DICARI BELUM ADA 	        :');
				writeln(':==================================================:');
	   		end;
	end;

procedure caridata;
	var
		temp : integer;
		search : string;
	begin
		clrscr;
		write('Masukan nama yang ingin dicari : ');
		readln(search);
		temp := caridata1(search);
		if temp <> 0 then
	   		begin
	        	writeln('Nomor pelanggan : ' ,datapenyewa[temp].id);
				writeln('Nama : ' ,datapenyewa[temp].nama);
	   			writeln('Nomor HP : ' ,datapenyewa[temp].noHp);
	   			writeln('Jenis kelamin : ' ,datapenyewa[temp].jk);
	   			writeln('Tanggal sewa : ' ,datapenyewa[temp].tglsewa);
	   			writeln('Lama sewa : ' ,datapenyewa[temp].lamasewa);
	   			writeln('Kode kendaraan : ' ,datapenyewa[temp].kodekend);
	   			writeln('Biaya perhari : Rp.' ,datapenyewa[temp].biayaperhari);
	   			writeln('Biaya total : Rp.' ,datapenyewa[temp].biayatot);
	   			readln;
	   		end
		else
	        	write('Nama yang Anda cari tidak ditemukan datanya');
	readln;
	end;

procedure pendaftarbaru;
	begin
    	if jum < nMax then
        	begin
        		jum := jum + 1;
	      		clrscr;
              	        writeln(':================================================:');
	      		writeln(':               SILAHKAN MENDAFTAR               :');
	      		writeln(':================================================:');
	      		writeln('Nomor pelanggan : ' ,jum);
	      		datapenyewa[jum].id := jum;
	      		repeat
	      			write('Nama : ');
          			readln(datapenyewa[jum].nama);
	      		until ((datapenyewa[jum].nama)<>'');
	      		repeat
	      			write('Nomor Hp : ');
		 			readln(datapenyewa[jum].noHp);
	      		until ((datapenyewa[jum].noHp)>'');
	      		repeat
	          		write('Jenis kelamin [L/P] : ');
					readln(datapenyewa[jum].jk);
	      		until ((datapenyewa[jum].jk)<>'');
	      		repeat
	           		write('Tanggal sewa [dd/mm/yy] : ');
		   			readln(datapenyewa[jum].tglsewa);
	      		until ((datapenyewa[jum].tglsewa)<>'');
	      		repeat
	           		write('Lama sewa (dalam hari) : ');
	           		readln(datapenyewa[jum].lamasewa);
	      		until((datapenyewa[jum].lamasewa)>=1);
	     		writeln;
	      		writeln('             -----------------------------------');
	      		writeln('             tekan enter untuk memilih kendaraan');
	      		writeln('             -----------------------------------');
	      		readln;
	      		pilihkendaraan();
	 		end
    	else
         	begin
	     		writeln(':==================================================:');
	     		writeln(':           Maaf, kendaraan sudah habis.           :');
	     		writeln(':             Mohon datang lain kali :)            :');
	     		writeln(':                                                  :');
	     		writeln(':                                      Terimakasih :');
	     		writeln(':==================================================:');
                        readln;
                        end;
	end;

procedure home;
	var
		pilmenu : integer;
	begin
		clrscr;
		repeat
	    	clrscr;
	    	writeln(':==================================================:');
	    	writeln(':     MENU UTAMA :                                 :');
	    	writeln(':==================================================:');
	    	writeln(':                                                  :');
	    	writeln(':  1. Menyewa kendaraan                            :');
	    	writeln(':  2. Tampilkan data                               :');
	    	writeln(':  3. Mencari data                                 :');
	    	writeln(':  4. Edit data                                    :');
	    	writeln(':  5. Hapus data                                   :');
	    	writeln(':                                                  :');
	    	writeln(':                                                  :');
	    	writeln(':  0. Keluar                                       :');
	    	writeln(':                                                  :');
	    	writeln(':==================================================:');
	    	writeln;
	    	write('Pilih nomor : ');
	    	readln(pilmenu);
	    	case pilmenu of
	    		1: pendaftarbaru;
	    		2: tampildata;
	    		3: caridata;
	    		4: editdata;
	    		5: hapusdata;
	    	end;
		until (pilmenu=0);
	end;

procedure opening();
	begin
		clrscr;
		writeln(':======================================================:');
		writeln(':                   SELAMAT DATANG DI                  :');
		writeln(':                     KAPANSAJA RENT                   :');
		writeln(':                                                      :');
		writeln(':          Dimana Anda dapat berkendara dengan         :');
		writeln(':            nyaman, tentram, aman dan damai.          :');
		writeln(':     Ingat, utamakan keselamatan, bukan kecepatan.    :');
		writeln(':                                                      :');
		writeln(':                                                      :');
		writeln(':                                                      :');
		writeln(':                                                      :');
		writeln(':                                                      :');
		writeln(':                      Pemilik Rental : Aditya Gumilar :');
		writeln(':======================================================:');
		writeln('                                                       ');
		writeln('                                                       ');
		writeln('                                                       ');
		writeln('                          -----------------------------');
		writeln('                          tekan enter untuk melanjutkan');
		writeln('                          -----------------------------');
		readln;
	end;

BEGIN
	jum := 0;
	LoadData;
	opening;
	home;
	savedata;
	readln;
END.
