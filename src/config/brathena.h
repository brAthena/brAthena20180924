/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/config/brathena.h                                                       *
* Configurações básicas de ativação e fórmulas da renovação                  *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CONFIG_BRATHENA_H
#define CONFIG_BRATHENA_H


// Nível Max. Global (Base)
// [CarlosHenrq, 2016-10-27] 175 somente quando em execução no modo renewal.
#ifdef RENEWAL
	#define MAX_LEVEL 175
#else
	#define MAX_LEVEL 99
#endif

// Tabela de Nível Máximo por Classes
enum _max_level_ {
	max_baselv_normal = 99,				// -> Nível Base: Classes normais e babês.
	max_baselv_trans = 99,				// -> Nível Base: Transclasses
	max_baselv_third = 175,				// -> Nível Base: Terceiras classes (será lido apenas caso em modo renewal)
	max_baselv_sne_ko = 160,			// -> Nível Base: Super Aprendiz Extendido e Kagerou/Oboro
	
	max_joblv_novice = 10,				// -> Nível Classe: Aprendiz
	max_joblv_first = 50,				// -> Nível Classe: Primeiras classes
	max_joblv_second = 50,				// -> Nível Classe: Segundas classes
	max_joblv_novice_t = 10,			// -> Nível Classe: Aprendiz T.
	max_joblv_first_t = 50,				// -> Nível Classe: Primeiras classes T.
	max_joblv_second_t = 70,			// -> Nível Classe: Transclasses
	max_joblv_third = 60,				// -> Nível Classe: Terceiras classes e Bebês (será lido apenas caso em modo renewal)
	max_joblv_sne_ko = 50,				// -> Nível Classe: Super Aprendiz Extendido e Kagerou/Oboro
	max_joblv_guns_ninja = 70,			// -> Nível Classe: Gunslinger e Ninja	
	max_joblv_taekwon = 50,				// -> Nível Classe: Taekwon
	max_joblv_taekwon_master = 50,		// -> Nível Classe: Mestre Taekwon
	max_joblv_soullinker = 50,			// -> Nível Classe: Soul Linker
	max_joblv_sn_snb = 99,				// -> Nível Classe: Super Aprendiz e Super Aprendiz Bebê	
};

#define hom_max_level 99 // Nível máximo para Homunculus.
#define hom_S_max_level 150 // Nível máximo para Homunculus S

// Retornar do dano refletido para o redentor? ( 1=habilitado  0=desabilitado )
#define DEVOTION_REFLECT_DAMAGE 0

// Ressuscitar personagem quando teleportado? ( 1=habilitado  0=desabilitado )
#define warp_no_ress 0

// Equipamentos dropados por monstros já são identificados ? ( 1=identificado  0=não identificado )
#define mob_drop_identified 0

// Permitir que alianças sejam estabelecidas durante o período de Guerras? ( 1=Não Permitido  0=Permitido )
#define alliance_in_woe 0

// Com essa função, assim que se conectar ao seu servidor,
// você receberá uma mensagem com os valores referentes às taxas de Experiência,
// Drop e Penalidade de Morte do servidor, vigentes naquele momento.
#define show_message_exp 1

///|----------------------|
///| Sistema Vip Oficial  |
///|----------------------|

// Ativar sistema vip ? ( 1=habilitado  0=desabilitado )
// Padrão dos Servidores oficiais: 1
// NOTA: Desative caso use outro sistema vip.
#define enable_system_vip 1

// Level para jogadores vip.
#define level_vip 1

// Taxa de exp extra. (base e classe)
// 100 = 1x de exp
#define extra_exp_vip_base 100
#define extra_exp_vip_job 100

// Redução da penalidade de morte.
#define penalty_exp_vip_base 100
#define penalty_exp_vip_job 100

#endif // CONFIG_BRATHENA_H
