alter table SAMLADDON_SAML_CONNECTION drop column KEYSTORE_ID cascade ;
alter table SAMLADDON_SAML_CONNECTION drop column KEYSTORE_LOGIN cascade ;
alter table SAMLADDON_SAML_CONNECTION drop column KEYSTORE_PASSWORD cascade ;

alter table SAMLADDON_SAML_CONNECTION add column KEYSTORE_ID uniqueidentifier ;
alter table SAMLADDON_SAML_CONNECTION add constraint FK_SAMLADDON_SAML_CONNECTION_ON_KEYSTORE foreign key (KEYSTORE_ID) references SAMLADDON_KEY_STORE(ID);
drop index IDX_SAMLADDON_SAML_CONNECTION_ON_KEYSTORE ;
alter table SAMLADDON_SAML_CONNECTION drop constraint FK_SAMLADDON_SAML_CONNECTION_ON_KEYSTORE ;
