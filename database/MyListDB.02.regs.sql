-- Tabelas de domínio

INSERT INTO public.datatype ("Id", "Name") VALUES (1, 'Boolean');
INSERT INTO public.datatype ("Id", "Name") VALUES (2, 'Char');
INSERT INTO public.datatype ("Id", "Name") VALUES (3, 'Integer');
INSERT INTO public.datatype ("Id", "Name") VALUES (4, 'Decimal');
INSERT INTO public.datatype ("Id", "Name") VALUES (5, 'Datetime');

-- Massa para testes

INSERT INTO public.list ("Id", "Name") VALUES (1, 'Músicas');

INSERT INTO public.property ("ListId", "PropertySeq", "Name", "DataTypeId", "FieldName")  VALUES (1, 1, 'Nome', 2, 'FieldChar01');
INSERT INTO public.property ("ListId", "PropertySeq", "Name", "DataTypeId", "FieldName")  VALUES (1, 2, 'Lancamento', 5, 'FieldDatetime01');
INSERT INTO public.property ("ListId", "PropertySeq", "Name", "DataTypeId", "FieldName")  VALUES (1, 3, 'Instrumental', 1, 'FieldBoolean01');
