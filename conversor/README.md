#brAthena Conversor

Conversor de arquivos .TXT e .CONF para o formato do banco de dados SQL.

Converte a maioria dos arquivos da pasta db (com exceção dos que ainda não são utilizados via SQL).


**Modo de usar:**

1. Compile o conversor *(do mesmo modo que é compilado o login,char e map-server)*
2. Coloque o arquivo a ser convertido dentro da pasta db `(ex: brAthena/db/item_db.conf)`
3. Execute o conversor na pasta raíz do emulador
4. Se executado corretamente, você encontrará seu novo arquivo .sql na pasta `conversor/sql/`
5. Importe o arquivo convertido em seu banco de dados.


**Obs:**

O Conversor traduz automaticamente algumas tabelas, a sua tradução se encontra dentro de `conversor/data/`

Traduções suportadas atualmente:
- Nomes de itens
- Nomes de monstros
- Nomes de habilidades
- Nomes de castelos
- Chat de monstros  



**Criador:** Shiraz