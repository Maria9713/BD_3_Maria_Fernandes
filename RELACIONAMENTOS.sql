ALTER TABLE tbl_sala ADD CONSTRAINT fk_especialidade
FOREIGN KEY (cod_especialidades)
REFERENCES tbl_especialidades (cod_especialidades);

#relacionamento  tbl_paciente e a tbl_insumos
ALTER TABLE tbl_insumos ADD CONSTRAINT fk_paciente
FOREIGN KEY (cod_paciente)
REFERENCES tbl_paciente(cod_paciente);

#relacionamento  tbl_medico e a tbl_especialidade
ALTER TABLE tbl_medico ADD CONSTRAINT fk_medico_especialidade
FOREIGN KEY (cod_especialidades)
REFERENCES tbl_especialidades (cod_especialidades);

##### RELACIONAMENTOS DA TABELA DE AGENDA #####
ALTER TABLE tbl_agenda ADD CONSTRAINT fk_agenda_sala
FOREIGN KEY (cod_sala)
REFERENCES tbl_sala (cod_sala);

ALTER TABLE tbl_agenda ADD CONSTRAINT fk_agenda_medico
FOREIGN KEY (cod_medico)
REFERENCES tbl_medico (cod_medico);

ALTER TABLE tbl_agenda ADD CONSTRAINT fk_agenda_paciente
FOREIGN KEY (cod_paciente)
REFERENCES tbl_paciente (cod_paciente);