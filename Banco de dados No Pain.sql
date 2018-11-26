-- Table: no_pain.usuario

-- DROP TABLE no_pain.usuario;

CREATE TABLE no_pain.usuario
(
  nm_nome character varying,
  ds_senha character varying,
  ds_email character varying,
  nick_name character varying,
  cd_usuario integer NOT NULL,
  tp_tipo_usuario smallint, -- 0 = admin...
  endereco_cd_endereco integer,
  CONSTRAINT pk_usuario PRIMARY KEY (cd_usuario),
  CONSTRAINT fk_endereco_usuario FOREIGN KEY (endereco_cd_endereco)
      REFERENCES no_pain.endereco (cd_endereco) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE no_pain.usuario
  OWNER TO postgres;
COMMENT ON COLUMN no_pain.usuario.tp_tipo_usuario IS '0 = admin
1 = farmacia
2 = usuário pessoa física';


-- Index: no_pain.fki_endereco_usuario

-- DROP INDEX no_pain.fki_endereco_usuario;

CREATE INDEX fki_endereco_usuario
  ON no_pain.usuario
  USING btree
  (endereco_cd_endereco);

