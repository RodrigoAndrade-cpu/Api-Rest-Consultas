alter table consultas
    add column cancelada TINYINT not null default 0,
    add column motivo_cancelamento varchar(255);
