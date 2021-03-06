CREATE DATABASE QUANLYVATNUOICAYTRONG
GO
USE QUANLYVATNUOICAYTRONG
GO
CREATE TABLE DOI_TUONG
(
	IDDOITUONG INT IDENTITY(1,1),
	TENDOITUONG NVARCHAR(20),
	IDKHUVUC CHAR(5),
	IDLOAIDOITUONG CHAR(5),
	NGAYNHAP DATE,
	NGAYXUAT DATE,
	CONSTRAINT PK_DOITUONG
	PRIMARY KEY (IDDOITUONG)
)
GO
CREATE TABLE LOAI_THUCAN_PHANBON
(
	IDLOAI CHAR(5),
	TENLOAI NVARCHAR(20),
	CONSTRAINT PK_LOAITHUCANPHANBON
	PRIMARY KEY (IDLOAI)
)
GO
CREATE TABLE LUONG_TIEU_THU
(
	IDDOITUONG INT,
	IDLOAI CHAR(5),
	SOLUONG_1NGAY INT,
	CONSTRAINT PK_LUONGTIEUTHU
	PRIMARY KEY (IDDOITUONG,IDLOAI)
)
GO
CREATE TABLE LOAI_DOI_TUONG
(
	IDLOAIDOITUONG CHAR(5) PRIMARY KEY,
	TENLOAIDOITUONG NVARCHAR(20),
)
CREATE TABLE KHU_VUC
(
	IDKHUVUC CHAR(5) PRIMARY KEY,
	TENKHUVUC NVARCHAR(20),
)
GO
CREATE TABLE NHA_CUNG_CAP
(
	IDNCC CHAR(5),
	TENNCC NVARCHAR(20),
	TENSPCUNGCAP NVARCHAR(20),
	DIACHI NVARCHAR(100),
	SDT CHAR(11),
	CONSTRAINT PK_NCC
	PRIMARY KEY(IDNCC)
)
GO
CREATE TABLE CHI_PHI_THUC_PHAN
(
	IDLOAI CHAR(5),
	IDNCC CHAR(5),
	SOLUONG INT,
	GIA_1KG INT,
	CONSTRAINT PK_CHIPHITHUCPHAN
	PRIMARY KEY(IDLOAI,IDNCC)
)
GO
CREATE TABLE CHI_PHI_DOI_TUONG
(
	IDDOITUONG INT,
	IDNCC CHAR(5),
	SOLUONG INT,
	GIA_1CON INT,
	CONSTRAINT PK_CHIPHIDOITUONG
	PRIMARY KEY(IDDOITUONG,IDNCC)
)
GO
CREATE TABLE BENH
(
	IDBENH CHAR(5),
	TENBENH NVARCHAR(50),
	DAUHIEU NVARCHAR(500),
	PHONGBENH NVARCHAR(500),
	CONSTRAINT PK_BENH
	PRIMARY KEY (IDBENH)
)
GO
CREATE TABLE TINH_TRANG_SUC_KHOE
(
	IDDOITUONG INT,
	IDBENH CHAR(5),
	TINHTRANG NVARCHAR(20),
	CHIPHICHUATRI INT,
	CONSTRAINT PK_TINHTRANGSUCKHOE
	PRIMARY KEY(IDDOITUONG,IDBENH)
)
GO
CREATE TABLE NGUON_TIEU_THU
(
	IDNHATIEUTHU CHAR(5),
	TENNHATIEUTHU NVARCHAR(20),
	SPTHUMUA NVARCHAR(20),
	DIACHI NVARCHAR(100),
	SDT CHAR(11),
	CONSTRAINT PK_NGUONTIEUTHU
	PRIMARY KEY (IDNHATIEUTHU)
	
)
GO
CREATE TABLE THU
(
	IDDOITUONG INT,
	IDNHATIEUTHU CHAR(5),
	IDSANPHAMTIEUTHU CHAR(5),
	TENSANPHAMTIEUTHU NVARCHAR(50),
	SOLUONG INT,
	GIATHANH INT,
	CONSTRAINT PK_THU
	PRIMARY KEY (IDDOITUONG,IDNHATIEUTHU,IDSANPHAMTIEUTHU)
)
--FK
--DOITUONG
ALTER TABLE dbo.DOI_TUONG
ADD CONSTRAINT FK_DT_KV
FOREIGN KEY (IDKHUVUC)
REFERENCES dbo.KHU_VUC(IDKHUVUC)

