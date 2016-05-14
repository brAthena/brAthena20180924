/*******************************
* brA Conversor TXT para SQL
* Autor:	Shiraz
* Data:		22/10/2012
* Rev:		13/05/2016
********************************/

#include "common/cbasetypes.h"
#include "common/core.h"
#include "common/memmgr.h"
#include "common/showmsg.h"
#include "common/utils.h"
#include "common/strlib.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef _WIN32
#include <unistd.h>
#endif

#define DATADIR "conversor/data/"
#define OUTPUTDIR "conversor/sql/"

// Função de suporte ao console.
void cmdline_args_init_local(void) {}

// Tradução de tabelas
struct data {
	char name[1024];
};

struct data item_data[0x8000];
struct data mob_data[0x2710];
struct data skill_data[0x271F];
struct data castle_data[34];
struct data chat_mob_data[40];

// Variável para contagem dos arquivos convertidos.
static unsigned int file_count;

// Escapa uma string para evitar erros de SQL.
char *escape_str(char *str)
{
	char *new_str;
	char *source, *target;
	char *end;
	int new_length;
	int length = strlen(str);

    if (length == 0) {
		char *p = (char *)malloc(1);
		if (p == NULL)
			return p;
		p[0] = 0;
		return p;
    }

	new_str = (char *)malloc(2 * length + 1);
	if (new_str == NULL)
        return new_str;
	source = str;
	end = source + length;
	target = new_str;

	while (source < end) {
		switch (*source) {
			case '\0':
				*target++ = '\\';
				*target++ = '0';
				break;
			case '\'':
			case '\"':
			case '\\':
				*target++ = '\\';
			default:
				*target++ = *source;
				break;
		}
		source++;
	}

	*target = 0;
	new_length = target - new_str;
	new_str = (char *)realloc(new_str, new_length + 1);
	return new_str;
}

// Retorna uma matriz de strings, cada uma como substring.
int explode(char ***arr_ptr, char *str, char delimiter)
{
	char *src = str, *end, *dst;
	char **arr;
	int size = 1, i;

	while ((end = strchr(src, delimiter)) != NULL) {
		++size;
		src = end + 1;
	}

	arr = malloc(size * sizeof(char *) + (strlen(str) + 1) * sizeof(char));

	src = str;
	dst = (char *)arr + size * sizeof(char *);
	for (i = 0; i < size; i++) {
		if ((end = strchr(src, delimiter)) == NULL)
			end = src + strlen(src);
		arr[i] = dst;
		strncpy(dst, src, end - src);
		dst[end - src] = '\0';
		dst += end - src + 1;
		src = end + 1;
	}
	*arr_ptr = arr;

	return size;
}

// Retorna uma string ou um array com todas as ocorrências de char *str.
char *replace_str(char *str, char *orig, char *rep)
{
	static char buffer[4096];
	char *p;

	if (!(p = strstr(str, orig)))
		return str;

	strncpy(buffer, str, p-str);
	buffer[p-str] = '\0';

	sprintf(buffer+(p-str), "%s%s", rep, p+strlen(orig));
	return buffer;
}

// Remove caracteres de uma string.
void strip_char(char *str, char strip)
{
	int count = 0, i;

	for (i = 0; str[i]; i++)
		if (str[i] != strip)
			str[count++] = str[i];

	str[count] = '\0';
}

// Formata funções de script para SQL.
char *parse_script(char *str)
{
	int i;

	for (i = 0; str[i]; i++) {
		if (str[i] == '\n' || str[i] == '	')
			str[i] = ' ';
	}

	return escape_str(str);
}

// Retorna o nome do item conforme arquivo de tradução.
char *getitemname(int item_id)
{
	if (!strlen(item_data[item_id].name))
		return NULL;

	return escape_str(item_data[item_id].name);
}

// Retorna o nome do monstro conforme arquivo de tradução.
char *getmobname(int mob_id)
{
	if (!strlen(mob_data[mob_id].name))
		return NULL;

	return escape_str(mob_data[mob_id].name);
}

// Retorna o nome de uma habilidade conforme arquivo de tradução.
char *getskillname(int skill_id)
{
	if (!strlen(skill_data[skill_id].name))
		return NULL;

	return escape_str(skill_data[skill_id].name);
}

// Retorna o nome de um castelo conforme arquivo de tradução.
char *getcastlename(int castle_id)
{
	if (!strlen(castle_data[castle_id].name))
		return NULL;

	return escape_str(castle_data[castle_id].name);
}

// Retorna a mensagem de um monstro conforme arquivo de tradução.
char *getchatname(int line_id)
{
	if (!strlen(chat_mob_data[line_id].name))
		return NULL;

	return escape_str(chat_mob_data[line_id].name);
}

