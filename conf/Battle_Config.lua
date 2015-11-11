--    _________________________________________________________________________________________________________
--   /                                                                                                         \
--   |                               _           _   _   _                                                     |
--   |                              | |__  _ __ / \ | |_| |__   ___ _ __   __ _                                |
--   |                              | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                               |
--   |                              | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                               |
--   |                              |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                               |
--   |                                                                                                         |
--   |                                             brAthena Script                                             |
--   |---------------------------------------------------------------------------------------------------------|
--   | Nome da configuração: Battle_Config.lua                                                                 |
--   |---------------------------------------------------------------------------------------------------------|
--   | Criado por: Megasantos                                                                                  |
--   |---------------------------------------------------------------------------------------------------------|
--   | Descrição: Configurações de Batalha.                                                                    |
--   |---------------------------------------------------------------------------------------------------------|
--   | Changelog:                                                                                              |
--   | 1.0 Adição da Configuração de dano [Megasantos]                                                         |
--   |---------------------------------------------------------------------------------------------------------|
--   | - Anotações                                                                                             |
--   | Nota 1: Valor optativo (true/false).  Nota 2: Valor em porcentagem (100 para 100%)                      |
--   | Nota 3: Valor em unidade (1: Jogador, 2: Monstro, 4: Bicho de Estimação, 8: Homunculus, 16: Mercenários.|
--   | Lembre-se que "NOTAS" dão recomendações importantes.                                                    |
--   \_________________________________________________________________________________________________________/

DAMAGE ={

	["ENABLE_BASEATK"] = 9;               -- Configuração para habilitar o ataque físico (ataque base), a força (str) ajuda a aumentar o dano (damage). (Nota 3)
	["ENABLE_PERFECT_FLEE"] = 1;          -- Configuração para habilitar a esquiva perfeita. (Nota 3)
	["ENABLE_CRITICAL"] = 17;             -- Configuração para habilitar os ataques críticos. (Nota 3)
	["MOB_CRITICAL_RATE"] = 100;          -- Configuração para do percentual de ataques críticos para tudo, exceto personagens. (Nota 2)
	["CRITICAL_RATE"] = 100;
	["ATTACK_WALK_DELAY"] = 15;           -- Ataques normais devem causar um delay no movimento? Se não, personagens podem mover-se logo que eles começam um ataque. (Nota 3)
	["PC_DAMAGE_WALK_DELAY_RATE"] = 20;   -- Configuração do tempo de relaxamento (delay) para definir o movimento do personagem após ataques (hits). (Nota 2)
	["DAMAGE_WALK_DELAY_RATE"] = 100;
	["MULTIHIT_DELAY"] = 80;              -- Configuração de tempo de relaxamento (delay) após ataques em seqüência ou múltiplos (multihits), habilidades como Trovão de Júpiter. (Nota 2)
	["PLAYER_DAMAGE_DELAY_RATE"] = 100;   -- Configuração de tempo de relaxamento (delay) após um personagem receber dano. (Nota 2)
	["UNDEAD_DETECT_TYPE"] = 0;           -- Configuração de raça ou elemento para que se considere um jogador como morto-vivo. 0 = Elemento morto-vivo, 1 = Raça morto-vivo, 2 = Ambas
	["ATRIBUTE_RECOVER"] = false;         -- Configuração de recuperação de HP (HP Recover) em diversos casos, como após o hit. (Nota 1)
	["MIN_RATE"] = 5;                     -- Configurações de dano mínimo e máximo para ataques normais ou não críticos. (Nota 2)
	["MAX_RATE"] = 100;
	["AGI_PENALTY_TYPE"] = 1;             -- Configuração dos tipos de penalidades que serão aplicadadas à Esquiva (Flee) quando o número de monstros atacando o jogador for maior do que o número definido em agi_penalty_count. 0 = Penalidades não serão aplicadas. 1 = agi_penalty_num é reduzida da Esquiva (Flee) baseando-se em porcentagem. 2 = agi_penalty_num é reduzida da Esquiva (Flee) baseando-se em um número exato.
	["AGI_PENALTY_TARGET"] = 1;           -- Configuração dos alvos que serão afetados pela agi_penalty. O agi_penalty_type deve estar ativado.
	["AGI_PENALTY_COUNT"] = 3;            -- Configuração da quantidade de inimigos necessários para atacar o alvo para que a penalidade de agi ocorra.
	["AGI_PENALTY_NUM"] = 10;             -- Configuração da quantidade de esquiva (flee) penalizada para cada inimigo, que atacar o personagem, a mais do que o configurado em agi_penalty_count.
	["VIT_PENALTY_TYPE"] = 1;             -- Configuração dos tipos de penalidades que serão aplicadas à defesa calculada pela vitalidade. 0 = Penalidades não são aplicadas,  1 = vit_penalty_num é reduzida a partir de uma porcentagem %, 2 = vit_penalty_num é reduzida a partir de um número exato.
	["VIT_PENALTY_TARGET"] = 1;           -- Configuração dos alvos que serão afetados por vit_penalty. (Nota 3)
	["VIT_PENALTY_COUNT"] = 3;            -- Configuração da quantidade de inimigos necessários para atacar o alvo para que a penalidade de vit ocorra.
	["VIT_PENALTY_NUM"] = 5;              -- Configuração da quantidade de vitalidade (vit) penalizada para cada inimigo, que atacar o personagem, a mais do que o configurado em vit_penalty_count.
	["WEAPON_DEFENSE_TYPE"] = 0;          -- Configuração para método alternativo de cálculo da defesa para ataques físicos. 0 é desabilitado (usará a redução normal de defesa (def%) mais a redução da def2), 1 ou mais a defesa é subtraida (DEF* value).
	["MAGIC_DEFENSE_TYPE"] = 0;           -- Configuração para método alternativo de cálculo da defesa para ataques mágicos.(MDEF*value)
	["ATTACK_DIRECTION_CHANGE"] = 0;      -- Configuração de direção do alvo. (Nota 3)
	["ATTACK_ATTR_NONE"] = 14;            -- Configuração para quem estiver utilizando ataques de elemento neutro não vai obter qualquer resultado. (Nota 3) Essas configurações servem para alteração dos personagens que usam cartas ou armaduras com tal elemento ou ataques de elemento normal (exemplo: ghostring). (Nota 3)
	["EQUIP_NATURAL_BREAK_RATE"] = 0;     -- Configuração da taxa na qual o equipamento pode quebrar. 1"] = 0.01% de chance. (Padrão"] = 0)
	["EQUIP_SELF_BREAK_RATE"] = 100;      -- Configuração da taxa global de que o seu próprio equipamento pode quebrar. Esta taxa afeta a taxa de penalidade de quebra de habilidades, tais como Força Violenta e sua taxa de quebra natural. (Nota 2)
	["EQUIP_SKILL_BREAK_RATE"] = 100;     -- Configuração da taxa na qual você pode quebrar equipamentos dos inimigos. Essas configurações funcionam para as habilidades Terror Ácido e Golpe Estilhaçante. (Nota 2)
	["DELAY_BATTLE_DAMAGE"] = true;       -- Configuração para que ataques com armas tenham um tempo de relaxamento (delay) antes do verdadeiro dano ser aplicado. (Nota 1)
	["ARROW_DECREMENT"] = 1;              -- Configurações para consumo de flechas, munições e outros quando utilizados. 0 = Não,  1 = Sim, 2 = Sim, até mesmo para habilidades que não especificam o consumo.
	["AUTOSPELL_CHECK_RANGE"] = false;    -- Configuração para verificar o bônus de script para itens 'AutoSpell' e 'Autospellwhenhit'. O padrão oficial é 'no', definindo-o como 'yes' vai fazer o uso de suas habilidades com um alcance definido. Por exemplo, 'Lâminas Destruidoras' requer uma distância de 2 células antes de ser usado. (Nota 1)
	["KNOCKBACK_LEFT"] = true;            -- Configuração que define se o atacante e o alvo na mesma célula, o alvo vai ser empurado para o lado esquerdo. Oficial: true (Nota 1)
	["SNAP_DODGE"] = false;               -- Configuração que define se o alvo é capaz de esquivar fora do tela. (Nota 1)
};
