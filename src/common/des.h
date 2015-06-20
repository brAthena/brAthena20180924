/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
******************************************************************************
*                          www.brathena.org                                  *
*****************************************************************************/

#ifndef COMMON_DES_H
#define COMMON_DES_H

#include "common/cbasetypes.h"

/// One 64-bit block.
typedef struct BIT64 { uint8_t b[8]; } BIT64;

#ifdef BRATHENA_CORE
void des_decrypt_block(BIT64* block);
void des_decrypt(unsigned char* data, size_t size);
#endif // BRATHENA_CORE

#endif // COMMON_DES_H