// Reaproveitamento de Tradução
// http://tools.brathena.org
void translation(void) {
	char line[1024];
	FILE *fp;

	memset(item_data, 0, sizeof(item_data));
	memset(mob_data, 0, sizeof(mob_data));
	memset(skill_data, 0, sizeof(skill_data));
	memset(castle_data, 0, sizeof(castle_data));
	memset(chat_mob_data, 0, sizeof(chat_mob_data));

	if ((fp = fopen(DATADIR"item_name.txt", "r"))) {
		while (fgets(line, sizeof(line), fp) != NULL) {
			char **rows, *str = line;

			if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
				continue;

			line[strlen(line)-1] = '\0';
			explode(&rows, str, ',');
			strncpy(item_data[atoi(rows[0])].name, rows[1], sizeof((*item_data).name));
		}
		fclose(fp);
	}

	if ((fp = fopen(DATADIR"mob_name.txt", "r"))) {
		while (fgets(line, sizeof(line), fp) != NULL) {
			char **rows, *str = line;

			if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
				continue;

			line[strlen(line)-1] = '\0';
			explode(&rows, str, ',');
			strncpy(mob_data[atoi(rows[0])].name, rows[1], sizeof((*mob_data).name));
		}
		fclose(fp);
	}

	if ((fp = fopen(DATADIR"skill_name.txt", "r"))) {
		while (fgets(line, sizeof(line), fp) != NULL) {
			char **rows, *str = line;

			if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
				continue;

			line[strlen(line)-1] = '\0';
			explode(&rows, str, ',');
			strncpy(skill_data[atoi(rows[0])].name, rows[1], sizeof((*skill_data).name));
		}
		fclose(fp);
	}

	if ((fp = fopen(DATADIR"castle_name.txt", "r"))) {
		while (fgets(line, sizeof(line), fp) != NULL) {
			char **rows, *str = line;

			if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
				continue;

			line[strlen(line)-1] = '\0';
			explode(&rows, str, ',');
			strncpy(castle_data[atoi(rows[0])].name, rows[1], sizeof((*castle_data).name));
		}
		fclose(fp);
	}

	if ((fp = fopen(DATADIR"mob_chat_name.txt", "r"))) {
		while (fgets(line, sizeof(line), fp) != NULL) {
			char **rows, *str = line;

			if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
				continue;

			line[strlen(line)-1] = '\0';
			explode(&rows, str, ',');
			strncpy(chat_mob_data[atoi(rows[0])].name, rows[1], sizeof((*chat_mob_data).name));
		}
		fclose(fp);
	}
}

