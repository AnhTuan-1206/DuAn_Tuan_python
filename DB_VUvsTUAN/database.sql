CREATE TABLE danhmuc (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_danhmuc VARCHAR(100) NOT NULL,
    mo_ta TEXT
);
CREATE TABLE sanpham (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_sanpham VARCHAR(150) NOT NULL,
    mo_ta TEXT,
    gia DECIMAL(12,0),
    gia_giam DECIMAL(12,0),
    dung_tich VARCHAR(50),
    trong_luong VARCHAR(50),
    so_luong INT DEFAULT 0,
    hinh_anh VARCHAR(255),
    id_danhmuc INT,
    FOREIGN KEY (id_danhmuc) REFERENCES danhmuc(id)
);
INSERT INTO danhmuc (ten_danhmuc, mo_ta) VALUES
('Thuốc', 'Các loại thuốc chữa bệnh'),
('Thực phẩm chức năng', 'Sản phẩm bổ sung dinh dưỡng'),
('Dược mỹ phẩm', 'Mỹ phẩm có công dụng chăm sóc da'),
('Chăm sóc cá nhân', 'Các sản phẩm chăm sóc cá nhân'),
('Chăm sóc trẻ em', 'Sản phẩm dành cho trẻ nhỏ');
INSERT INTO sanpham (ten_sanpham, mo_ta, gia, gia_giam, dung_tich, trong_luong, so_luong, hinh_anh, id_danhmuc) VALUES
('Nước muối Vietrue sát khuẩn, súc miệng', 'Dung tích 500ml', 7000, 4900, '500ml', NULL, 100, 'vietrue.jpg', 4),
('Ensure Gold hương Vani', 'Thực phẩm dinh dưỡng Y học 800g', 932000, 845000, NULL, '800g', 50, 'ensure_gold.jpg', 2),
('Sữa bột Anlene Gold hương Vani', 'Dành cho người trên 40 tuổi', 555000, 480000, NULL, '800g', 30, 'anlene_gold.jpg', 2),
('Costar Omega 3', 'Lọ 365 viên dầu cá', 972000, 729000, NULL, NULL, 25, 'costar_omega3.jpg', 2);