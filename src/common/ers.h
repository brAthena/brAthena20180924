/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/common/ers.h                                                           *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licen�a GNU GPL                                           *
* Para mais informa��es leia o arquivo LICENSE na ra�z do emulador           *
*****************************************************************************/

#ifndef COMMON_ERS_H
#define COMMON_ERS_H

#include "common/cbasetypes.h"

/*****************************************************************************\
 *  (1) All public parts of the Entry Reusage System.                        *
 *  DISABLE_ERS           - Define to disable this system.                   *
 *  ERS_ALIGNED           - Alignment of the entries in the blocks.          *
 *  ERS                   - Entry manager.                                   *
 *  ers_new               - Allocate an instance of an entry manager.        *
 *  ers_report            - Print a report about the current state.          *
 *  ers_final             - Clears the remainder of the managers.           *
\*****************************************************************************/

/**
 * Define this to disable the Entry Reusage System.
 * All code except the typedef of ERInterface will be disabled.
 * To allow a smooth transition,
 */
//#define DISABLE_ERS

/**
 * Entries are aligned to ERS_ALIGNED bytes in the blocks of entries.
 * By default it aligns to one byte, using the "natural order" of the entries.
 * This should NEVER be set to zero or less.
 * If greater than one, some memory can be wasted. This should never be needed
 * but is here just in case some alignment issues arise.
 */
#ifndef ERS_ALIGNED
#	define ERS_ALIGNED 1
#endif /* not ERS_ALIGN_ENTRY */

enum ERSOptions {
	ERS_OPT_NONE        = 0x00,
	ERS_OPT_CLEAR       = 0x01,/* silently clears any entries left in the manager upon destruction */
	ERS_OPT_WAIT        = 0x02,/* wait for entries to come in order to list! */
	ERS_OPT_FREE_NAME   = 0x04,/* name is dynamic memory, and should be freed */
	ERS_OPT_CLEAN       = 0x08,/* clears used memory upon ers_free so that its all new to be reused on the next alloc */
	ERS_OPT_FLEX_CHUNK  = 0x10,/* signs that it should look for its own cache given it'll have a dynamic chunk size, so that it doesn't affect the other ERS it'd otherwise be sharing */

	/* Compound, is used to determine whether it should be looking for a cache of matching options */
	ERS_CACHE_OPTIONS   = ERS_OPT_CLEAN|ERS_OPT_FLEX_CHUNK,
};

/**
 * Public interface of the entry manager.
 * @param alloc Allocate an entry from this manager
 * @param free Free an entry allocated from this manager
 * @param entry_size Return the size of the entries of this manager
 * @param destroy Destroy this instance of the manager
 */
typedef struct eri {

	/**
	 * Allocate an entry from this entry manager.
	 * If there are reusable entries available, it reuses one instead.
	 * @param self Interface of the entry manager
	 * @return An entry
	 */
	void *(*alloc)(struct eri *self);

	/**
	 * Free an entry allocated from this manager.
	 * WARNING: Does not check if the entry was allocated by this manager.
	 * Freeing such an entry can lead to unexpected behavior.
	 * @param self Interface of the entry manager
	 * @param entry Entry to be freed
	 */
	void (*free)(struct eri *self, void *entry);

	/**
	 * Return the size of the entries allocated from this manager.
	 * @param self Interface of the entry manager
	 * @return Size of the entries of this manager in bytes
	 */
	size_t (*entry_size)(struct eri *self);

	/**
	 * Destroy this instance of the manager.
	 * The manager is actually only destroyed when all the instances are destroyed.
	 * When destroying the manager a warning is shown if the manager has
	 * missing/extra entries.
	 * @param self Interface of the entry manager
	 */
	void (*destroy)(struct eri *self);

	/* */
	void (*chunk_size) (struct eri *self, unsigned int new_size);
} ERS;

#ifdef DISABLE_ERS
// Use memory manager to allocate/free and disable other interface functions
#	define ers_alloc(obj,type) ((void)(obj), (type *)aMalloc(sizeof(type)))
#	define ers_free(obj,entry) ((void)(obj), aFree(entry))
#	define ers_entry_size(obj) ((void)(obj), (size_t)0)
#	define ers_destroy(obj) ((void)(obj), (void)0)
#	define ers_chunk_size(obj,size) ((void)(obj), (void)(size), (size_t)0)
// Disable the public functions
#	define ers_new(size,name,options) NULL
#	define ers_report() (void)0
#	define ers_final() (void)0
#else /* not DISABLE_ERS */
// These defines should be used to allow the code to keep working whenever
// the system is disabled
#	define ers_alloc(obj,type) ((type *)(obj)->alloc(obj))
#	define ers_free(obj,entry) ((obj)->free((obj),(entry)))
#	define ers_entry_size(obj) ((obj)->entry_size(obj))
#	define ers_destroy(obj)    ((obj)->destroy(obj))
#	define ers_chunk_size(obj,size) ((obj)->chunk_size((obj),(size)))

#ifdef BRATHENA_CORE
/**
 * Get a new instance of the manager that handles the specified entry size.
 * Size has to greater than 0.
 * If the specified size is smaller than a pointer, the size of a pointer is
 * used instead.
 * It's also aligned to ERS_ALIGNED bytes, so the smallest multiple of
 * ERS_ALIGNED that is greater or equal to size is what's actually used.
 * @param The requested size of the entry in bytes
 * @return Interface of the object
 */
ERS *ers_new(uint32 size, char *name, enum ERSOptions options);

/**
 * Print a report about the current state of the Entry Reusage System.
 * Shows information about the global system and each entry manager.
 * The number of entries are checked and a warning is shown if extra reusable
 * entries are found.
 * The extra entries are included in the count of reusable entries.
 */
void ers_report(void);

/**
 * Clears the remainder of the managers
 **/
void ers_final(void);
#endif // BRATHENA_CORE
#endif /* DISABLE_ERS / not DISABLE_ERS */

#endif /* COMMON_ERS_H */
