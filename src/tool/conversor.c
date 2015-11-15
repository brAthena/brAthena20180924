/*******************************
* brA Conversor TXT para SQL
* Autor:	Shiraz
* Data:		22/10/2012
* Rev:		08/11/2015
********************************/

#include "common/cbasetypes.h"
#include "common/core.h"
#include "common/conf.h"
#include "common/memmgr.h"
#include "common/mmo.h"
#include "common/showmsg.h"
#include "common/utils.h"
#include "common/strlib.h"

#include <stdio.h>
#include <stdlib.h>
#ifndef _WIN32
#include <unistd.h>
#endif

// Função de suporte ao console.
void cmdline_args_init_local(void) {}

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
void split_char(char *str, char split)
{
	int count = 0, i;

	for (i = 0; str[i]; i++)
		if (str[i] != split)
			str[count++] = str[i];

	str[count] = '\0';
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

	fwrite = fopen("sql/conversor/abra_db.sql", "w+");

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

			pos += ((i == 1)) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
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

	fwrite = fopen("sql/conversor/castle_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 5; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += ((i >= 1 && i <= 3)) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%d", atoi(token));
			token = strtok(NULL, ",");
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

	fwrite = fopen("sql/conversor/create_arrow_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/elemental_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/elemental_skill_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/guild_skill_tree.sql", "w+");

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

	fwrite = fopen("sql/conversor/homunculus_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/homun_skill_tree.sql", "w+");

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

	fwrite = fopen("sql/conversor/mercenary_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/mercenary_skill_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_avail.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_chat_db.sql", "w+");

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

			pos += (i == 2) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
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

	fwrite = fopen("sql/conversor/mob_classchange.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_item_ratio.sql", "w+");

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

	fwrite = fopen("sql/conversor/pet_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/produce_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_changematerial_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_improvise_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_reproduce_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/spellbook_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/quest_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/const_db.sql", "w+");

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
				snprintf(write, sizeof(write), "REPLACE INTO const_db VALUES('%s','%s',%s);\n", name, val, "NULL");
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

	fwrite = fopen("sql/conversor/job_db2.sql", "w+");

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

	fwrite = fopen("sql/conversor/sc_config.sql", "w+");

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

	fwrite = fopen("sql/conversor/size_fix_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/item_combo_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_boss_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_branch_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_poring_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_race2_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_cast_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_castnodex_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 17; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += (i == 1 || i >= 4) ? sprintf(pos, "'%s'", escape_str(token)) : sprintf(pos, "%s", token);
			token = strtok(NULL, ",");
		}

		split_char(buf, '\t');

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

	fwrite = fopen("sql/conversor/skill_nocast_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_require_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_tree_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/skill_unit_db.sql", "w+");

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

		split_char(buf, ' ');
		split_char(buf, '\t');

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

	fwrite = fopen("sql/conversor/exp_guild_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/exp_homun_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/statpoint_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/refine_db.sql", "w+");

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

	fwrite = fopen("sql/conversor/mob_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 57; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			pos += ((i == 0 || i > 3)) ? sprintf(pos, "%d", atoi(token)) : sprintf(pos, "'%s'", escape_str(token));
			token = strtok(NULL, ",");
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

	fwrite = fopen("sql/conversor/mob_skill_db.sql", "w+");

	while (fgets(line, sizeof(line), fread) != NULL) {
		char *token, buf[1024], write[1024], *pos = buf;

		if ((line[0] == '/' && line[1] == '/') || line[0] == '\n')
			continue;

		line[strlen(line)-1] = '\0';
		token = strtok(line, ",");

		for (i = 0; i < 19; i++) {
			if (i) {
				pos += sprintf(pos, ",");
			}

			if (i > 0)
				pos += (token == NULL) ? sprintf(pos, "%s", "NULL") : sprintf(pos, "'%s'", escape_str(token));
			else
				pos += sprintf(pos, "%d", atoi(token));

			token = strtok(NULL, ",");
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

// Converte o arquivo item_db.txt para SQL.
// Função inversa da original criada pelo Hercules.
void convert_item_db(void)
{
	// Em breve
}

// Função Inicial
int do_init(void) {

	ShowMessage("\n");
	
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

	ShowMessage(""CL_BT_YELLOW"Total de arquivos convertidos: %d"CL_CLL""CL_NORMAL"\n", file_count);
	system("pause");
	return 0;
}

int do_final(void)
{
	return EXIT_SUCCESS;
}