// Converte o arquivo abra_db.txt para SQL.
void convert_abra_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/abra_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"abra_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char **rows, *str = line, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		explode(&rows, str, ',');

		for (i = 0; i < 4; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}
			
			if (i == 1)
				if (getskillname(atoi(rows[0])))
					rows[i] = getskillname(atoi(rows[0]));			

			pos += ((i == 1)) ? sprintf(pos, "'%s'", rows[i]) : sprintf(pos, "%d", atoi(rows[i]));
		}

		snprintf(write, sizeof(write), "REPLACE INTO abra_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo castle_db.txt para SQL.
void convert_castle_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/castle_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"castle_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char **rows, *str = line, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		explode(&rows, str, ',');

		for (i = 0; i < 5; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			if (i == 2)
				if (getcastlename(atoi(rows[0])))
					rows[i] = getcastlename(atoi(rows[0]));

			pos += ((i >= 1 && i <= 3)) ? sprintf(pos, "'%s'", escape_str(rows[i])) : sprintf(pos, "%d", atoi(rows[i]));
		}

		snprintf(write, sizeof(write), "REPLACE INTO castle_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", "db/castle_db.txt", count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo create_arrow_db.txt para SQL.
void convert_create_arrow_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/create_arrow_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"create_arrow_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 11; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO create_arrow_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", "db/create_arrow_db.txt", count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo elemental_db.txt para SQL.
void convert_elemental_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/elemental_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"elemental_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 26; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 1 || i == 2) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO elemental_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo elemental_skill_db.txt para SQL.
void convert_elemental_skill_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/elemental_skill_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"elemental_skill_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 4; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 3) ? sprintf(pos, "%d", atoi(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO elemental_skill_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo guild_skill_tree.txt para SQL.
void convert_guild_skill_tree_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/guild_skill_tree.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"guild_skill_tree.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 12; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 11) ? sprintf(pos, "%d", atoi(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO guild_skill_tree_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo homunculus_db.txt para SQL.
void convert_homunculus_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/homunculus_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"homunculus_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 50; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 2) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO homunculus_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo homun_skill_tree.txt para SQL.
void convert_homun_skill_tree_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/homun_skill_tree.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"homun_skill_tree.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 14; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 13) ? sprintf(pos, "%d", atoi(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO homun_skill_tree_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mercenary_db.txt para SQL.
void convert_mercenary_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mercenary_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mercenary_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 26; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += ((i == 1 || i == 2)) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mercenary_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mercenary_skill_db.txt para SQL.
void convert_mercenary_skill_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mercenary_skill_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mercenary_skill_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 2) ? sprintf(pos, "%d", atoi(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mercenary_skill_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_avail.txt para SQL.
void convert_mob_avail_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_avail.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_avail.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 12; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_avail VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_chat_db.txt para SQL.
void convert_mob_chat_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_chat_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_chat_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char **rows, *str = line, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		explode(&rows, str, ',');

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}
			
			if (i == 2)
				if (getchatname(atoi(rows[0])))
					rows[i] = getchatname(atoi(rows[0]));

			pos += (i == 2) ? sprintf(pos, "'%s'", escape_str(rows[i])) : sprintf(pos, "%s", rows[i]);
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_chat_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_classchange.txt para SQL.
void convert_mob_classchange_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_classchange.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_classchange.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 1) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_classchange_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_item_ratio.txt para SQL.
void convert_mob_item_ratio_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_item_ratio.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_item_ratio.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_item_ratio_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo pet_db.txt para SQL.
void convert_pet_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/pet_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"pet_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, **script, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		explode(&script, (char *)line, '{');
		token = strtok(line, ",");

		for (i = 0; i < 22; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			if (i < 20)
				pos += ((i == 1 || i == 2)) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			else
				pos += (i == 21) ? sprintf(pos, "'{%s'", escape_str(script[2])) : sprintf(pos, "'{%s'", replace_str(escape_str(script[1]), "},", "}"));

			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO pet_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo produce_db.txt para SQL.
void convert_produce_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/produce_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"produce_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 28; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO produce_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_changematerial_db.txt para SQL.
void convert_skill_changematerial_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_changematerial_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_changematerial_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 12; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO skill_changematerial_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_improvise_db.txt para SQL.
void convert_skill_improvise_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_improvise_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_improvise_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 2; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO skill_improvise_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_reproduce_db.txt para SQL.
void convert_skill_reproduce_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0;

	sprintf(path, "%s", "db/skill_reproduce_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_reproduce_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char write[1024];

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';

		snprintf(write, sizeof(write), "REPLACE INTO skill_reproduce_db VALUES(%d);\n", atoi(line));
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo spellbook_db.txt para SQL.
void convert_spellbook_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/spellbook_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"spellbook_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO spellbook_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo quest_db.txt para SQL.
void convert_quest_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/quest_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"quest_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 18; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 17) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO quest_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo const.txt para SQL.
void convert_const_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0;

	sprintf(path, "%s", "db/const.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"const_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char write[1024], name[1024], val[1024];
		int type = 0;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';

		if(sscanf(line,"%1023[A-Za-z0-9/_],%1023[A-Za-z0-9/_-],%d",name,val,&type)>=2 ||
		   sscanf(line,"%1023[A-Za-z0-9/_] %1023[A-Za-z0-9/_-] %d",name,val,&type)>=2){
			if(type)
				snprintf(write, sizeof(write), "REPLACE INTO const_db VALUES('%s','%s',%d);\n", name, val, type);
			else
				snprintf(write, sizeof(write), "REPLACE INTO const_db VALUES('%s','%s',%d);\n", name, val, 0);
			fprintf(fwrite, write);
			count++;
		}
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo job_db2.txt para SQL.
void convert_job_db2(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0;

	sprintf(path, "%s", "db/job_db2.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"job_db2.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';

		fprintf(fwrite, "REPLACE INTO job_db2 VALUES('%s');\n", line);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo sc_config.txt para SQL.
void convert_sc_config(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/sc_config.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"sc_config.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 2; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 0) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO sc_config VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo size_fix.txt para SQL.
void convert_size_fix_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/size_fix.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"size_fix_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 24; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO size_fix_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo item_combo_db.txt para SQL.
void convert_item_combo_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0;

	sprintf(path, "%s", "db/item_combo_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"item_combo_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, write[1024], *row[2];

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = line;

		while (isspace(*token))
			++token;

		row[0] = token;
		token = strchr(token,',');

		*token = '\0';
		token += 1;
		row[1] = escape_str(token);

		snprintf(write, sizeof(write), "REPLACE INTO item_combo_db VALUES('%s','%s');\n", row[0], row[1]);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_boss.txt para SQL.
void convert_mob_boss_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_boss.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_boss_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 1) ? sprintf(pos, "'%s'", escape_str(token)): sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_boss_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_branch.txt para SQL.
void convert_mob_branch_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_branch.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_branch_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 1) ? sprintf(pos, "'%s'", escape_str(token)): sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_branch_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_poring.txt para SQL.
void convert_mob_poring_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_poring.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_poring_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 1) ? sprintf(pos, "'%s'", escape_str(token)): sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_poring_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_race2_db.txt para SQL.
void convert_mob_race2_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_race2_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_race2_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 10; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_race2_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", "db/mob_race2_db.txt", count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_cast_db.txt para SQL.
void convert_skill_cast_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_cast_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_cast_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 8; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i) ? sprintf(pos, "'%s'", token) : sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO skill_cast_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", "db/skill_cast_db.txt", count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_castnodex_db.txt para SQL.
void convert_skill_castnodex_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_castnodex_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_castnodex_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 3; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO skill_castnodex_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_db.txt para SQL.
void convert_skill_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char **rows, *str = line, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		explode(&rows, str, ',');

		for (i = 0; i < 17; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			if (i == 16)
				if (getskillname(atoi(rows[0])))
					rows[i] = getskillname(atoi(rows[0]));

			pos += (i == 1 || i >= 4) ? sprintf(pos, "'%s'", escape_str(rows[i])) : sprintf(pos, "%s", rows[i]);
		}

		strip_char(buf, '\t');

		snprintf(write, sizeof(write), "REPLACE INTO skill_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_nocast_db.txt para SQL.
void convert_skill_nocast_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_nocast_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_nocast_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 2; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO skill_nocast_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_require_db.txt para SQL.
void convert_skill_require_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_require_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_require_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; token != NULL; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += ((i > 0 && i <= 5) || i == 7 || (i >= 9 && i <= 11)) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO skill_require_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_tree.txt para SQL.
void convert_skill_tree_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_tree.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_tree_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 13; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO skill_tree_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo skill_unit_db.txt para SQL.
void convert_skill_unit_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/skill_unit_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"skill_unit_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, **last, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 8; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			if (i > 0 && i < 7)
				pos += sprintf(pos, "'%s'", token);
			else if(i == 0)
				pos += sprintf(pos, "%d", atoi(token));
			else {
				explode(&last, token, '/');
				pos += sprintf(pos, "'%s'", last[0]);				
			}

			token = strtok(NULL, ",");
		}

		strip_char(buf, ' ');
		strip_char(buf, '\t');

		snprintf(write, sizeof(write), "REPLACE INTO skill_unit_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo exp_guild.txt para SQL.
void convert_exp_guild_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0;

	sprintf(path, "%s", "db/exp_guild.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"exp_guild_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';

		fprintf(fwrite, "REPLACE INTO exp_guild_db VALUES(%d);\n", atoi(line));
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo exp_homun.txt para SQL.
void convert_exp_homun_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0;

	sprintf(path, "%s", "db/exp_homun.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"exp_homun_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';

		fprintf(fwrite, "REPLACE INTO exp_homun_db VALUES(%d);\n", atoi(line));
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo statpoint.txt para SQL.
void convert_statpoint_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0;

	sprintf(path, "%s", "db/statpoint.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"statpoint_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';

		fprintf(fwrite, "REPLACE INTO statpoint_db VALUES(%d);\n", atoi(line));
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo refine_db.txt para SQL.
void convert_refine_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/refine_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"refine_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; token != NULL; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += ((i <= 3)) ? sprintf(pos, "%d", atoi(token)) : sprintf(pos, "'%s'", escape_str(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO refine_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_db.txt para SQL.
void convert_mob_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char **rows, *str = line, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		explode(&rows, str, ',');

		for (i = 0; i < 57; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}
			
			if (rows[i] == NULL)
				rows[i] = 0;
			
			if (i > 1 && i <= 3)
				if (getmobname(atoi(rows[0])))
					rows[i] = getmobname(atoi(rows[0]));

			pos += ((i == 0 || (i > 3 && i != 25))) ? sprintf(pos, "%d", atoi(rows[i])) : sprintf(pos, (i == 25) ? "%s" : "'%s'", escape_str(rows[i]));
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Converte o arquivo mob_skill_db.txt para SQL.
void convert_mob_skill_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/mob_skill_db.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"mob_skill_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char **rows, *str = line, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		explode(&rows, str, ',');

		for (i = 0; i < 19; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			if (i > 0)
				pos += (rows[i] == NULL || !strlen(rows[i])) ? sprintf(pos, "%s", (i == 7) ? "'0'" : "NULL") : (i >= 12 && i <= 16) ? sprintf(pos, "%s", escape_str(rows[i])) : sprintf(pos, "'%s'", escape_str(rows[i]));
			else
				pos += sprintf(pos, "%d", atoi(rows[i]));
		}

		snprintf(write, sizeof(write), "REPLACE INTO mob_skill_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

char *item_parse_i32(config_setting_t *it, char *field, char *pos, char *tip) {
	char *ret = pos;
	int i = 0;

	if (config_setting_lookup_int(it, field, &i))
		ret += sprintf(ret, "%d,", i);
	else
		ret += sprintf(ret, "%s,", tip);

	return ret;
}

char *item_parse_i32_(config_setting_t *it, char *field, char *pos) {
	char *ret = pos;
	int i = 0;

	if (config_setting_lookup_int(it, field, &i) && i >= 0)
		ret += sprintf(ret, "%d,", i);
	else
		ret += sprintf(ret, "NULL,");

	return ret;
}

char *item_parse_job(config_setting_t *it, char *field, char *pos) {
	char *ret = pos;
	int i = 0;

	if (config_setting_lookup_int(it, field, &i))
		ret += sprintf(ret, "0x%"PRIXS",", (unsigned int)i);
	else
		ret += sprintf(ret, "0x%"PRIXS",", UINT_MAX);

	return ret;
}

char *item_parse_gender(config_setting_t *it, char *field, char *pos) {
	char *ret = pos;
	int i = 0;

	if (config_setting_lookup_int(it, field, &i) && i >= 0)
		ret += sprintf(ret, "%d,", i);
	else
		ret += sprintf(ret, "2,");

	return ret;
}

char *item_parse_str(config_setting_t *it, char *field, char *pos) {
	char *ret = pos, *str = NULL;

	if (config_setting_lookup_string(it, field, &str))
		ret += sprintf(ret, "'%s',", escape_str(str));
	else
		ret += sprintf(ret, "NULL,");

	return ret;
}

char *item_parse_bool(config_setting_t *it, char *field, char *pos) {
	char *ret = pos;
	int i = 0;

	if ((it = config_setting_get_member(it, field)))
		ret += sprintf(ret, "%d,", (config_setting_get_bool(it) ? 1 : 0));
	else
		ret += sprintf(ret, "NULL,");

	return ret;
}

char *item_parse_script(config_setting_t *it, char *field, char *pos, bool coma) {
	char *ret = pos, *str = NULL;

	if (config_setting_lookup_string(it, field, &str))
		ret += sprintf(ret, "'%s'%c", parse_script(str), (coma) ? ',' : '\0');
	else
		ret += sprintf(ret, "''%c", (coma) ? ',' : '\0');

	return ret;
}

char *item_parse_name(config_setting_t *it, char *field, char *pos) {
	char *ret = pos, *str = NULL;
	int id = 0;
	
	if (config_setting_lookup_int(it, "Id", &id) && id >= 0) {
		if ((str = getitemname(id)) != NULL)
			ret += sprintf(ret, "'%s',", str);
		else if (config_setting_lookup_string(it, field, &str))
			ret += sprintf(ret, "'%s',", escape_str(str));
		else
			ret += sprintf(ret, "NULL,");
	}

	return ret;
}

// Converte o arquivo item_db.conf para SQL.
void convert_item_db(void)
{
	const char *filename = "item_db.conf";
	char filepath[256];
	config_setting_t *itdb, *it;
	config_t item_db_conf;
	FILE *fwrite;
	int i = 0, count = 0;
	
	sprintf(filepath, "%s/%s", "db", filename);
	config_init(&item_db_conf);

	if (!config_read_file(&item_db_conf, filepath) || !(itdb = config_setting_get_member(item_db_conf.root, "item_db"))) {
		config_destroy(&item_db_conf);
		return;
	}

	fwrite = fopen(OUTPUTDIR"item_db.sql", "w+");

	while ((it = config_setting_get_elem(itdb, i++))) {
		char buf[2048], write[2048], *pos = buf;
		config_setting_t *t = NULL;

		// Item ID
		pos = item_parse_i32(it, "Id", pos, "NULL");
		// AegisName
		pos = item_parse_str(it, "AegisName", pos);
		// Name
		pos = item_parse_name(it, "Name", pos);
		// Type
		pos = item_parse_i32(it, "Type", pos, "3");
		// Buy
		pos = item_parse_i32(it, "Buy", pos, "NULL");
		// Sell
		pos = item_parse_i32(it, "Sell", pos, "NULL");
		// Weight
		pos = item_parse_i32_(it, "Weight", pos);
		// Atk
		pos = item_parse_i32_(it, "Atk", pos);
		// Matk
		pos = item_parse_i32_(it, "Matk", pos);
		// Def
		pos = item_parse_i32_(it, "Def", pos);
		// Range
		pos = item_parse_i32_(it, "Range", pos);
		// Slots
		pos = item_parse_i32_(it, "Slots", pos);
		
		// Job
		if ((t = config_setting_get_member(it, "Job")))
		{
			if (config_setting_is_group(t))
			{
				int class_job = 0;
				config_setting_t *tt = NULL;

				if ((tt = config_setting_get_member(t, "All")))
				{
					if (config_setting_get_bool(tt))
					class_job = 2146426879;
				
					if ((tt = config_setting_get_member(t, "Novice"))) {
						class_job -= 1;
					}
                
					if ((tt = config_setting_get_member(t, "Swordsman"))) {
						class_job -= 2;
					}
                
					if ((tt = config_setting_get_member(t, "Magician"))) {
						class_job -= 4;
					}
                
					if ((tt = config_setting_get_member(t, "Archer"))) {
						class_job -= 8;
					}
                
					if ((tt = config_setting_get_member(t, "Acolyte"))) {
						class_job -= 16;
					}
                
					if ((tt = config_setting_get_member(t, "Merchant"))) {
						class_job -= 32;
					}
                
					if ((tt = config_setting_get_member(t, "Thief"))) {
						class_job -= 64;
					}
                
					if ((tt = config_setting_get_member(t, "Knight"))) {
						class_job -= 128;
					}
                
					if ((tt = config_setting_get_member(t, "Priest"))) {
						class_job -= 256;
					}
                
					if ((tt = config_setting_get_member(t, "Wizard"))) {
						class_job -= 512;
					}
                
					if ((tt = config_setting_get_member(t, "Blacksmith"))) {
						class_job -= 1024;
					}
                
					if ((tt = config_setting_get_member(t, "Hunter"))) {
						class_job -= 2048;
					}
                
					if ((tt = config_setting_get_member(t, "Assassin"))) {
						class_job -= 4096;
					}
                
					if ((tt = config_setting_get_member(t, "Crusader"))) {
						class_job -= 16384;
					}
                
					if ((tt = config_setting_get_member(t, "Monk"))) {
						class_job -= 32768;
					}
                
					if ((tt = config_setting_get_member(t, "Sage"))) {
						class_job -= 65536;
					}
                
					if ((tt = config_setting_get_member(t, "Rogue"))) {
						class_job -= 131072;
					}
                
					if ((tt = config_setting_get_member(t, "Alchemist"))) {
						class_job -= 262144;
					}
                
					if ((tt = config_setting_get_member(t, "Bard"))) {
						class_job -= 524288;
					}
                
					if ((tt = config_setting_get_member(t, "Taekwon"))) {
						class_job -= 2097152;
					}
                
					if ((tt = config_setting_get_member(t, "Star_Gladiator"))) {
						class_job -= 4194304;
					}
                
					if ((tt = config_setting_get_member(t, "Soul_Linker"))) {
						class_job -= 8388608;
					}
                
					if ((tt = config_setting_get_member(t, "Gunslinger"))) {
						class_job -= 16777216;
					}
                
					if ((tt = config_setting_get_member(t, "Ninja"))) {
						class_job -= 33554432;
					}
                
					if ((tt = config_setting_get_member(t, "Gangsi"))) {
						class_job -= 67108864;
					}
                
					if ((tt = config_setting_get_member(t, "Death_Knight"))) {
						class_job -= 134217728;
					}
                
					if ((tt = config_setting_get_member(t, "Dark_Collector"))) {
						class_job -= 268435456;
					}
                
					if ((tt = config_setting_get_member(t, "Kagerou"))) {
						class_job -= 536870912;
					}
                
					if ((tt = config_setting_get_member(t, "Rebellion"))) {
						class_job -= 1073741824;
					}
				}
					else
				{
					if ((tt = config_setting_get_member(t, "Novice"))) {
						if (config_setting_get_bool(tt))
						class_job += 1;
					}

					if ((tt = config_setting_get_member(t, "Swordsman"))) {
						if (config_setting_get_bool(tt))
						class_job += 2;
					}

					if ((tt = config_setting_get_member(t, "Magician"))) {
						if (config_setting_get_bool(tt))
						class_job += 4;
					}

					if ((tt = config_setting_get_member(t, "Archer"))) {
						if (config_setting_get_bool(tt))
						class_job += 8;
					}

					if ((tt = config_setting_get_member(t, "Acolyte"))) {
						if (config_setting_get_bool(tt))
						class_job += 16;
					}

					if ((tt = config_setting_get_member(t, "Merchant"))) {
						if (config_setting_get_bool(tt))
						class_job += 32;
					}

					if ((tt = config_setting_get_member(t, "Thief"))) {
						if (config_setting_get_bool(tt))
						class_job += 64;
					}

					if ((tt = config_setting_get_member(t, "Knight"))) {
						if (config_setting_get_bool(tt))
						class_job += 128;
					}

					if ((tt = config_setting_get_member(t, "Priest"))) {
						if (config_setting_get_bool(tt))
						class_job += 256;
					}

					if ((tt = config_setting_get_member(t, "Wizard"))) {
						if (config_setting_get_bool(tt))
						class_job += 512;
					}

					if ((tt = config_setting_get_member(t, "Blacksmith"))) {
						if (config_setting_get_bool(tt))
						class_job += 1024;
					}

					if ((tt = config_setting_get_member(t, "Hunter"))) {
						if (config_setting_get_bool(tt))
						class_job += 2048;
					}

					if ((tt = config_setting_get_member(t, "Assassin"))) {
						if (config_setting_get_bool(tt))
						class_job += 4096;
					}

					if ((tt = config_setting_get_member(t, "Crusader"))) {
						if (config_setting_get_bool(tt))
						class_job += 16384;
					}

					if ((tt = config_setting_get_member(t, "Monk"))) {
						if (config_setting_get_bool(tt))
						class_job += 32768;
					}

					if ((tt = config_setting_get_member(t, "Sage"))) {
						if (config_setting_get_bool(tt))
						class_job += 65536;
					}

					if ((tt = config_setting_get_member(t, "Rogue"))) {
						if (config_setting_get_bool(tt))
						class_job += 131072;
					}

					if ((tt = config_setting_get_member(t, "Alchemist"))) {
						if (config_setting_get_bool(tt))
						class_job += 262144;
					}

					if ((tt = config_setting_get_member(t, "Bard"))) {
						if (config_setting_get_bool(tt))
						class_job += 524288;
					}

					if ((tt = config_setting_get_member(t, "Taekwon"))) {
						if (config_setting_get_bool(tt))
						class_job += 2097152;
					}

					if ((tt = config_setting_get_member(t, "Star_Gladiator"))) {
						if (config_setting_get_bool(tt))
						class_job += 4194304;
					}

					if ((tt = config_setting_get_member(t, "Soul_Linker"))) {
						if (config_setting_get_bool(tt))
						class_job += 8388608;
					}

					if ((tt = config_setting_get_member(t, "Gunslinger"))) {
						if (config_setting_get_bool(tt))
						class_job += 16777216;
					}

					if ((tt = config_setting_get_member(t, "Ninja"))) {
						if (config_setting_get_bool(tt))
						class_job += 33554432;
					}

					if ((tt = config_setting_get_member(t, "Gangsi"))) {
						if (config_setting_get_bool(tt))
						class_job += 67108864;
					}

					if ((tt = config_setting_get_member(t, "Death_Knight"))) {
						if (config_setting_get_bool(tt))
						class_job += 134217728;
					}

					if ((tt = config_setting_get_member(t, "Dark_Collector"))) {
						if (config_setting_get_bool(tt))
						class_job += 268435456;
					}

					if ((tt = config_setting_get_member(t, "Kagerou"))) {
						if (config_setting_get_bool(tt))
						class_job += 536870912;
					}

					if ((tt = config_setting_get_member(t, "Rebellion"))) {
						if (config_setting_get_bool(tt))
						class_job += 1073741824;
					}
				}
					pos += sprintf(pos, "%d,", class_job);
			}
			
		} else {
			pos += sprintf(pos, "4294967295,");
		}
		
		// Upper
		pos = item_parse_i32(it, "Upper", pos, "NULL");
		// Gender
		pos = item_parse_gender(it, "Gender", pos);
		// Loc
		pos = item_parse_i32_(it, "Loc", pos);
		// WeaponLv
		pos = item_parse_i32_(it, "WeaponLv", pos);

		// EquipLv
		if ((t = config_setting_get_member(it, "EquipLv"))) {
			if (config_setting_is_aggregate(t)) {
				if (config_setting_length(t) >= 2)
					pos += sprintf(pos, "%d,", config_setting_get_int_elem(t,0));
				if (config_setting_length(t) >= 1)
					pos += sprintf(pos, "%d,", config_setting_get_int_elem(t,1));
			} else {
				pos += sprintf(pos, "%d,", config_setting_get_int(t));
				pos += sprintf(pos, "NULL,");
			}
		} else {
			pos += sprintf(pos, "NULL,");
			pos += sprintf(pos, "NULL,");
		}

		// Refine
		pos = item_parse_bool(it, "Refine", pos);
		// View
		pos = item_parse_i32_(it, "View", pos);
		// BindOnEquip
		pos = item_parse_bool(it, "BindOnEquip", pos);
		// ForceSerial
		pos = item_parse_bool(it, "ForceSerial", pos);
		// BuyingStore
		pos = item_parse_bool(it, "BuyingStore", pos);
		// Delay
		pos = item_parse_i32_(it, "Delay", pos);

		// Trade
		if ((t = config_setting_get_member(it, "Trade"))) {
			if (config_setting_is_group(t)) {
				int trade_restriction = 0;
				config_setting_t *tt = NULL;

				if ((tt = config_setting_get_member(t, "nodrop"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 1;
				}

				if ((tt = config_setting_get_member(t, "notrade"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 2;
				}

				if ((tt = config_setting_get_member(t, "partneroverride"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 4;
				}

				if ((tt = config_setting_get_member(t, "noselltonpc"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 8;
				}

				if ((tt = config_setting_get_member(t, "nocart"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 10;
				}

				if ((tt = config_setting_get_member(t, "nostorage"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 20;
				}

				if ((tt = config_setting_get_member(t, "nogstorage"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 40;
				}

				if ((tt = config_setting_get_member(t, "nomail"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 80;
				}

				if ((tt = config_setting_get_member(t, "noauction"))) {
					if (config_setting_get_bool(tt))
						trade_restriction += 100;
				}

				if (trade_restriction)
					pos += sprintf(pos, "%d,", trade_restriction);
				else
					pos += sprintf(pos, "NULL,");

				if ((tt = config_setting_get_member(t, "override")))
					pos += sprintf(pos, "%d,", config_setting_get_int(tt));
				else
					pos += sprintf(pos, "NULL,");
			}
		} else {
			pos += sprintf(pos, "NULL,");
			pos += sprintf(pos, "NULL,");
		}

		// Nouse
		if ((t = config_setting_get_member(it, "Nouse"))) {
			if (config_setting_is_group(t)) {
				config_setting_t *tt = NULL;

				if ((tt = config_setting_get_member(t, "sitting"))) {
					if (config_setting_get_bool(tt))
						pos += sprintf(pos, "1,");
				}
				else
					pos += sprintf(pos, "NULL,");

				if ((tt = config_setting_get_member(t, "override")))
					pos += sprintf(pos, "%d,", config_setting_get_int(tt));
				else
					pos += sprintf(pos, "NULL,");
			}
		} else {
			pos += sprintf(pos, "NULL,");
			pos += sprintf(pos, "NULL,");
		}

		// Stack
		if ((t = config_setting_get_member(it, "Stack"))) {
			if (config_setting_is_aggregate(t) && config_setting_length(t) >= 1) {
				int stack_flag = config_setting_get_int_elem(t,1);
				int stack_amount = config_setting_get_int_elem(t,0);

				if (stack_amount)
					pos += sprintf(pos, "%d,", stack_amount);
				else
					pos += sprintf(pos, "NULL,");

				if (stack_flag)
					pos += sprintf(pos, "%d,", stack_flag);
				else
					pos += sprintf(pos, "NULL,");
			}
		} else {
			pos += sprintf(pos, "NULL,");
			pos += sprintf(pos, "NULL,");
		}

		// Sprite
		pos = item_parse_i32_(it, "Sprite", pos);
		// Script
		pos = item_parse_script(it, "Script", pos, true);
		// OnEquipScript
		pos = item_parse_script(it, "OnEquipScript", pos, true);
		// OnUnequipScript
		pos = item_parse_script(it, "OnUnequipScript", pos, false);

		sprintf(write, "REPLACE INTO item_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", filepath, count);
	config_destroy(&item_db_conf);
	file_count++;
}

// Converte o arquivo level_penalty.txt para SQL.
void convert_level_penalty_db(void)
{
	FILE *fread, *fwrite;
	char line[1024], path[256];
	int count = 0, i;

	sprintf(path, "%s", "db/level_penalty.txt");

	if (!(fread = fopen(path, "r")))
		return;

	fwrite = fopen(OUTPUTDIR"level_penalty_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 4; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
		}

		snprintf(write, sizeof(write), "REPLACE INTO level_penalty_db VALUES(%s);\n", buf);
		fprintf(fwrite, write);
		count++;
	}

	ShowStatus("Arquivo %s convertido com sucesso! linhas afetadas: %d\n", path, count);
	fclose(fread);
	fclose(fwrite);
	file_count++;
}

// Função Inicial
int do_init(void) {

	ShowMessage("\n");
	
	translation();
	convert_abra_db();
	convert_castle_db();
	convert_create_arrow_db();
	convert_elemental_db();
	convert_elemental_skill_db();
	convert_guild_skill_tree_db();
	convert_homunculus_db();
	convert_homun_skill_tree_db();
	convert_mercenary_db();
	convert_mercenary_skill_db();
	convert_mob_avail_db();
	convert_mob_chat_db();
	convert_mob_classchange_db();
	convert_mob_item_ratio_db();
	convert_pet_db();
	convert_produce_db();
	convert_skill_changematerial_db();
	convert_skill_improvise_db();
	convert_skill_reproduce_db();
	convert_spellbook_db();
	convert_quest_db();
	convert_const_db();
	convert_job_db2();
	convert_sc_config();
	convert_size_fix_db();
	convert_item_combo_db();
	convert_mob_boss_db();
	convert_mob_branch_db();
	convert_mob_poring_db();
	convert_mob_race2_db();
	convert_skill_cast_db();
	convert_skill_castnodex_db();
	convert_skill_db();
	convert_skill_nocast_db();
	convert_skill_require_db();
	convert_skill_tree_db();
	convert_skill_unit_db();
	convert_exp_guild_db();
	convert_exp_homun_db();
	convert_statpoint_db();
	convert_refine_db();
	convert_mob_db();
	convert_mob_skill_db();
	convert_item_db();
	convert_level_penalty_db();

	ShowMessage(""CL_BT_YELLOW"Total de arquivos convertidos: %d"CL_CLL""CL_NORMAL"\n", file_count);
	system("pause");
	return 0;
}

int do_final(void)
{
	return EXIT_SUCCESS;
}
