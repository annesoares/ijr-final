CREATE TABLE areas (
	area_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL
);

CREATE TABLE cargos (
	cargo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	area_id INT default NULL,
	CONSTRAINT fk_area_id_cargos
	FOREIGN KEY (area_id)
	REFERENCES areas (area_id)
);

CREATE TABLE membros (
	membro_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	sobrenome TEXT default NULL
);

CREATE TABLE membros_cargos (
	membro_id INT default NULL,
	CONSTRAINT fk_membro_id_membros_cargos
	FOREIGN KEY(membro_id)
	REFERENCES membros (membro_id),
	cargo_id INT default NULL,
	CONSTRAINT fk_cargo_id_membros_cargos
	FOREIGN KEY(cargo_id)
	REFERENCES cargos (cargo_id)
);

CREATE TABLE objetivos (
	obj_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	descr LONGTEXT default NULL
);

CREATE TABLE status (
	status_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL
);

CREATE TABLE acoes (
	acao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	descricao LONGTEXT default NULL,
	membro_resp INT default NULL,
	CONSTRAINT fk_membro_resp_acoes
	FOREIGN KEY(membro_resp)
	REFERENCES membros (membro_id),
	custo_plan INT default NULL,
	custo_atual INT default NULL,
	status INT default NULL,
	CONSTRAINT fk_status_acoes
	FOREIGN KEY(status)
	REFERENCES status (status_id),
	area_id INT default NULL,
	CONSTRAINT fk_area_id_acoes
	FOREIGN KEY (area_id)
	REFERENCES areas (area_id),
	oque TEXT default NULL,
	quando TEXT default NULL,
	onde TEXT default NULL,
	como TEXT default NULL,
	quanto TEXT default NULL,
	porque TEXT default NULL,
	quem TEXT default NULL
);

CREATE TABLE acoes_objetivos (
	acao_id INT default NULL,
	CONSTRAINT fk_acao_id_acoes_objetivos
	FOREIGN KEY(acao_id)
	REFERENCES acoes (acao_id),
	obj_id INT default NULL,
	CONSTRAINT fk_obj_id_acoes_objetivos
	FOREIGN KEY(obj_id)
	REFERENCES objetivos (obj_id)
);

CREATE TABLE atividades (
	atv_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	data_inicio DATE default NULL,
	term_plan DATE default NULL,
	term_eftv DATE default NULL,
	status INT default NULL,
	CONSTRAINT fk_status_atividades
	FOREIGN KEY(status)
	REFERENCES status (status_id),
	obs LONGTEXT default NULL,
	entr_plan DATE default NULL,
	entr_feita BOOL default NULL,
	acao_id INT default NULL,
	CONSTRAINT fk_acao_id_atividades
	FOREIGN KEY(acao_id)
	REFERENCES acoes (acao_id)
);
