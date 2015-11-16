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
--   | 1.0 Adição das Configurações de dano [Megasantos]                                                       |
--   | 1.1 Adição das Configurações de battleground e client [Megasantos]                                      |
--   | 1.2 Adição das Configurações de drop [Megasantos]                                                       |
--   |---------------------------------------------------------------------------------------------------------|
--   | - Anotações                                                                                             |
--   | Nota 1: Valor optativo (true/false).  Nota 2: Valor em porcentagem (100 para 100%)                      |
--   | Nota 3: Valor em unidade (1: Jogador, 2: Monstro, 4: Bicho de Estimação, 8: Homunculus, 16: Mercenários.|
--   | Nota 4: Valor em Milissegundos (1 segundo são 1000 milissegundos)                                       |
--   | Lembre-se que "NOTAS" dão recomendações importantes.                                                    |
--   \_________________________________________________________________________________________________________/

DAMAGE = {
	["enable_baseatk"] = 9;               -- Configuração para habilitar o ataque físico (ataque base), a força (str) ajuda a aumentar o dano (damage). (Nota 3)
	["enable_perfect_flee"] = 1;          -- Configuração para habilitar a esquiva perfeita. (Nota 3)
	["enable_critical"] = 17;             -- Configuração para habilitar os ataques críticos. (Nota 3)
	["mob_critical_rate"] = 100;          -- Configuração para do percentual de ataques críticos para tudo, exceto personagens. (Nota 2)
	["critical_rate"] = 100;
	["attack_walk_delay"] = 15;           -- Ataques normais devem causar um delay no movimento? Se não, personagens podem mover-se logo que eles começam um ataque. (Nota 3)
	["pc_damage_walk_delay_rate"] = 20;   -- Configuração do tempo de relaxamento (delay) para definir o movimento do personagem após ataques (hits). (Nota 2)
	["damage_walk_delay_rate"] = 100;
	["multihit_delay"] = 80;              -- Configuração de tempo de relaxamento (delay) após ataques em seqüência ou múltiplos (multihits), habilidades como Trovão de Júpiter. (Nota 2)
	["player_damage_delay_rate"] = 100;   -- Configuração de tempo de relaxamento (delay) após um personagem receber dano. (Nota 2)
	["undead_detect_type"] = 0;           -- Configuração de raça ou elemento para que se considere um jogador como morto-vivo. 0 = Elemento morto-vivo, 1 = Raça morto-vivo, 2 = Ambas
	["attribute_recover"] = false;        -- Configuração de recuperação de HP (HP Recover) em diversos casos, como após o hit. (Nota 1)
	["min_hitrate"] = 5;                  -- Configurações de dano mínimo e máximo para ataques normais ou não críticos. (Nota 2)
	["max_hitrate"] = 100;
	["agi_penalty_type"] = 1;             -- Configuração dos tipos de penalidades que serão aplicadadas à Esquiva (Flee) quando o número de monstros atacando o jogador for maior do que o número definido em agi_penalty_count. 0 = Penalidades não serão aplicadas. 1 = agi_penalty_num é reduzida da Esquiva (Flee) baseando-se em porcentagem. 2 = agi_penalty_num é reduzida da Esquiva (Flee) baseando-se em um número exato.
	["agi_penalty_target"] = 1;           -- Configuração dos alvos que serão afetados pela agi_penalty. O agi_penalty_type deve estar ativado.
	["agi_penalty_count"] = 3;            -- Configuração da quantidade de inimigos necessários para atacar o alvo para que a penalidade de agi ocorra.
	["agi_penalty_num"] = 10;             -- Configuração da quantidade de esquiva (flee) penalizada para cada inimigo, que atacar o personagem, a mais do que o configurado em agi_penalty_count.
	["vit_penalty_type"] = 1;             -- Configuração dos tipos de penalidades que serão aplicadas à defesa calculada pela vitalidade. 0 = Penalidades não são aplicadas,  1 = vit_penalty_num é reduzida a partir de uma porcentagem %, 2 = vit_penalty_num é reduzida a partir de um número exato.
	["vit_penalty_target"] = 1;           -- Configuração dos alvos que serão afetados por vit_penalty. (Nota 3)
	["vit_penalty_count"] = 3;            -- Configuração da quantidade de inimigos necessários para atacar o alvo para que a penalidade de vit ocorra.
	["vit_penalty_num"] = 5;              -- Configuração da quantidade de vitalidade (vit) penalizada para cada inimigo, que atacar o personagem, a mais do que o configurado em vit_penalty_count.
	["weapon_defense_type"] = 0;          -- Configuração para método alternativo de cálculo da defesa para ataques físicos. 0 é desabilitado (usará a redução normal de defesa (def%) mais a redução da def2), 1 ou mais a defesa é subtraida (DEF* value).
	["magic_defense_type"] = 0;           -- Configuração para método alternativo de cálculo da defesa para ataques mágicos.(MDEF*value)
	["attack_direction_change"] = 0;      -- Configuração de direção do alvo. (Nota 3)
	["attack_attr_none"] = 14;            -- Configuração para quem estiver utilizando ataques de elemento neutro não vai obter qualquer resultado. (Nota 3) Essas configurações servem para alteração dos personagens que usam cartas ou armaduras com tal elemento ou ataques de elemento normal (exemplo: ghostring). (Nota 3)
	["equip_natural_break_rate"] = 0;     -- Configuração da taxa na qual o equipamento pode quebrar. 1 = 0.01% de chance. (Padrão é 0)
	["equip_self_break_rate"] = 100;      -- Configuração da taxa global de que o seu próprio equipamento pode quebrar. Esta taxa afeta a taxa de penalidade de quebra de habilidades, tais como Força Violenta e sua taxa de quebra natural. (Nota 2)
	["equip_skill_break_rate"] = 100;     -- Configuração da taxa na qual você pode quebrar equipamentos dos inimigos. Essas configurações funcionam para as habilidades Terror Ácido e Golpe Estilhaçante. (Nota 2)
	["delay_battle_damage"] = true;       -- Configuração para que ataques com armas tenham um tempo de relaxamento (delay) antes do verdadeiro dano ser aplicado. (Nota 1)
	["arrow_decrement"] = 1;              -- Configurações para consumo de flechas, munições e outros quando utilizados. 0 = Não,  1 = Sim, 2 = Sim, até mesmo para habilidades que não especificam o consumo.
	["autospell_check_range"] = false;    -- Configuração para verificar o bônus de script para itens 'AutoSpell' e 'Autospellwhenhit'. O padrão oficial é 'no', definindo-o como 'true' vai fazer o uso de suas habilidades com um alcance definido. Por exemplo, 'Lâminas Destruidoras' requer uma distância de 2 células antes de ser usado. (Nota 1)
	["knockback_left"] = true;            -- Configuração que define se o atacante e o alvo na mesma célula, o alvo vai ser empurado para o lado esquerdo. Oficial: true (Nota 1)
	["snap_dodge"] = false;               -- Configuração que define se o alvo é capaz de esquivar fora do tela. (Nota 1)
};

BATTLEGROUND = {
	["bg_flee_penalty"] = 20;             -- Configuração para penalidade de esquiva (flee) nas Batalhas Campais. 20 = -20% da sua esquiva original.
	["bg_update_interval"] = 1000;        -- Configuração do intervalo de atualização para pontos no mini-mapa dos personagens de seu time. (Nota 4)
};

CLIENT = {
	["packet_obfuscation"] = 1;           -- Configuração para ativar suporte a ofuscação de pacotes (oficial). 0: desativado 1: opcional (não recomendável) - identifica se é necessário 2: ativado (recomendado)
	["min_chat_delay"] = 0;               -- Configuração de intervalo mínimo (delay) ao ser enviada uma mensagem em whisper/global/grupo/clã (em milésimo de segundos).
	["min_hair_style"] = 0;               -- Configurações de número válidos para paletas, sprites para cabelos, cores e estilos.
	["max_hair_style"] = 29;
	["min_hair_color"] = 0;
	["max_hair_color"] = 8;
	["min_cloth_color"] = 0;
	["max_cloth_color"] = 4;
	["hide_woe_damage"] = true;           -- Configuração para tornar visível, ou não, o dano recebido pelos jogadores durante a GdE. (Nota 1)
	["pet_hair_style"] = 100;             -- Configuração para definir o número de "estilo de cabelo" que identifica  do bicho de estimação. NOTA: O cliente usa o "estilo de cabelo" no campo mob packet para identificar os monstros.
	["area_size"] = 14;                   -- Configuração do tamanho da área visível ao redor do jogador.
	["max_walk_path"] = 17;               -- Configuração que define quantas células um jogador pode andar. Padrão: 17(Aegis)
	["max_lv"] = 99;                      -- Configuração do nível máximo para jogadores.
	["aura_lv"] = 99;                     -- Configuração do nível requerido para obter aura. Níveis maiores necessitam de edição no client
	["client_limit_unit_lv"] = 0;         -- Configuração que define os tipos de unidades afetadas pelas configurações de max_lv e aura_lv. (Nota 3)
	["wedding_modifydisplay"] = false;    -- Configuração para terno e vestido de casamento serem exibidos de forma diferente. (Nota 1)
	["save_clothcolor"] = true;           -- Configuração para salvar as cores modificadas. (Isso irá prejudicar o desempenho) (Nota 1)
	["wedding_ignorepalette"] = false;    -- Configuração para ignorar cores nas roupas de casamento. save_clothcolor e wedding_modifydisplay, têm que estar ativados.
	["xmas_ignorepalette"] = false;       -- Configuração para ignorar cores na roupa de natal.
	["summer_ignorepalette"] = false;     -- Configuração para ignorar cores na roupa de verão.
	["hanbok_ignorepalette"] = false;     -- Configuração para ignorar cores na roupa Hanbok.
	["display_version"] = false;          -- Configuração para mostrar a última versão do brAthena para todos usuários que fizerem login.
	["display_hallucination"] = true;     -- Configuração para habilitar efeitos de alucinação. Em clients 2012 efeito foi alterado, para reduzir problemas com lag.
	["display_status_timers"] = true;     -- Configuração para exibição dos status de habilidades.
	["client_reshuffle_dice"] = true;     -- Configuração para que o "jogo de dados" com emoticon "/dice" seja randômico. Definindo como "false" você irá impedir que packets falsos sejam forjados e enviados ao cliente de forma a conseguir o número desejado.
	["client_sort_storage"] = false;      -- Configuração para que o armazém seja aberto depois de enviar ao cliente. Habilitar essa opção diminui a capacidade do emulador.
	["client_accept_chatdori"] = 1;       -- Configuração de duração em minutos para auto mute do client. Não ative se você ativou comandos para jogadores, porque o cliente vê vários comandos em sucessão como spam. Padrão: 1 (1 minuto) 0 = Desativado
	["client_emblem_max_blank"] = 100;    -- Configuração que permite bloquear o uso de pixels transparentes em emblemas de clãs. Se definido como 100 (permite 100% de pixels transparentes)
};

DROPS = {
	["item_auto_get"] = false;            -- Configuração para permitir que itens que forem dropados irem direto para o inventário do usuário. (Nota 1)
	["flooritem_lifetime"] = 60000;       -- Configuração do tempo que os itens demoram para desaparecerem do chão depois de dropado. (Nota 4)
	["item_first_get_time"] = 3000;       -- Configuração do tempo de demora para recolhimento de itens da pessoa que deu o maior dano no alvo poder pegar os itens. (Nota 4)
	["item_second_get_time"] = 1000;      -- Configuração do tempo de demora para recolhimento de itens da primeira e segunda pessoas que deram os maiores danos no alvo poderem pegar os itens. Configuração válida após a configuração "item_first_get_time" ser executada. (Nota 4)
	["item_third_get_time"] = 1000;       -- Configuração do tempo de demora para recolhimento de itens da primeira, segunda e terceira pessoas que deram os maiores danos no alvo poderem pegar os itens. Configuração válida após a configuração "item_second_get_time" ser executada. (Nota 4)
	["mvp_item_first_get_time"] = 10000;  -- Configuração do tempo de demora para recolhimento de itens MVP da pessoa que deu o maior dano no alvo poder pegar os itens. (Nota 4)
	["mvp_item_second_get_time"] = 10000; -- Configuração do tempo de demora para recolhimento de itens MVP da primeira e segunda pessoas que deram os maiores danos no alvo poderem pegar os itens. Configuração válida após a configuração after mvp_item_first_get_time ser executada. (Nota 4)
	["mvp_item_third_get_time"] = 2000;   -- Configuração para definir quanto tempo para o primeiro, o segundo e o terceiro MVP poderem pegar o item? Configuração válida após a configuração mvp_item_second_get_time ser executada. (Nota 4)
	["item_rate_common"] = 100;           -- Configurações de chances que itens comuns são dropados (Qualquer item normal, exceto cartas).
	["item_rate_common_boss"] = 100;
	["item_drop_common_min"] = 1;
	["item_drop_common_max"] = 10000;
	["item_rate_heal"] = 100;             -- Configurações das chances que itens de cura são dropados (Itens que recuperam hp e sp).
	["item_rate_heal_boss"] = 100;
	["item_drop_heal_min"] = 1;
	["item_drop_heal_max"] = 10000;
	["item_rate_use"] = 100;              -- Configurações das chances que outros itens usáveis são dropados, fora os itens de cura.
	["item_rate_use_boss"] = 100;
	["item_drop_use_min"] = 1;
	["item_drop_use_max"] = 10000;
	["item_rate_equip"] = 100;            -- Configurações das chances que os equipamentos são dropados.
	["item_rate_equip_boss"] = 100;
	["item_drop_equip_min"] = 1;
	["item_drop_equip_max"] = 10000;
	["item_rate_card"] = 100;             -- Configurações das chances que as cartas são dropadas.
	["item_rate_card_boss"] = 100;
	["item_drop_card_min"] = 1;
	["item_drop_card_max"] = 10000;
	["item_rate_mvp"] = 100;              -- Configurações das chances que os itens MVP são dropados. (direto no seu inventário)
	["item_drop_mvp_min"] = 1;
	["item_drop_mvp_max"] = 10000;
	["item_rate_adddrop"] = 100;          -- Configurações das chances que os itens são dropados por itens geradores de itens. (Ex: Velho Álbum de Cartas)
	["item_drop_add_min"] = 1;
	["item_drop_add_max"] = 10000;
	["item_rate_treasure"] = 100;         -- Configurações das chances que os itens dropados por tesouros. (Ex:Báu do Tesouro)
	["item_drop_treasure_min"] = 1;
	["item_drop_treasure_max"] = 10000;
	["item_logarithmic_drops"] = false;   -- Configuração para uso de drops logarítimicos? (Nota 1) Chance de Drops (x,y) = x * (5 - log(x)) ^ (ln(y) / ln(5)) Onde x é a chance original de cair um item e y é o modificador drop_rate.
	["drop_rate_item"] = false;           -- Configuração para que a quantidade de itens dropados por um monstro possa ser 0. (Nota 1)
	["drops_by_luk"] = 0;                 -- Configuração para fazer com que a sorte (LUK) afete a chance de drop de um item em pequenos valores. Configurar com valor 100 significa que cada ponto de sorte aumenta a chance de drop em 0,01%.
	["drops_by_luk2"] = 0;                -- Configuração para fazer com que o valor de sorte (LUK) aumente o drop de um item em maiores valores. olocar a variável em 100 significa que cada ponto de sorte aumenta a chance de drop em 1%.
	["alchemist_summon_reward"] = 1;      -- Configuração para monstros como: Esfera Marinha e Floras invocados por alquimistas dropam ou não dropam itens. 0 = Não dropa nada, 1 = Esfera Marinha dropa itens, 2 = Todos os monstros invocados por alquimistas dropam itens.
	["rare_drop_announce"] = 0;           -- Configuração para anunciar que o jogador dropou carta (chance 0.01%). Isso também anuncia a itens que foram recolhidos pela habilidade "Furto" quando roubar itens raros. 0 = Não mostra nenhum anúncio, 1 = Mostra anúncios para itens com 0,01% de chance. 333 = Mostra anúncios para itens com 3,33% de chance ou menos. 10000 = Mostra anúncios para todos os itens.
};