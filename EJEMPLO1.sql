create table auditoria (
    id int primary key,
    descripcion varchar(100),
    fecha datetime
    );

    create procedure registra_auditoria(
        begin
            insert into auditoria (descripcion, fecha) values (descripcion, fecha)
            values('Auditoria de la base de datos',now());
            end;
        );