/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/config/renewal.h                                                       *
* Configurações básicas de ativação e fórmulas da renovação                  *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CONFIG_RENEWAL_H
#define CONFIG_RENEWAL_H

/**
 * @INFO: Este arquivo tem o proposito de definir configurações apenas da renovação.
 * Para desabilitar uma configuração, comente a linha que contém o #define com //
 **/

/**
 * Retire o comentário da definição para desativar todas as definições abaixo.
 * Fazendo isso o emulador vai estar configurado para características pré-renovação.
 * Nota: em compilações de UNIX, isso pode ser facilmente feito retirar o comentário, usando:
 * ./configure --disable-renewal
 */
//#define DISABLE_RENEWAL

#ifndef DISABLE_RENEWAL // Não altere esta linha

/// Modo renovação do emulador
/// (comente a linha para desativar)
///
/// Suporte específico da renovação, como fórmulas da renovação.
#define RENEWAL

/// Tempo de conjuração de habilidades, da renovação
/// Dentro dos padrões da renovação, a conjuração:
///  - Tem sua fórmula reduzida por DEX * 2 + INT
///  - O tempo de conjuração se divide em fórmula e fixo, cujo o fixo será adicionado por habilidades e itens.
#define RENEWAL_CAST

/// Taxa de drop da renovação
#define RENEWAL_DROP

/// Taxa de experiência da renovação
#define RENEWAL_EXP

/// Taxa de modificação do dano conforme o nível
#define RENEWAL_LVDMG

/// Habilidade "encantar com veneno mortal" da renovação
/// Fora dos padrões da renovação a habilidade:
///  - Não terá o dano reduzido por 400%
///  - Não terá efeito de amplificação com a habilidade grimtooth
///  - Ataque com armas e status STR (força) serão aumentados.
#define RENEWAL_EDP

/// Velocidade de ataque da renovação
/// Dentro dos parâmetros da renovação a velocidade de ataque:
/// - Terá penalidade e redução de velocidade de ataque conforme escudos utilizados.
/// - O status de AGI (agilidade) terão grande influência no cálculo da fórmula.
/// - Algumas habilidades e itens mudam a fórmula de bonificar velocidade de ataque, para valores fixos.
#define RENEWAL_ASPD

#endif // DISABLE_RENEWAL
#undef DISABLE_RENEWAL

#endif // CONFIG_RENEWAL_H
