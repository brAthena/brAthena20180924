/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/common/grfio.h                                                         *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef COMMON_GRFIO_H
#define COMMON_GRFIO_H

void grfio_init(const char* fname);
void grfio_final(void);
void* grfio_reads(const char* fname, int* size);
char* grfio_find_file(const char* fname);
#define grfio_read(fn) grfio_reads((fn), NULL)

unsigned long grfio_crc32(const unsigned char *buf, unsigned int len);
int decode_zip(void* dest, unsigned long* destLen, const void* source, unsigned long sourceLen);
int encode_zip(void* dest, unsigned long* destLen, const void* source, unsigned long sourceLen);

#endif /* COMMON_GRFIO_H */