ALTER TABLE dbo.DOI_TUONG
ADD CONSTRAINT FK_DT_LDT
FOREIGN KEY (IDLOAIDOITUONG)
REFERENCES dbo.LOAI_DOI_TUONG(IDLOAIDOITUONG)
GO
--LUONGTIEUTHU
ALTER TABLE dbo.LUONG_TIEU_THU
ADD CONSTRAINT FK_LTT_DT
FOREIGN KEY (IDDOITUONG)
REFERENCES dbo.DOI_TUONG(IDDOITUONG)
GO
ALTER TABLE dbo.LUONG_TIEU_THU
ADD CONSTRAINT FK_LTT_LOAI
FOREIGN KEY (IDLOAI)
REFERENCES dbo.LOAI_THUCAN_PHANBON(IDLOAI)
GO
--CHIPHITHUCAN_PB
ALTER TABLE dbo.CHI_PHI_THUC_PHAN
ADD CONSTRAINT FK_CPTAPB_LOAI
FOREIGN KEY(IDLOAI)
REFERENCES dbo.LOAI_THUCAN_PHANBON(IDLOAI)
GO
ALTER TABLE dbo.CHI_PHI_THUC_PHAN
ADD CONSTRAINT FK_CPTAPB_NCC
FOREIGN KEY(IDNCC)
REFERENCES dbo.NHA_CUNG_CAP(IDNCC)
GO
--CHIPHI_DOITUONG
ALTER TABLE dbo.CHI_PHI_DOI_TUONG
ADD CONSTRAINT FK_CPDT_DT
FOREIGN KEY (IDDOITUONG)
REFERENCES dbo.DOI_TUONG(IDDOITUONG)
GO
ALTER TABLE dbo.CHI_PHI_DOI_TUONG
ADD CONSTRAINT FK_CPDT_NCC
FOREIGN KEY(IDNCC)
REFERENCES dbo.NHA_CUNG_CAP(IDNCC)
GO
--TINHTRANG_SUCKHOE
ALTER TABLE dbo.TINH_TRANG_SUC_KHOE
ADD CONSTRAINT FK_TTSK_DT
FOREIGN KEY (IDDOITUONG)
REFERENCES dbo.DOI_TUONG(IDDOITUONG)
GO
ALTER TABLE dbo.TINH_TRANG_SUC_KHOE
ADD CONSTRAINT FK_TTSK_BENH
FOREIGN KEY (IDBENH)
REFERENCES dbo.BENH(IDBENH)
GO
--THU
ALTER TABLE dbo.THU
ADD CONSTRAINT FK_THU_DT
FOREIGN KEY (IDDOITUONG)
REFERENCES dbo.DOI_TUONG(IDDOITUONG)
GO
ALTER TABLE dbo.THU
ADD CONSTRAINT FK_THU_TT
FOREIGN KEY (IDNHATIEUTHU)
REFERENCES dbo.NGUON_TIEU_THU(IDNHATIEUTHU)
--NHAP DU LIEU
GO
--KHU VUC
INSERT INTO dbo.KHU_VUC( IDKHUVUC, TENKHUVUC )
VALUES  ( 'KVVN1',N'KHU VỰC VẬT NUÔI 1' )
INSERT INTO dbo.KHU_VUC( IDKHUVUC, TENKHUVUC )
VALUES  ( 'KVVN2',N'KHU VỰC VẬT NUÔI 2' )
INSERT INTO dbo.KHU_VUC( IDKHUVUC, TENKHUVUC )
VALUES  ( 'KVVN3',N'KHU VỰC VẬT NUÔI 3' )
INSERT INTO dbo.KHU_VUC( IDKHUVUC, TENKHUVUC )
VALUES  ( 'KVVN4',N'KHU VỰC VẬT NUÔI 4' )
INSERT INTO dbo.KHU_VUC( IDKHUVUC, TENKHUVUC )
VALUES  ( 'KVCR',N'KHU VỰC CÂY RAU ' )
INSERT INTO dbo.KHU_VUC( IDKHUVUC, TENKHUVUC )
VALUES  ( 'KVCCC',N'KHU VỰC CÂY CHO CỦ' )
INSERT INTO dbo.KHU_VUC( IDKHUVUC, TENKHUVUC )
VALUES  ( 'KVCAQ',N'KHU VỰC CÂY ĂN QUẢ' )
GO
--LOAI DOI TUONG
INSERT INTO dbo.LOAI_DOI_TUONG( IDLOAIDOITUONG, TENLOAIDOITUONG )
VALUES  ( 'CT',N'CÂY TRỒNG')
INSERT INTO dbo.LOAI_DOI_TUONG( IDLOAIDOITUONG, TENLOAIDOITUONG )
VALUES  ( 'VN',N'VẬT NUÔI')
--LOAI_THUCAN_PHANBON
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'CO',N'CỎ'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'CAM',N'CÁM'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'LUA',N'LÚA'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'NGO',N'NGÔ'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'RAU',N'RAU'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'DAU',N'ĐẬU'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'CA',N'CÁ'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'TOM',N'TÔM'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'SAN',N'SẮN'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'TATH',N'THỨC ĂN TỔNG HỢP'  )

INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'PD',N'PHÂN ĐẠM'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'PL',N'PHÂN LÂN'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'PK',N'PHÂN KALI'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'PC',N'PHÂN CHUỒNG'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'PX',N'PHÂN XANH'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'PVS',N'PHÂN VI SINH'  )
INSERT INTO dbo.LOAI_THUCAN_PHANBON( IDLOAI, TENLOAI )
VALUES  ( 'PTH',N'PHÂN TỔNG HỢP'  )
GO
--DOITUONG
--VAT NUOI
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'HEO' ,'KVVN1' ,'VN' , '8/11/2016','8/11/2018' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'HEO' ,'KVVN1' ,'VN' , '8/11/2016','8/11/2018' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'HEO' ,'KVVN1' ,'VN' , '8/11/2016','8/11/2018' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'HEO' ,'KVVN1' ,'VN' , '8/11/2016','8/11/2018' )

INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'BÒ THỊT' ,'KVVN2' ,'VN' , '11/11/2016','11/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'BÒ THỊT' ,'KVVN2' ,'VN' , '11/11/2016','11/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'BÒ THỊT' ,'KVVN2' ,'VN' , '11/11/2016','11/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'BÒ THỊT' ,'KVVN2' ,'VN' , '11/11/2016','11/11/2020' )

INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'BÒ SỮA' ,'KVVN3' ,'VN' , '1/10/2016','1/11/2022' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'BÒ SỮA' ,'KVVN3' ,'VN' , '1/10/2016','1/11/2022' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'BÒ SỮA' ,'KVVN3' ,'VN' , '1/10/2016','1/11/2022' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'BÒ SỮA' ,'KVVN3' ,'VN' , '1/10/2016','1/11/2022' )

INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'CỪU' ,'KVVN4','VN'  , '8/11/2016','1/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'CỪU' ,'KVVN4','VN'  , '8/11/2016','1/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'CỪU' ,'KVVN4' ,'VN' , '8/11/2016','1/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'CỪU' ,'KVVN4' ,'VN' , '8/11/2016','1/11/2020' )

--CAY TRONG
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (   N'BẮP' ,'KVCCC' ,'CT' , '8/11/2016','8/3/2017' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'CÀ RỐT' ,'KVCCC','CT'  , '8/11/2016','1/2/2017' )

INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  ( N'CÀ CHUA' ,'KVCR','CT'  , '8/11/2016','1/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'RAU CẢI' ,'KVCR','CT'  , '8/11/2016','8/12/2016' )

INSERT INTO dbo.DOI_TUONG(TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'XOÀI' ,'KVCAQ' ,'CT' , '8/11/2016','1/11/2020' )
INSERT INTO dbo.DOI_TUONG( TENDOITUONG ,IDKHUVUC ,IDLOAIDOITUONG ,NGAYNHAP ,NGAYXUAT)
VALUES  (  N'NHÃN' ,'KVCAQ' ,'CT' , '8/11/2016','8/3/2020' )
GO
--TIEUTHU
INSERT INTO dbo.NGUON_TIEU_THU( IDNHATIEUTHU ,TENNHATIEUTHU ,SPTHUMUA ,DIACHI ,SDT)
VALUES  ( 'NTT1' , N'THÁI HƯNG' , N'THỊT' , N'CỦ CHI' , '01658757926' )
INSERT INTO dbo.NGUON_TIEU_THU( IDNHATIEUTHU ,TENNHATIEUTHU ,SPTHUMUA ,DIACHI ,SDT)
VALUES  ( 'NTT2' , N'VĂN TRUNG' , N'RAU CỦ' , N'NINH THUẬN' , '01666101012' )
INSERT INTO dbo.NGUON_TIEU_THU( IDNHATIEUTHU ,TENNHATIEUTHU ,SPTHUMUA ,DIACHI ,SDT)
VALUES  ( 'NTT3' , N'MINH DƯƠNG' , N'SỮA' , N'BIÊN HÒA' , '0166001256' )
INSERT INTO dbo.NGUON_TIEU_THU( IDNHATIEUTHU ,TENNHATIEUTHU ,SPTHUMUA ,DIACHI ,SDT)
VALUES  ( 'NTT4' , N'THANH TÙNG' , N'THỊT' , N'CỦ CHI' , '090305689' )
INSERT INTO dbo.NGUON_TIEU_THU( IDNHATIEUTHU ,TENNHATIEUTHU ,SPTHUMUA ,DIACHI ,SDT)
VALUES  ( 'NTT5' , N'NGỌC SƠN' , N'RAU' , N'CỦ CHI' , '01658757926' )
INSERT INTO dbo.NGUON_TIEU_THU( IDNHATIEUTHU ,TENNHATIEUTHU ,SPTHUMUA ,DIACHI ,SDT)
VALUES  ( 'NTT6' , N'CÔNG HÙNG' , N'RAU CỦ QUẢ' , N'CỦ CHI' , '01658757926' )

GO
--BENH
--VATNUOI
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES  ( 'BVN1',N'BỆNH TAI XANH',N'Khi bị nhiễm vi rút, lợn thường biếng hoặc bỏ ăn từ 7-
14 ngày, sốt trên 400C, thường sảy thai vào giai đoạn cuối, đẻ non, động đực giả, đình
dục hoặc chậm động dục trở lại sau khi đẻ, ho và viêm phổi',N'Bệnh Tai xanh không điều trị được bằng kháng sinh. Muốn phòng được bệnh dịch
tả lợn phải tiêm phòng cho lợn bằng vắc xin Tai xanh JXA1 -R nhược độc và các loại vắc xin khác như dịch tả lợn, tụ huyết trùng lợn...để hạn chế các bệnh kế phát.' )
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES  ('BVN2',N'BỆNH TỤ HUYẾT TRÙNG',N'Triệu chứng hô hấp thường xảy ra nhất với cac biểu hiện thở dốc, mệt nhọc, ấn
mạnh vào vùng ngực con vật có phản ứng đau (thở bằng miệng, thở bụng, có khi ngồi
thở như chó) ăn kém hoặc bỏ ăn hoàn toàn.Xuất hiện nhiều vết tím đỏ trên da mỏng đặc biệt vùng hầu, tai, bụng. Đôi khi còn
sưng vùng hầu, vùng da thấp phía dưới bụng thuỷ thũng.Niêm mạc tím tái, chảy nước mũi có lẫn máu, bao tim tích nước. Thường lợn chết 1-2 ngày hoặc kéo dài 5-10 ngày.',N'Vắc xin Tụ huyết trùng lợn của xí nghiệp thuốc thú y TW sản xuất là vắc xin vô
hoạt dạng nước, được chế từ canh trùng lên men trong Fermentor, kháng nguyên tụ huyết trùng týp B được chọn lọc ổn định, vắc xin có thêm chất bổ trợ để làm tăng và kéo
dài tính miễn dịch của vắc xin.Vắc xin sử dụng an toàn cho lợn mọi lứa tuổi. Liều 1ml cho mỗi lợn theo đường tiêm dưới da. Sau khi tiêm khoảng 3 tuần, con vật có miễn dịch tốt và thời gian miễn dịch kéo dài khoảng 6 tháng.')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES ('BVN3',N'BỆNH CÚM GIA CẦM',N'Ở gà: Thời gian ủ bệnh từ vài giờ đến 3 ngày, gà nhiễm trùng huyết, viêm đường hô
hấp và xuất huyết ở nội tạng và tổ chức dưới da. Gà bị nhiễm H5N1 chết nhanh, trong vòng
48 giờ tỉ lệ chết có thể lên đến 90% và trong 3 - 4 ngày sau khi nhiễm, có thể chết hết toàn
đàn. Các đàn gà nhiễm bệnh có các triệu chứng như xù lông, tiêu chảy và có âm hô hấp.
Trước khi chết gia cầm nhiễm bệnh có biểu hiện triệu chứng thần kinh gồm bại liệt và xoăn
vặn cổ.',N'Chỉ chọn mua gia cầm ở những cơ sở giống tốt, bảo đảm không có bệnh cúm.Chỉ chọn những con khoẻ mạnh, nhanh nhẹn.Chuồng nuôi bảo đảm thoáng, mát, khô, có ánh nắng mặt trời chiếu vào. Sân chơi và ao nuôi phải có hàng rào bao quanh.Chăm sóc, nuôi dưỡng tốt.')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES ('BVN4',N'BỆNH ĨA CHẢY',N'Đây là căn bệnh thường gặp ở bê, nghé non, nhất là trong giai đoạn mưa phùn ẩm ướt, thức ăn bị nhiễm khuẩn, nhất là khuẩn E. Coli và các loại gây bệnh về đường tiêu hoá. Thời gian ủ bệnh 1-3 ngày. Giai đoạn đầu sốt nhẹ, sau đó mệt mỏi, kém ăn, uống nước nhiều và ỉa phân lỏng nhiều nước và có máu, nếu nặng mất nước có thể gây tử vong.',N'Có thể dùng phối hợp thuốc Kanamycine dạng bột 1g/lọ, liều 20mg/kg trọng lượng, 2 lần/ngày phối hợp dùng Biseptone dạng viên hoặc dùng Chlogram dạng bột đã pha thành dịch cho bê, nghé uống theo liều 20mg/kg trọng lượng.')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BVN5',N'BỆNH LỠ MỒM LONG MÓNG',N'Bệnh lở mồm long móng (Foot and Mouth Disease) là căn bệnh do virus gây ra. Triệu chứng thường gặp là sốt cao (42oC), kém ăn, mụn nước phát triển ở chân, miệng (lưỡi môi và chân răng). Ban đầu mụn nhỏ sau to dần, vỡ ra tạo vết loét làm cho con vật bị long móng.',N'Cách điều trị nếu ở thể nhẹ có thể dùng thuốc sát trùng cộng với kháng sinh. Tăng cường công tác phòng bệnh, tiêm phòng cho gia súc có nguy cơ lây nhiễm bệnh cao (ít nhất mỗi năm 2 lần), vệ sinh chuồng trại, nếu bệnh phát mạnh có thể tiêu huỷ gia súc và tiêu độc chuồng trại.')

-- BENH CAY TRONG
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BCT1',N'Bệnh chết cây con',N'Nhận biết bệnh với dấu hiệu đoạn thân ngang mặt đất bị thối nhũn làm cho cây con bị gãy gục, lá cây nhiễm bệnh héo rũ. Bệnh này lây lan sẽ làm cây con chết hàng loạt.Nguồn nấm bệnh có thể tiềm ẩn trong đất hay giá thể trồng không sạch, từ đất ruộng rau trồng vụ trước ủ bệnh nhưng không được xử lý tốt gây hại cho vụ sau.',N' Hoặc dùng chế phẩm EM pha loãng 1/1.000 để ngâm hạt giống trong thời gian từ 30-60 phút nhằm thúc đẩy sự nảy mầm và ngăn ngừa mầm bệnh.Dùng phân hữu cơ vi sinh hoặc phân chuồng có bổ sung chế phẩm bột nấmTrichoderma sp. để ngăn ngừa và diệt nguồn nấm bệnh lưu tồn trong phân khi gieo ươm cây con.Vườn ươm hạt giống rau phải đảm bảo thông thoáng, có mái che mưa, chọn đất cao ráo và không bị đọng nước.')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BCT2',N'Bệnh sâu tơ hại rau',N'Sâu tơ là loài sâu hại nguy hiểm nhất đối với các loại rau cải, súp lơ... Sâu non hình ống, màu xanh nhạt. Khi mới nở, sâu gặm lá để ăn thành các đường rãnh, mới nhìn giống như những rãnh do dòi đục lá gây ra. Lớn hơn, sâu ăn ở mặt dưới của lá để lại biểu bì tạo thành các lỗ thủng mờ. Ở tuổi cuối, sâu đục thủng lá.',N'Sau khi thu hoạch phải dọn sạch tàn dư của cây, đưa ra khỏi khu vực trồng tiêu hủy.
Nên trồng xen thêm một số loại cây có mùi khó chịu như cà chua, hành, tỏi... để xua đuổi con trưởng thành đến đẻ trứng.
Tưới rau bằng vòi phun mưa vào buổi chiều mát để ngăn cản việc giao phối của con trưởng thành và rửa trôi bớt trứng, sâu non. Khi thấy mật số sâu tơ tăng nhanh phải phun thuốc diệt trừ kịp thời.')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BCT3',N'Bệnh Sâu cuốn lá',N'Sâu cuốn lá hay sâu ăn lá gây hại chủ yếu trên các loại cây họ dưa, bầu bí, cà chua và một số loại rau xanh, cây ăn quả, lúa,.... Mầm bệnh xuất hiện trứng nhỏ màu trắng nhạt nằm ở mặt dưới lá, trên đọt và lá non sau nó phát triển thành nhộng màu nâu đen thường nằm trong lá cuốn lại ăn biểu bì, lớn lên thành sâu non cắn thủng lá và cạp vỏ trái.
Sâu trưởng thành có màu xanh lá cây nhạt, trên lưng có 2 sọc trắng chạy dọc cơ thể.',N'Kiểm tra sâu hại trên cây trồng, tỉa bỏ những lá cây có ấu trùng sâu, bắt giết sâu non và nhộng.Khi phát hiện mầm bệnh cần phun một trong các loại thuốc Biocin 16WP, Cyperin, Padan 95 SP,5EC hay Sherzol vào sáng sớm hoặc chiều mát.Nếu bệnh nặng có thể dùng loại thuốc Ammate 150 SC, Regent 800WG hoặc Tango 800WG để tiêu diệt sâu hại.')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BCT4',N'Sâu đất gây hại',N'Trứng được đẻ thành ổ ở trong đất hoặc mặt dưới lá, trên thân, trên cỏ. Mầm bệnh xuất hiện trứng có hình cầu dẹt màu trắng sữa khi gần nở chuyễn màu tím sẫm, khi nở thành sâu non có màu xám sống ở trên lá cây, ăn phần mô lá tạo nên những vết thủng li ti trên bề mặt lá. Sâu trưởng thành ban ngày sống dưới mặt đất ngay dưới gốc cây, vào ban đêm chúng chui lên ăn lá non hoặc gặm xung quanh thân cây non, cắn đứt ngang thân cây kéo xuống đất đất để ăn.',N'Chú ý khâu làm đất kỹ, xử lý đất trước khi gieo trồng bằng một số loại thuốc trừ sâu dạng bột như Basudin 10G, Diaphos, Vibasu 10H, Furadan 3G, Regent 3G rãi vào đất, cày ải phơi đất 2 tuần trước khi trồng để diệt trứng và nhộng, ạn chế nguồn ký chủ phụ của sâu.
Tùy vào diện tích cây trồng có thể bắt sâu bằng tay vào buổi sáng sớm hay chiều tối bằng cách bới đất quanh gốc cây bị sâu cắn để bắt sâu')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BCT5',N'Bọ rầy, rệp gây hại',N'Các loại rầy, rệp gây hại cây trồng gồm nhiều loại vi khuẩn khác nhau như rầy nhớt, rầy mềm, rầy bông, rầy xanh, rệp sáp,... chúng đều có đặc điểm chung là loại rầy rệp chích hút nhựa cây tiết ra một số chất độc làm xung quanh chỗ bệnh có nấm màu vàng khiến lá bị khô héo, cây còi cọc. Loại bọ rầy, rệp thường gây hại ở phần rễ, thân, lá gần mặt đất. ',N'Có thể phun nước xà phòng, nước pha tỏi và ớt phun vào sáng sớm hoặc khi trời có nhiều mây. 
Phòng trừ bệnh bằng cách rãi thuốc hột vào đất trồng như Bam, Basudin hay Regent hay phun các loại thuốc như :
Actara 25 MW; Admire
Bassa 50 ND; Baythroit,
Confidor 100 SL
Sumi-alpha; Sumithion; Sumicidin
Oncol 20ND
Pa dan 95SP; Pegas 500SC')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BCT6',N'Bọ dưa gây hại',N'Bọ dưa phát triển gây hại nhiều vào mùa khô, chúng thường phá hại vào sáng sớm và chiều tối, ban ngày trời nắng ẩn dưới tán lá hoặc trong đất. Trứng đẻ rải rác trên mặt đất quanh gốc cây ăn rễ và cắn gốc cây kể cả khi cây đã lớn, làm cây sinh trưởng kém. Mật độ bọ cao có thể làm cây trồng trụi hết lá và đọt non, cây phát triển kém hoặc chết.',N'Tỉa bỏ những lá có dính ấu trùng bọ dưa, thường xuyên kiểm tra cây trồng vào buổi sáng sớm để bắt sâu bọ.
Dùng vợt xua đuổi để bắt bọ trưởng thành.
Rải các loại thuộc dạng hạt như Diaphos 10G, Basudin 10H, Vicarp 4H quanh gốc cây trước thời điểm cây ra hoa để phòng bệnh bọ dưa xuất hiện.
Phát hiện bọ gây hại có thể dùng một trong các loại thuốc phun thuốc như Sherpa, Dragon, Polytrin, Lorsban phun vào sáng sớm hoặc chiều tối.')
INSERT INTO dbo.BENH( IDBENH, TENBENH, DAUHIEU, PHONGBENH )
VALUES('BCT7',N'Bọ hung gây hại',N'Bọ hung là loại côn trùng cánh cứng có màu xám cánh dán, loài này hình thành từ ấu trùng trứng phát triển thành sâu non nằm trong đất cho đến khi trưởng thành bọ gây hại cho các loại cây trồng như bầu, bí, dưa leo, cà tím,... các loại rau củ và các loại cây ăn quả.

Bọ hung gây hại tập trung ở bộ phận lá non, chúng gặm phần lá chỉ còn gân lá làm cho lá cây bị khô xoắn khiến cây bị rụng lá không phát triển được. ',N'Do bọ hung nâu nằm dưới lòng đất nên chú ý đến khâu làm đất. Nên xử lý đất bằng các loại thuốc như Basudin 10H - 10G, Diazan 10H, Regent 3G hoặc Vibasu 10H trước khi trồng sẽ giúp ngăn ngừa bọ hung trưởng thành phá hại cây trồng.
Làm cỏ, vệ sinh vườn trồng thông thoáng. 
Nếu phát hiện bệnh nặng, có thể sử dụng một trong các loại thuốc phun đều hết các lá cây.')
GO
--NCC
INSERT INTO dbo.NHA_CUNG_CAP( IDNCC ,TENNCC ,TENSPCUNGCAP ,DIACHI ,SDT)
VALUES  ( 'NCC1' , N'VĂN TRUNG 1' ,N'PHỤ PHẨM CHĂN NUÔI' , N'785 NGUYỄN KIỆM- HỒ CHÍ MINH' , '016689783' )
--
--danh sach vat nuoi cay trong
SELECT DT.IDDOITUONG AS N'ID' FROM dbo.DOI_TUONG DT WHERE DT.IDLOAIDOITUONG ='VN'