-- Criação da tabela Marca
CREATE TABLE Marca (
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255)
);

-- Inserção de 10 registros na tabela Marca
INSERT INTO Marca (nome)
VALUES
    ('Marca 1'),
    ('Marca 2'),
    ('Marca 3'),
    ('Marca 4'),
    ('Marca 5'),
    ('Marca 6'),
    ('Marca 7'),
    ('Marca 8'),
    ('Marca 9'),
    ('Marca 10');

-- Criação da tabela Produto
CREATE TABLE Produto (
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255),
    preco_custo decimal(8,2),
    preco_venda decimal(8,2),
    lucro decimal(8,2),
    fk_marca int,
    FOREIGN KEY (fk_marca) REFERENCES Marca(id)
);

-- Inserção de 10 registros na tabela Produto
INSERT INTO Produto (nome, preco_custo, preco_venda, lucro, fk_marca)
VALUES
    ('Produto 1', 5.00, 10.00, 5.00, 1),
    ('Produto 2', 7.00, 15.00, 8.00, 2),
    ('Produto 3', 8.00, 18.00, 10.00, 3),
    ('Produto 4', 6.00, 12.00, 6.00, 4),
    ('Produto 5', 10.00, 20.00, 10.00, 5),
    ('Produto 6', 12.00, 25.00, 13.00, 6),
    ('Produto 7', 9.00, 18.00, 9.00, 7),
    ('Produto 8', 11.00, 24.00, 13.00, 8),
    ('Produto 9', 7.00, 14.00, 7.00, 9),
    ('Produto 10', 8.00, 16.00, 8.00, 10);


RESPONDENDO A PERGUNTA UM PODEMOS UTILIZAR DESTA FORMA 
    
    DELIMITER //
CREATE PROCEDURE realProdutos()
BEGIN
    SELECT Produto.*, Marca.nome 
    FROM Produto 
    LEFT JOIN Marca ON Produto.fk_marca = Marca.id;
END;
//
DELIMITER ;


