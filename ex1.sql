create table if not exists tipos_produtos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  descricao TEXT NOT NULL
);

-- TEXT = VRCHAR, REAL = DECIMAL  E INTEGER = INT
create table if not exists produtos (
  id  INTEGER PRIMARY KEY AUTOINCREMENT,
  descricao TEXT NOT NULL,
  preco REAL NOT NULL,
  id_tipo_produto INTEGER REFERENCES tipos_produtos(id) NOT NULL
);

-- NÃO TEM CAMPO DATA, LOGO É TEXT
create table if not exists pacientes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  endereco TEXT NOT NULL,
  bairro TEXT NOT NULL,
  cidade TEXT NOT NULL,
  estado TEXT NOT NULL,
  cep TEXT NOT NULL,
  dt_nascimento TEXT NOT NULL
);

create table if not exists professor (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  telefone INTEGER NOT NULL,
  nome TEXT NOT NULL
);

create table if not exists turma (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  capacidade INTEGER NOT NULL,
  id_professor INTEGER REFERENCES professor(id) NOT NULL
);




