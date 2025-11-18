use sekolah;

delimiter $$
create procedure sp_cari_agama(
in m_nama_agama varchar(11)
)
begin
select Nama, Jumlah
from vw_jml_agama_siswa
where Nama = m_nama_agama;
end $$
delimiter ;