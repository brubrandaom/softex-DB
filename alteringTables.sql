USE biblioteca
ALTER TABLE ALUNO ADD COLUMN DATA_NASCIMENTO VARCHAR(10);
ALTER TABLE ALUNO CHANGE COLUMN Telefone Contato VARCHAR(11);
ALTER TABLE LIVRO ADD COLUMN ISBN INT(13);
ALTER TABLE LIVRO DROP COLUMN ISBN;


