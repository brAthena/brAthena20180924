--    ________________________________________________________________________________________________________________________
--   /                                                                                                                        \
--   |                                       _           _   _   _                                                            |
--   |                                      | |__  _ __ / \ | |_| |__   ___ _ __   __ _                                       |
--   |                                      | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                                      |
--   |                                      | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                                      |
--   |                                      |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                                      |
--   |                                                                                                                        |
--   |                                                    brAthena Script                                                     |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Nome da configuração: battle.lua                                                                                       |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Criado por: Megasantos                                                                                                 |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Descrição: Configurações de Batalha.                                                                                   |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Changelog:                                                                                                             |
--   | 1.0 Adição das Configurações de dano [Megasantos]                                                                      |
--   | 1.1 Adição das Configurações de battleground e client [Megasantos]                                                     |
--   | 1.2 Adição das Configurações de drop [Megasantos]                                                                      |
--   | 1.3 Adição das Configurações de experiência, feature, mestre do jogo, clã e homunculus [Megasantos]                    |
--   | 1.4 Adição das Configurações de itens e misc [Megasantos]                                                              |
--   | 1.5 Adição das Configurações de monstro, grupo e bichinho de estimação [Megasantos]                                    |
--   | 1.6 Adição das Configurações de player, habilidades e status [Megasantos]                                              |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | - Anotações                                                                                                            |
--   | Nota 1: Valor optativo (true = ativado / false = desativado).                                                          |
--   |                                                                                                                        |
--   | Nota 2: Valor em porcentagem (100 para 100%)                                                                           |
--   |                                                                                                                        |
--   | Nota 3: Valor em unidade (1: Jogador, 2: Monstro, 4: Bicho de Estimação, 8: Homunculus, 16: Mercenários.               |
--   |                                                                                                                        |
--   | Nota 4: Valor em Milissegundos (1 segundo são 1000 milissegundos)                                                      |
--   |                                                                                                                        |
--   | Nota 5: 1: Não pode ser controlado por habilidade de suporte (exceto pelo dono).                                       |
--   |         4: Monstros sempre irão atrás deles ao invés de atacados pelos jogadores.                                      |
--   |         8: Copiam a velocidade do mestre a cada mudança de mapa.                                                       |
--   |        16: Exibem na janela de status, sorte/3+1 em vez do seu crítico real.                                           |
--   |        32: Seu ATQM mínimo é sempre o mesmo que seu máximo.                                                            |
--   |        64: Atraso no uso de habilidades é resetado quando vaporizado (morto).                                          |
--   |                                                                                                                        |
--   | Nota 6: 0: equipamentos desativados e cartas são anuladas(official)                                                    |
--   |         1: equipamentos desativados são desequipados, cartas desativadas são anuladas                                  |
--   |         2: equipamentos desativados são anulados, cartas desativadas se equipadas em equipamentos são desequipados     |
--   |         3: equipamentos desativados são desequipados, cartas desativadas se equipadas em equipamentos são desequipados |
--   |                                                                                                                        |
--   | Nota 7: 1: Quando ativado os monstros irão atualizar o local alvo repetidamente.                                       |
--   |         2: Fazem os monstros usarem a habilidade ataque rude caso sejam atacados e não consiguirem revidar             |
--   |         4: Se não definido monstros podem mudar de alvo caso sejam atacados corpo a corpo. Provocar se torna inútil    |
--   |         8: Monstros que estiverem seguindo seu alvo e perder o mesmo a perseguição vai ser interrompida                |
--   |        16: Quando definido, as habilidades dos monstros definidas para amigos também irão afetar neles mesmos          |
--   |        32: Quando definido, o ai de um monstro é executado para todos os monstros em mapas que possuem jogadores       |
--   |        64: Quando definido, o alvo de um monstros que mudar de mapa, o monstro irá andar até um portal. Use (mob_warp) |
--   |       256: Quando definido, o monstro vai escolher uma habilidade aleatória de sua lista e vai começar por ela         |
--   |       512: Quando definido, o atraso no uso da habilidade de um monstro não será aplicada para todas as entradas       |
--   |      1024: Quando definido os monstros tem alcance de 9 para todas as habilidades. Caso contrario seu range é normal   |
--   |                                                                                                                        |
--   | Nota 8: 1: Quando estiver andando                                                                                      |
--   |         2: UseSkillToID ( tentativa de usar habilidade )                                                               |
--   |         4: UseSkillToPos ( tentativa de usar habilidades aoe )                                                         |
--   |         8: Quando usar item (incluindo equipar/desequipar)                                                             |
--   |        16: Quando atacar                                                                                               |
--   |        32: Quando usar chat ( whisper, grupo, clã, bg, etc )                                                           |
--   |        64: Quando sentar/levantar                                                                                      |
--   |       128: Quando usar Emotion                                                                                         |
--   |       256: Quando dropar item                                                                                          |
--   |       512: Quando usar comandos @/#                                                                                    |
--   |                                                                                                                        |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Lembre-se que "NOTAS" dão recomendações importantes.                                                                   |
--   \________________________________________________________________________________________________________________________/

DAMAGE = {
	["enable_baseatk"] = 9;                    -- Configuração para habilitar o ataque físico (ataque base), a força (str) ajuda a aumentar o dano (damage). (Nota 3)
	["enable_perfect_flee"] = 1;               -- Configuração para habilitar a esquiva perfeita. (Nota 3)
	["enable_critical"] = 17;                  -- Configuração para habilitar os ataques críticos. (Nota 3)
	["mob_critical_rate"] = 100;               -- Configuração para do percentual de ataques críticos para tudo, exceto personagens. (Nota 2)
	["critical_rate"] = 100;
	["attack_walk_delay"] = 15;                -- Ataques normais devem causar um delay no movimento? Se não, personagens podem mover-se logo que eles começam um ataque. (Nota 3)
	["pc_damage_walk_delay_rate"] = 20;        -- Configuração do tempo de relaxamento (delay) para definir o movimento do personagem após ataques (hits). (Nota 2)
	["damage_walk_delay_rate"] = 100;
	["multihit_delay"] = 80;                   -- Configuração de tempo de relaxamento (delay) após ataques em seqüência ou múltiplos (multihits), habilidades como Trovão de Júpiter. (Nota 2)
	["player_damage_delay_rate"] = 100;        -- Configuração de tempo de relaxamento (delay) após um personagem receber dano. (Nota 2)
	["undead_detect_type"] = 0;                -- Configuração de raça ou elemento para que se considere um jogador como morto-vivo. 0 = Elemento morto-vivo, 1 = Raça morto-vivo, 2 = Ambas
	["attribute_recover"] = false;             -- Configuração de recuperação de HP (HP Recover) em diversos casos, como após o hit. (Nota 1)
	["min_hitrate"] = 5;                       -- Configurações de dano mínimo e máximo para ataques normais ou não críticos. (Nota 2)
	["max_hitrate"] = 100;
	["agi_penalty_type"] = 1;                  -- Configuração dos tipos de penalidades que serão aplicadadas à Esquiva (Flee) quando o número de monstros atacando o jogador for maior do que o número definido em agi_penalty_count. 0 = Penalidades não serão aplicadas. 1 = agi_penalty_num é reduzida da Esquiva (Flee) baseando-se em porcentagem. 2 = agi_penalty_num é reduzida da Esquiva (Flee) baseando-se em um número exato.
	["agi_penalty_target"] = 1;                -- Configuração dos alvos que serão afetados pela agi_penalty. O agi_penalty_type deve estar ativado.
	["agi_penalty_count"] = 3;                 -- Configuração da quantidade de inimigos necessários para atacar o alvo para que a penalidade de agi ocorra.
	["agi_penalty_num"] = 10;                  -- Configuração da quantidade de esquiva (flee) penalizada para cada inimigo, que atacar o personagem, a mais do que o configurado em agi_penalty_count.
	["vit_penalty_type"] = 1;                  -- Configuração dos tipos de penalidades que serão aplicadas à defesa calculada pela vitalidade. 0 = Penalidades não são aplicadas,  1 = vit_penalty_num é reduzida a partir de uma porcentagem %, 2 = vit_penalty_num é reduzida a partir de um número exato.
	["vit_penalty_target"] = 1;                -- Configuração dos alvos que serão afetados por vit_penalty. (Nota 3)
	["vit_penalty_count"] = 3;                 -- Configuração da quantidade de inimigos necessários para atacar o alvo para que a penalidade de vit ocorra.
	["vit_penalty_num"] = 5;                   -- Configuração da quantidade de vitalidade (vit) penalizada para cada inimigo, que atacar o personagem, a mais do que o configurado em vit_penalty_count.
	["weapon_defense_type"] = 0;               -- Configuração para método alternativo de cálculo da defesa para ataques físicos. 0 é desabilitado (usará a redução normal de defesa (def%) mais a redução da def2), 1 ou mais a defesa é subtraida (DEF* value).
	["magic_defense_type"] = 0;                -- Configuração para método alternativo de cálculo da defesa para ataques mágicos.(MDEF*value)
	["attack_direction_change"] = 0;           -- Configuração de direção do alvo. (Nota 3)
	["attack_attr_none"] = 14;                 -- Configuração para quem estiver utilizando ataques de elemento neutro não vai obter qualquer resultado. (Nota 3) Essas configurações servem para alteração dos personagens que usam cartas ou armaduras com tal elemento ou ataques de elemento normal (exemplo: ghostring). (Nota 3)
	["equip_natural_break_rate"] = 0;          -- Configuração da taxa na qual o equipamento pode quebrar. 1 = 0.01% de chance. (Padrão é 0)
	["equip_self_break_rate"] = 100;           -- Configuração da taxa global de que o seu próprio equipamento pode quebrar. Esta taxa afeta a taxa de penalidade de quebra de habilidades, tais como Força Violenta e sua taxa de quebra natural. (Nota 2)
	["equip_skill_break_rate"] = 100;          -- Configuração da taxa na qual você pode quebrar equipamentos dos inimigos. Essas configurações funcionam para as habilidades Terror Ácido e Golpe Estilhaçante. (Nota 2)
	["delay_battle_damage"] = true;            -- Configuração para que ataques com armas tenham um tempo de relaxamento (delay) antes do verdadeiro dano ser aplicado. (Nota 1)
	["arrow_decrement"] = 1;                   -- Configurações para consumo de flechas, munições e outros quando utilizados. 0 = Não,  1 = Sim, 2 = Sim, até mesmo para habilidades que não especificam o consumo.
	["autospell_check_range"] = false;         -- Configuração para verificar o bônus de script para itens 'AutoSpell' e 'Autospellwhenhit'. O padrão oficial é 'no', definindo-o como 'true' vai fazer o uso de suas habilidades com um alcance definido. Por exemplo, 'Lâminas Destruidoras' requer uma distância de 2 células antes de ser usado. (Nota 1)
	["knockback_left"] = true;                 -- Configuração que define se o atacante e o alvo na mesma célula, o alvo vai ser empurado para o lado esquerdo. Oficial: true (Nota 1)
	["snap_dodge"] = false;                    -- Configuração que define se o alvo é capaz de esquivar fora do tela. (Nota 1)
};

BATTLEGROUND = {
	["bg_flee_penalty"] = 20;                  -- Configuração para penalidade de esquiva (flee) nas Batalhas Campais. 20 = -20% da sua esquiva original.
	["bg_update_interval"] = 1000;             -- Configuração do intervalo de atualização para pontos no mini-mapa dos personagens de seu time. (Nota 4)
};

CLIENT = {
	["packet_obfuscation"] = 1;                -- Configuração para ativar suporte a ofuscação de pacotes (oficial). 0: desativado 1: opcional (não recomendável) - identifica se é necessário 2: ativado (recomendado)
	["min_chat_delay"] = 0;                    -- Configuração de intervalo mínimo (delay) ao ser enviada uma mensagem em whisper/global/grupo/clã (em milésimo de segundos).
	["min_hair_style"] = 0;                    -- Configurações de número válidos para paletas, sprites para cabelos, cores e estilos.
	["max_hair_style"] = 29;
	["min_hair_color"] = 0;
	["max_hair_color"] = 8;
	["min_cloth_color"] = 0;
	["max_cloth_color"] = 4;
	["hide_woe_damage"] = true;                -- Configuração para tornar visível, ou não, o dano recebido pelos jogadores durante a GdE. (Nota 1)
	["pet_hair_style"] = 100;                  -- Configuração para definir o número de "estilo de cabelo" que identifica  do bicho de estimação. NOTA: O cliente usa o "estilo de cabelo" no campo mob packet para identificar os monstros.
	["area_size"] = 14;                        -- Configuração do tamanho da área visível ao redor do jogador.
	["max_walk_path"] = 17;                    -- Configuração que define quantas células um jogador pode andar. Padrão: 17(Aegis)
	["max_lv"] = 99;                           -- Configuração do nível máximo para jogadores.
	["aura_lv"] = 99;                          -- Configuração do nível requerido para obter aura. Níveis maiores necessitam de edição no client
	["client_limit_unit_lv"] = 0;              -- Configuração que define os tipos de unidades afetadas pelas configurações de max_lv e aura_lv. (Nota 3)
	["wedding_modifydisplay"] = false;         -- Configuração para terno e vestido de casamento serem exibidos de forma diferente. (Nota 1)
	["save_clothcolor"] = true;                -- Configuração para salvar as cores modificadas. (Isso irá prejudicar o desempenho) (Nota 1)
	["wedding_ignorepalette"] = false;         -- Configuração para ignorar cores nas roupas de casamento. save_clothcolor e wedding_modifydisplay, têm que estar ativados.
	["xmas_ignorepalette"] = false;            -- Configuração para ignorar cores na roupa de natal.
	["summer_ignorepalette"] = false;          -- Configuração para ignorar cores na roupa de verão.
	["hanbok_ignorepalette"] = false;          -- Configuração para ignorar cores na roupa Hanbok.
	["display_version"] = false;               -- Configuração para mostrar a última versão do brAthena para todos usuários que fizerem login.
	["display_hallucination"] = true;          -- Configuração para habilitar efeitos de alucinação. Em clients 2012 efeito foi alterado, para reduzir problemas com lag.
	["display_status_timers"] = true;          -- Configuração para exibição dos status de habilidades.
	["client_reshuffle_dice"] = true;          -- Configuração para que o "jogo de dados" com emoticon "/dice" seja randômico. Definindo como "false" você irá impedir que packets falsos sejam forjados e enviados ao cliente de forma a conseguir o número desejado.
	["client_sort_storage"] = false;           -- Configuração para que o armazém seja aberto depois de enviar ao cliente. Habilitar essa opção diminui a capacidade do emulador.
	["client_accept_chatdori"] = 1;            -- Configuração de duração em minutos para auto mute do client. Não ative se você ativou comandos para jogadores, porque o cliente vê vários comandos em sucessão como spam. Padrão: 1 (1 minuto) 0 = Desativado
	["client_emblem_max_blank"] = 100;         -- Configuração que permite bloquear o uso de pixels transparentes em emblemas de clãs. Se definido como 100 (permite 100% de pixels transparentes)
};

DROPS = {
	["item_auto_get"] = false;                 -- Configuração para permitir que itens que forem dropados irem direto para o inventário do usuário. (Nota 1)
	["flooritem_lifetime"] = 60000;            -- Configuração do tempo que os itens demoram para desaparecerem do chão depois de dropado. (Nota 4)
	["item_first_get_time"] = 3000;            -- Configuração do tempo de demora para recolhimento de itens da pessoa que deu o maior dano no alvo poder pegar os itens. (Nota 4)
	["item_second_get_time"] = 1000;           -- Configuração do tempo de demora para recolhimento de itens da primeira e segunda pessoas que deram os maiores danos no alvo poderem pegar os itens. Configuração válida após a configuração "item_first_get_time" ser executada. (Nota 4)
	["item_third_get_time"] = 1000;            -- Configuração do tempo de demora para recolhimento de itens da primeira, segunda e terceira pessoas que deram os maiores danos no alvo poderem pegar os itens. Configuração válida após a configuração "item_second_get_time" ser executada. (Nota 4)
	["mvp_item_first_get_time"] = 10000;       -- Configuração do tempo de demora para recolhimento de itens MVP da pessoa que deu o maior dano no alvo poder pegar os itens. (Nota 4)
	["mvp_item_second_get_time"] = 10000;      -- Configuração do tempo de demora para recolhimento de itens MVP da primeira e segunda pessoas que deram os maiores danos no alvo poderem pegar os itens. Configuração válida após a configuração after mvp_item_first_get_time ser executada. (Nota 4)
	["mvp_item_third_get_time"] = 2000;        -- Configuração para definir quanto tempo para o primeiro, o segundo e o terceiro MVP poderem pegar o item? Configuração válida após a configuração mvp_item_second_get_time ser executada. (Nota 4)
	["item_rate_common"] = 100;                -- Configurações de chances que itens comuns são dropados (Qualquer item normal, exceto cartas).
	["item_rate_common_boss"] = 100;
	["item_drop_common_min"] = 1;
	["item_drop_common_max"] = 10000;
	["item_rate_heal"] = 100;                  -- Configurações das chances que itens de cura são dropados (Itens que recuperam hp e sp).
	["item_rate_heal_boss"] = 100;
	["item_drop_heal_min"] = 1;
	["item_drop_heal_max"] = 10000;
	["item_rate_use"] = 100;                   -- Configurações das chances que outros itens usáveis são dropados, fora os itens de cura.
	["item_rate_use_boss"] = 100;
	["item_drop_use_min"] = 1;
	["item_drop_use_max"] = 10000;
	["item_rate_equip"] = 100;                 -- Configurações das chances que os equipamentos são dropados.
	["item_rate_equip_boss"] = 100;
	["item_drop_equip_min"] = 1;
	["item_drop_equip_max"] = 10000;
	["item_rate_card"] = 100;                  -- Configurações das chances que as cartas são dropadas.
	["item_rate_card_boss"] = 100;
	["item_drop_card_min"] = 1;
	["item_drop_card_max"] = 10000;
	["item_rate_mvp"] = 100;                   -- Configurações das chances que os itens MVP são dropados. (direto no seu inventário)
	["item_drop_mvp_min"] = 1;
	["item_drop_mvp_max"] = 10000;
	["item_rate_adddrop"] = 100;               -- Configurações das chances que os itens são dropados por itens geradores de itens. (Ex: Velho Álbum de Cartas)
	["item_drop_add_min"] = 1;
	["item_drop_add_max"] = 10000;
	["item_rate_treasure"] = 100;              -- Configurações das chances que os itens dropados por tesouros. (Ex:Báu do Tesouro)
	["item_drop_treasure_min"] = 1;
	["item_drop_treasure_max"] = 10000;
	["item_logarithmic_drops"] = false;        -- Configuração para uso de drops logarítimicos? (Nota 1) Chance de Drops (x,y) = x * (5 - log(x)) ^ (ln(y) / ln(5)) Onde x é a chance original de cair um item e y é o modificador drop_rate.
	["drop_rate_item"] = false;                -- Configuração para que a quantidade de itens dropados por um monstro possa ser 0. (Nota 1)
	["drops_by_luk"] = 0;                      -- Configuração para fazer com que a sorte (LUK) afete a chance de drop de um item em pequenos valores. Configurar com valor 100 significa que cada ponto de sorte aumenta a chance de drop em 0,01%.
	["drops_by_luk2"] = 0;                     -- Configuração para fazer com que o valor de sorte (LUK) aumente o drop de um item em maiores valores. olocar a variável em 100 significa que cada ponto de sorte aumenta a chance de drop em 1%.
	["alchemist_summon_reward"] = 1;           -- Configuração para monstros como: Esfera Marinha e Floras invocados por alquimistas dropam ou não dropam itens. 0 = Não dropa nada, 1 = Esfera Marinha dropa itens, 2 = Todos os monstros invocados por alquimistas dropam itens.
	["rare_drop_announce"] = 0;                -- Configuração para anunciar que o jogador dropou carta (chance 0.01%). Isso também anuncia a itens que foram recolhidos pela habilidade "Furto" quando roubar itens raros. 0 = Não mostra nenhum anúncio, 1 = Mostra anúncios para itens com 0,01% de chance. 333 = Mostra anúncios para itens com 3,33% de chance ou menos. 10000 = Mostra anúncios para todos os itens.
};

EXPERIENCE = {
	["base_exp_rate"] = 100;                   -- Configuração da taxa em que a EXP de base é concedida. (Nota 2)
	["job_exp_rate"] = 100;                    -- Configuração da taxa em que a EXP de job é concedida. (Nota 2)
	["multi_level_up"] = false;                -- Configuração para que o jogador possa passar mais de um nível de uma vez. (Nota 1)
	["max_exp_gain_rate"] = 0;                 -- Configuração da taxa máxima de EXP que pode ser concedida ao matar um monstro. (10 = 1.0%)
	["exp_calc_type"] = 0;                     -- Configuração do método de conceder a EXP ao matar um monstro: 0 = dano dado no monstro / dano total dado, 1 = dano dado no monstro / max_hp. Usando a opção 1 disabilita o bônus que o primeiro atacando quando está dividindo experiência ganha-a dobrada.
	["exp_bonus_attacker"] = 25;               -- Configuração da taxa de EXP concedida por ataques únicos ao monstro (Quanto mais ataques ("hits" + EXP)). Ex: Para 5 atacantes temos 25 para cada, +(25*4)% = 100% exp
	["exp_bonus_max_attacker"] = 12;           -- Configuração do número máximo de atacantes em que a taxa de EXP será concedida. Ex: Se você por 5 atacantes teremos 4*número de atacantes = 12.
	["mvp_exp_rate"] = 100;                    -- Configuração da taxa de EXP concedida por MVPs. (Nota 2)
	["quest_exp_rate"] = 100;                  -- Configuração da taxa de EXP de base/job concedida por NPCs. (Nota 2)
	["heal_exp"] = 0;                          -- Configuração da taxa de EXP de job, concedida pela habilidade curar (100 é o mesmo que a quantidade da cura, 200 é o dobro.
	["resurrection_exp"] = 0;                  -- Configuração da taxa de experiência ganha no processo de ressurreição, 1 = 0,01%. O cálculo é feito pela experiência ganha * diferença de leveis da pessoa que recebeu.
	["shop_exp"] = 0;                          -- Configuração da taxa de EXP de job quando se usa a habilidade "Desconto". Em incrementos de 0,01% - 100 é de 1%, 10000 é normal, 20000 é o dobro. A forma é calculada da seguinte maneira (dinheiro recebido * skill lv) * shop_exp / 10000.
	["pvp_exp"] = true;                        -- Configuração que habilita ganho de EXP para jogadores em cenários PVP.
	["death_penalty_type"] = 1;                -- Configuração da penalidade de quando um jogador morre. 0 = Sem penalidade, 1 = Perde uma % do nível atual, 2 = Perde uma % da experiência total.
	["death_penalty_base"] = 100;              -- Configuração da taxa de penalidade da EXP de base. (Cada 100 equivale a 1% da experiência)
	["death_penalty_job"] = 100;               -- Configuração da taxa de penalidade da EXP de job. (Cada 100 equivale a 1% da experiência)
	["zeny_penalty"] = 0;                      -- Configuração de penalidade com pagamento de zenys quando um jogador morre. É uma porcentagem de seus zenys totais, então 100 = 1%.
	["disp_experience"] = false;               -- Configuração para mostrar a experiência adquirida ao matar um monstro. (Nota 1)
	["disp_zeny"] = false;                     -- Configuração para mostrar o zeny ganho. (de mobs, trocas, etc) (Nota 1)
	["use_statpoint_table"] = true;            -- Configuração para usar o conteúdo da db/statpoint.txt quando resetar os atributos ou passar de nível. (Nota 1)
};

FEATURE = {
	["buying_store"] = true;                   -- Loja de Compras. Requer Cliente: 2010-04-20aRagexeRE ou maior. (Nota 1)
	["search_stores"] = true;                  -- Pesquisa e Loja. Requer Cliente: 2010-08-03aRagexeRE ou maior. (Nota 1)
	["atcommand_suggestions"] = true;          -- Sugestões Atcommand. Se um comando atcommand for escrito incorreto, ele vai sugerir o completo. (Nota 1)
	["banking"] = true;                        -- Sistema de Banco. Requer Cliente: 2013-07-24aRagexe ou maior. (Nota 1)
	["auction"] = true;                        -- Sistema de Leilão. Sistema tornou-se instável em clients 2012. Foi corrigido em clientes 2013-05-15 ou maior.
	["roulette"] = false;                      -- Sistema de Roleta. Requer Cliente:: 2014-10-22bRagexe ou maior. (Nota 1)
};

GAME_MASTER = {
	["spawn_quantity_limit"] = 100;            -- Configuração da quantidade máxima de monstros que podem ser invocados por comando. 0 = ilimitado.
	["slave_clone_limit"] = 25;                -- Configuração da quantidade máxima de clones escravos que podem ser invocados através do comando @slaveclone. 0 = ilimitado.
	["partial_name_scan"] = true;              -- Configuração de pesquisa de nomes dos jogadores. Se você configurar com 'false', os comandos requerem o nome exato do jogador.
	["max_stat_bypass"] = false;               -- Permitir que GMs ultrapassem os parâmetros padrões de status ?
	["ban_hack_trade"] = 5;                    -- Configuração para punir pessoas que tentem fazer clone de itens via trade. 5 = 5 minutos, para desabilitar use 0.
	["mobinfo_type"] = false;                  -- modifica @mobinfo e @whodrops para exibir ao usuários a taxa de queda real e @iteminfo para não exibir a taxa de queda mínima do item. Requer RENEWAL_EXP ou RENEWAL_DROP ser habilitado (src/map/config/renewal.h)
	["gm_ignore_warpable_area"] = 2;           -- Definir o id de grupo mínimo para ignorar células inválidas quando teleportar.

};

GUILD = {
	["emperium_check"] = true;                 -- Configuração para determinar a necessidade de consumo do item emperium ao criar uma guilda. (Nota 1)
	["exp_limit"] = 50;                        -- Configuração da porcentagem máxima retirada da exp recebida para ser doada à guilda.
	["max_castles"] = 0;                       -- Configuração do nº máximo de castelos que uma guilda pode possuir. 0 = ilimitado.
	["skill_relog_delay"] = false;             -- Configuração para reiniciar o atraso no uso de habilidades depois de relogar. (Nota 1)
	["castle_defense_rate"] = 100;             -- Configuração de ajuste do dano contra os Guardiões de um castelo. (Nota 2)
	["gvg_flee_penalty"] = 20;                 -- Configuração de penalidade para Esquiva em mapas de GvG. (O valor oficial é 20). (Nota 2)
	["require_glory_guild"] = false;           -- Configuração para que a habilidade "Glória da Guilda" possa ser aprendida na janela do clã, fazendo com que ela seja um requisito para mudar o emblema. (Nota 1)
	["max_guild_alliance"] = 3;                -- Configuração para limitar alianças de uma Guilda. Se você deseja mudar esse valor, limpe a tabela de alianças da guilda no seu banco de dados.
	["notice_changemap"] = 2;                  -- Configuração que exibe a mensagem do Clã toda vez em que o personagem teleportar. 0 = desativado, 1 = Após mudar mapa, 2 = independentemente de mudar de mapa.
	["castle_invite"] = false;                 -- Membros podem ser convidados do clã em WoE/GvG? (Nota 1)
	["castle_expulsion"] = false;              -- Membros podem ser expulsos do clã em WoE/GvG? (Nota 1)
};

HOMUNCULUS = {
	["hom_setting"] = 29;                      -- Configuração dos Homunculus. (Nota 5)
	["homunculus_friendly_rate"] = 100;        -- Configuração da taxa de intimidade obtida através da alimentação. (Nota 2)
	["hom_rename"] = false;                    -- Configuração para renomear um homunculus mais de uma vez. (Nota 1)
	["hvan_explosion_intimate"] = 45000;       -- Configuração de intimidade necessária para utilizar a habilidade "Explosão biológica" do Vanilmirth.
	["homunculus_show_growth"] = true;         -- Configuração para mostrar o aumento de atributos para o mestre a cada vez que o homunculus aumenta de nível.
	["homunculus_autoloot"] = true;            -- Configuração para autoloot com homunculus.
	["homunculus_auto_vapor"] = true;          -- Configurações para saber se um homunculus vaporiza-se (morre) junto com o dono.
	["hom_max_level"] = 99;                    -- Nível máximo para Homunculus.
	["hom_S_max_level"] = 150;                 -- Nível máximo para Homunculus S.
};

ITEM = {
	["vending_max_value"] = 1000000000;        -- Configuração da quantidade de zenys máximos que um mercador pode cobrar usando a habilidade comércio.
	["vending_over_max"] = true;               -- Configuração que permite a compra mesmo se o jogador exceder o limite máximo de zenys. Marcado como "true" o restante dos zenys acima da capacidade do personagem serão apagados.
	["vending_tax"] = 200;                     -- Configuração de imposto aplicado à todas transações de vendas (exemplo: 10000 = 100%, 50 = 0.50%). Quando o imposto é aplicado, o preço máximo do item é cobrado ao comprador, mas o vendedor não terá o preço total pago.
	["buyer_name"] = true;                     -- Configuração para mostrar o nome do comprador quando o item é vendido.
	["weapon_produce_rate"] = 100;             -- Configuração da chance de forjar um item com sucesso. (Nota 2)
	["potion_produce_rate"] = 100;             -- Configuração da chance de criar uma poção com sucesso. (Nota 2)
	["produce_item_name_input"] = 3;           -- Configuração para que os itens tenham o nome de seu criador neles. 1 = Armas, 2 = Poções, 4 = Flechas, 8 = Água Benta, 16 = Garrafas de Veneno, 128 = Outros.
	["dead_branch_active"] = true;             -- Configuração para que os monstros invocados por galho seco tornem-se agressivos.
	["random_monster_checklv"] = false;        -- Configuração para que os monstros invocados tenham um nível de base maior do que o personagem.
	["ignore_items_gender"] = true;            -- Configuração para que os jogadores possam usar todos os itens sem restrições de gênero. Anéis de Casamentos Chicotes/Instrumentos Musicais serão checados independentemente.
	["item_check"] = false;                    -- Configuração que remove item do inventário se ele não é carregado no item_db.
	["item_use_interval"] = 100;               -- Configuração de quanto tempo é necessário para que o jogador use outro item. Nos servidores oficiais é usado 0, mas é configurado para 100ms por medidas de segurança contra bots/macros.
	["cashfood_use_interval"] = 60000;         -- Configuração de quanto tempo é necessário para o uso de "cash food". 60000 = 1 min
	["gtb_sc_immunity"] = 50;                  -- Configuração do nível necessário de bNoMagicDamage para que os status sejam bloqueados. Se você deixar em 50 um item pode dar bNoMagicDamage,40; e reduzirá o dano mágico em 40%, mas não bloqueará as mudanças de status.
	["autospell_stacking"] = false;            -- Configuração para permitir que cartas com as mesmas funções tenham resultados unidos.
	["item_restricted_consume"] = true;        -- Configuração para que itens consumíveis sejam consumidos ao tentar usá-los ?
	["item_enabled_npc"] = true;               -- Habilitar todos os NPC's para permitir a mudança de equipamentos ao interagir ?
	["unequip_restricted"] = 0;                -- Desequipar equipamentos que estão desativados em map_zone_db.conf? (Nota 6)
};

MISC = {
	["pk_mode"] = 0;                           -- Configuração que habilita o modo PK. Se o modo PK (Player Kill) estiver ativado, o servidor inteiro será considerado PVP (exceto cidades), e jogadores poderão atacar uns aos outros. Quando jogadores matam monstros com 20 níveis mais elevado que o seu, eles receberão exp adicional de 15% e 25% de chance de receber mais itens. Se pk_mode é definido como 2 em vez de 1, os jogadores receberão um penalidade de manner de 5 cada vez que matarem outro jogador.
	["manner_system"] = 31;                    -- Configuração do sistema de Manner/Karma. As especificações da punição punição podem ser: 0: Nenhuma, 1: Não pode falar (Inclui PMs, msgs de clã/grupo, etc), 2: Desabilita o uso de habilidades, 4: Desabilita o uso de comandos, 8: Desabilita usar/pegar/dropar itens, 16: Desabilita criar chats e shops, 15: Oficial.
	["pk_min_level"] = 55;                     -- Configuração que define o nível mínimo para que um jogador possa participar de um PK.
	["pk_level_range"] = 0;                    -- Configuração que define a Diferença máxima de nível de base entre dois jogadores para que eles possam atacar uns aos outros.
	["skill_log"] = false;                     -- Configuração que define se deve mostrar log de habilidades no console.
	["battle_log"] = false;                    -- Configuração que define se deve mostrar battle log.
	["etc_log"] = false;                       -- Configuração que define se deve mostrar outras coisas.
	["warp_point_debug"] = false;              -- Configuração que define se deve mostrar o log de pontos de teleporte. Se for definido como 'true', os pontos aparecerão como bandeiras.
	["night_at_start"] = false;                -- Configuração que define se o servidor iniciará com dia ou noite. true = dia. false = noite.
	["day_duration"] = 0;                      -- Configuração que define a duração do dia em milissegundos (1800000 = 30 min). 0 = Desabilitado
	["night_duration"] = 0;                    -- Configuração que define a duração da noite em milissegundos (1800000 = 30 min). 0 = Desabilitado
	["duel_allow_pvp"] = false;                -- Configuração que define se deve permitir duelos em mapas PVP.
	["duel_allow_gvg"] = false;                -- Configuração que define se deve permitir duelos em mapas GVG.
	["duel_allow_teleport"] = false;           -- Configuração que define se deve permitir warp durante um duelo.
	["duel_autoleave_when_die"] = true;        -- Configuração que define se o jogador deve deixar o duelo automaticamente após a morte.
	["duel_time_interval"] = 60;               -- Configuração que define o intervalo para o uso do comando @duel em minutos.
	["duel_only_on_same_map"] = false;         -- Configuração que define o uso de duelos restrito em mapas.
	["official_cell_stack_limit"] = 1;         -- Configurações que define o número máximo de personagems que podem ficar na mesma célula. Para que essas configurações funcionem também será necessário setá-las em src/map/map.h.
	["custom_cell_stack_limit"] = 1;
	["check_occupied_cells"] = true;           -- Permitir ocupar células já ocupadas por outros objetos?
	["autotrade_mapflag"] = false;             -- Configuração que define se deve permitir, ou não, @autotrade apenas em mapas com a mapflag autotrade?
	["at_timeout"] = 0;                        -- Configuração que define o número (em minutos) limite para que jogadores com autotrade permaneçam no servidor. Jogadores após usar autotrade serão expulsos do servidor em X minutos. 0 = Desabilitado.
	["auction_feeperhour"] = 12000;            -- Configuração que define o preço por hora do Leilão. Padrão: 12,000z por hora.
	["auction_maximumprice"] = 500000000;      -- Configuração que define o preço máximo para um item do Leilão.
	["searchstore_querydelay"] = 10;           -- Configuração prazo mínimo entre cada consulta de pesquisa de loja em segundos.
	["searchstore_maxresults"] = 30;           -- Configuração quantidade máxima de resultados de uma consulta de pesquisa de loja, antes que seja cancelado.
	["cashshop_show_points"] = false;          -- Configuração que mostra quantidade ganha ou perdida de cash.
	["mail_show_status"] = 0;                  -- Configuração que mostra se o sistema de e-mails é exibido ao logar na conta. 0 = Não, 1 = Sim, 2 = Sim, quando há e-mails não lidos.
	["mon_trans_disable_in_gvg"] = false;      -- Configuração que define se as transformações são removidas durante a Guerra do Emperium.
	["case_sensitive_aegisnames"] = true;      -- Configuração que define se pesquisas de AegisName e SpriteName são case sensitive (maiúsculas e minúsculas) // Quando isso é definido como sim pesquisas de item e monstro através de atcommands e comandos de script irá corresponder AegisNames e SpriteNames apenas quando o caso corresponda.
};

MONSTER = {
	["mvp_hp_rate"] = 100;                     -- Configuração que define a taxa de HP dos MVPs. (Nota 2)
	["monster_hp_rate"] = 100;                 -- Configuração que define a taxa de HP dos monstros normais, ou seja, monstros que não são MVPs. (Nota 2)
	["monster_max_aspd"] = 199;                -- Configuração que define o nível de velocidade de ataque máximo de um monstro.
	["monster_ai"] = 0;                        -- Configuração para definir as várias configurações dos monstros relacionadas ao AI. (nota 7)
	["mob_chase_refresh"] = 3;                 -- Quando um monstro deve verificar sua perseguição? 0 = A cada 100ms (MIN_MOBTHINKTIME), 1 = A cada célula movida, 2 = A cada duas células movidas, 3 = A cada 3 células movidas (oficial), x = A cada x células movidas. Independentemente dessa configuração, um monstro irá sempre verificar se sua perseguição chegou a seu destino. Aumente esse valor se você quer fazer os monstros continuarem se movendo depois que eles perderam seu alvo.
	["mob_warp"] = 0;                          -- Configuração que define se os monstros poderão ser teleportados. 0 = Desativado, 1 = Ativar 'monster-teleport' quando estiverem em um portal, 2 = Ativar 'monster-teleport' quando estiverem em teleportes originados pelos Sacerdotes, 4 = Desativar teleporte quando o mapa alvo conter o mapflag 'nobranch'.
	["mob_active_time"] = 0;                   -- Caso isso for setado com um valor acima de 0, será definido o tempo (em ms) que os monstros terão seu 'AI' ativo depois de todos os jogadores terem se afastado de seu espaço de visão.
	["boss_active_time"] = 0;
	["view_range_rate"] = 100;                 -- Configuração que define o ajuste da visão de alcance de Monstro e Bichos de Estimação. Esta é a coluna range2 no mob_db.
	["chase_range_rate"] = 100;                -- Configuração que define a taxa de perseguição que o mob concede antes de desistir da perseguição. (quanto mais longe o jogador está do seu campo de visão). Esta é a coluna range3 no mob_db.
	["monster_active_enable"] = true;          -- Configuração que define se deve permitir que monstros sejam agressivos e ataquem primeiro? (Nota 1)
	["override_mob_names"] = 0;                -- Configuração que define se os nomes listados no mob_db devem sobrescrever os nomes especificados nos arquivos de envocação (spawn) de mob. 0 = Não, 1 = Sempre usar o nome da coluna do mob_db (nome em inglês do monstro), 2 = Sempre usar o nome da coluna do mob_db (nome  do monstro original do kRO)
	["monster_damage_delay_rate"] = 100;       -- Configuração que define a taxa de atraso no dano de um monstro.
	["monster_loot_type"] = 0;                 -- Configuração que define as ações de coletas de itens feita pelos monstros. 0 = O monstro consumirá o item, 1 = O monstro não consumirá o item.
	["mob_skill_rate"] = 100;                  -- Configuração que define a chance de um monstro carregar uma habilidade. Se definida como 0 as habilidades dos monstros são desabilitadas.
	["mob_skill_delay"] = 100;                 -- Configuração que define o ajuste no atraso da habilidade de um monstro. Depois que um monstro carregar uma habilidade, há um atraso para que seja possível usá-la novamente.
	["mob_count_rate"] = 100;                  -- Configuração que define a taxa de monstros em um mapa, 200 seria o dobro do spawn normal.
	["mob_spawn_delay"] = 100;                 -- Configurações que define a taxa de renascimento dos monstros em um mapa. 50 tornaria o renascimento muito mais rápido (metade do tempo de atraso). Essa opção não afeta monstro que possuem renascimento imediato (maioria dos monstros normais).
	["plant_spawn_delay"] = 100;
	["boss_spawn_delay"] = 100;
	["no_spawn_on_player"] = 0;                -- Configuração que define se os monstros não serão invocados no campo de visão dos jogadores. 0 = desativado, x = números de tentativas antes de desistir 
	["force_random_spawn"] = false;            -- Configuração que define as coordenadas de nascimento nos arquivos devem ser ignoradas ?
	["slaves_inherit_mode"] = 2;               -- Configuração que define se os escravos devem herdar traços passivos/agressivos de seu mestre. 0 = Não, manter modo original, 1 = Escravo sempre agressivo, 2 = Escravo sempre passivo, 3 = Mesmo estado agressivo/passivo de seu dono.
	["slaves_inherit_speed"] = 3;              -- Configuração que define se os escravos devem ter a mesma velocidade que seu mestre. 0 = Nunca, 1 = Se o mestre pode andar, 2 = Se o mestre não pode andar (mesmo sem se mexer Mobs têm uma velocidade em seu mob_db), 3 = Sempre.
	["summons_autospells"] = true;             -- Configuração que define se os ataques de monstros invocados (escravos) (alquimistas, ou monstros gerados pelo @summon) terão chance de despertar o efeito de cartas de seu dono.
	["retaliate_to_master"] = true;            -- Configuração que define quando um monstro é atacado por outro, se o monstro vai atacar o dono do mesmo ao invés do próprio monstro.
	["mob_changetarget_byskill"] = false;      -- Configuração que define se monstros devem trocar de alvo temporariamente quando uma habilidade ativa uma habilidade de contra-ataque.
	["monster_change_recover"] = true;         -- Configuração que define se a classe de um monstro mudar, se o mesmo recuperará completamente o HP.
	["show_mob_info"] = 0;                     -- Configuração que define se poderá mostrar algumas informações do monstros próximo ao seu nome. 0 = Desabilitado, 1: Mostrar o HP do monstro (Formato: Hp/MaxHp), 2 = Mostrar o HP do monstro (Formato: Percentual do total de vida), 4 = Mostrar o nível do monstro.
	["zeny_from_mobs"] = false;                -- Configuração que define se deve ganhar Zeny ao matar monstros?
	["mobs_level_up"] = false;                 -- Configuração que define os níveis dos Monstros (monstro vai evoluir de nível a cada vez que matar um jogador e ficarão cada vez mais fortes).
	["mobs_level_up_exp_rate"] = 1;            -- Taxa de experiência é calculada dessa maneira: ((nível do monstro-nível original do monstro)*(exp*(mobs_level_up_exp rate/100)))
	["dynamic_mobs"] = true;                   -- Configuração que define se deve usar monstros dinâmicos?
	["mob_remove_damaged"] = true;             -- Configuração que define se deve remover monstro mesmo que tenham sofrido dano.
	["mob_remove_delay"] = 300000;             -- Configuração que define o atraso antes de remover monstro de mapas vazios. (padrão 5 min = 300 segs)
	["mob_npc_event_type"] = 1;                -- Configuração que define em quem o mob npc_event é executado quando um monstro é morto. 0 = Sobre o jogador que fez a maior parte dos danos para no mob, 1 = Ligado quando o jogador matou o mob (se for morto por um não-jogador, recorre ao tipo 0). Isso afeta quem ganha o Castelo, quando o Emperium está quebrado.
	["ksprotection"] = 0;                      -- Configuração que define o tempo para ativar a proteção contra "roubo da morte" (kill steal) de um monstro. (nota 4) 0 = Desativado
	["mob_slave_keep_target"] = true;          -- Configuração quando monstros invocados por MVPs, devem manter seu alvo quando são invocados para perto de seu mestre ?
	["mvp_tomb_enabled"] = true;               -- Configuração que define se será criado um Túmulo quando o jogador matar um MvP (MvPs citados em npc/monstros/... e utilizando o comando boss_monster).
	["show_monster_hp_bar"] = true;            -- Configuração para mostrar a barra de hp dos monstros? Só funciona em cliente 2012-04-04aRagexeRE em diante
	["mob_size_influence"] = false;            -- Configuração que define se o tamanho dos monstros especialmente invocados influência na experiência ganha, taxas de drop, status de monstro. Se o monstro é grande, ele vai dar duas vezes a experiência, aumentar as taxas de drop por duas vezes e dobrar todos os status (hp, str, agi etc). Mas se o monstro é pequeno tudo será dividido por dois (experiência, status e taxas de drop). Só tem efeito sob o comando de 'monstro', @monsterbig e @monstersmall.
	["mob_icewall_walk_block"] = 220;          -- Como um monstro deveria ser preso por uma Barreira de Gelo invocada diretamente nele? Em servidores oficiais, monstros só podem deixar uma Barreira de Gelo no oeste e Sul. Se seu alvo é o norte ou leste. Eles vão tentar continuamente a persegui-lo, mas não conseguem. 0 = monstro não vai ser preso na Barreira de Gelo, 1 = monstro irá se comportar como um monstro preso, 2-255 = Número de loops de um monstro irá percorrer o comportamento descrito acima, antes de ele se libertar da Barreira de Gelo.
	["boss_icewall_walk_block"] = 1;
};

PARTY = {
	["show_steal_in_same_party"] = false;      -- Configuração para mostrar o nome no grupo de alguém que usar a habilidade de roubo (Furtar, Afanar)
	["party_update_interval"] = 1000;          -- Configuração do intervalo antes de atualizar o ponto no mini-mapa que mostra onde o membro do grupo está. (nota 4)
	["party_hp_mode"] = 0;                     -- Configuração do método usado para atualizar as barras de HPs dos membros do grupo. 0 = Aegis - barra é atualizada a cada mudança de HP (banda intensiva), 1 =  eAthena/brAthena - barra é atualizada de acordo com a atualização dos pontos no mini-mapa (demora até 1 segundo).
	["party_show_share_picker"] = true;        -- Configuração que define quando a "Divisão de Grupo" está ativado, dizer qual membro recebeu o item? 
	["show_picker_item_type"] = 112;           -- Que tipos de itens vai ser anunciado quando 'show_party_share_picker' está ativo? 1 = IT_HEALING,  2 = IT_UNKNOWN,  4 = IT_USABLE, 8 = IT_ETC, 16 = IT_WEAPON, 32 = IT_ARMOR, 64 = IT_CARD, 128 = IT_PETEGG, 256 = IT_PETARMOR, 512 = IT_UNKNOWN2, 1024 = IT_AMMO,   2048 = IT_DELAYCONSUME, 262144 = IT_CASH
	["party_item_share_type"] = 0;             -- Configuração do método de distribuição, quando o compartilhamento de itens está ativado em um grupo: 0 = Normal (item vai para um membro aleatório do grupo), 1 = Compartilhamento é desativado para drops de não forem de monstros (Jogador/Pet), 2 = Rodízio (itens são distribuidos uniformemente entre os membros), 3 = 1+2
	["idle_no_share"] = 0;                     -- Configuração da distribuição de Exp/Itens será desabilitada para membros ociosos/ausentes do grupo? Configure como '0', ou a quantidade de segundos necessários para considerar um personagem ocioso.
	["party_even_share_bonus"] = 0;            -- Configuração que define se deve dar bônus adicional de experiência para os membros do grupo envolvido? Se definido para 10, a divisão de um mesmo grupo de 5 pessoas receberão +40% exp (4 Membros * 10% de exp): experiência de grupo de 140% no total, para que cada membro receba 140%/5 = 28% exp (em vez de 20%).
	["display_party_name"] = false;            -- Exibir nome do grupo, independentemente se o jogador está em um clã.
};

PET = {
	["pet_catch_rate"] = 100;                  -- Configuração que define a taxa para captura de bichos de estimação.
	["pet_rename"] = false;                    -- Configuração que define se os bichinhos de estimação podem ser renomeados.
	["pet_friendly_rate"] = 100;               -- Configuração que define a taxa de aumento da lealdade do bicho de estimação pela alimentação.
	["pet_hungry_delay_rate"] = 100;           -- Configuração que define a taxa na qual o bichinho de estimação fica com fome.
	["pet_hungry_friendly_decrease"] = 5;      -- Configuração que dfine a taxa de fome do seu bichinho de estimação. A lealdade do seu bichinho de estimação vai de 0 a 1000, em 0 ele foge.
	["pet_equip_required"] = true;             -- Configuração que define se o bichinho necessitará do equipamento para usar sua habilidade.
	["pet_attack_support"] = false;            -- Configuração que define se jogadores poderão usar bichinhos como suporte no ataque contra monstro.
	["pet_damage_support"] = false;            -- Configuração que define quando o dono receber um ataque, se seu bichinho de estimação deve revidar.
	["pet_support_min_friendly"] = 900;        -- Configuração que define o mínimo de lealdade para seu bichinho lhe dar suporte.
	["pet_equip_min_friendly"] = 900;          -- Configuração que define o mínimo de lealdade para seu bichinho lhe dar suporte usando pet_script conforme as habilidades oficiais. (0 - 1000)
	["pet_status_support"] = false;            -- Configuração que define se jogadores poderão usar habilidades de bichinhos como suporte. Habilidades ofensivas do bichinho de estimação precisam de no mínimo pet_attack_support ou pet_damage_support habilitados para funcionar.
	["pet_support_rate"] = 100;                -- Configuração que define a taxa à qual um bichinho irá apoiá-lo na batalha. Afeta: pet_attack_support & pet_damage_support.
	["pet_attack_exp_to_master"] = false;      -- Configuração que define se o dono do bichinho recebe experiência quando ele derrotar um inimigo.
	["pet_attack_exp_rate"] = 100;             -- Configuração que define a experiência ganha do bichinho que derrota um monstro.
	["pet_lv_rate"] = 0;                       -- Configuração que define o sistema de níveis para bichinhos. Caso esteja 200%, o nível do bichinho será o dobro do seu dono, caso esteja com 50% terá a metade.
	["pet_max_stats"] = 99;                    -- Configuração que define os atributos máximos para os bichinhos quando o sistema de níveis está habilitado.
	["pet_max_atk1"] = 500;                    -- Configurações dos danos de ataque para os bichinhos. Caso seja habilitado o pet_str, o dano máximo será (base_atk) + (pet_max_atk2).
	["pet_max_atk2"] = 1000;
	["pet_disable_in_gvg"] = false;            -- Animais de estimação são desativadas durante Guerra do Emperium? definida como true, animais de estimação são automaticamente retornados para ovo quando entrar em castelos durando a Guerra do Emperium. E a incubação é proibida também dentro dos castelos que estão ocorrendo a Guerra do Emperium.
};

PLAYER = {
	["hp_rate"] = 100;                         -- Configuração que define a taxa de HP máximo para jogadores.
	["sp_rate"] = 100;                         -- Configuração que define a taxa de SP máximo para jogadores.
	["left_cardfix_to_right"] = true;          -- Configuração que define se cartas que dão atributos a mão esquerda serão aplicados na mão direita?
	["restart_hp_rate"] = 0;                   -- Configuração que define com quanto de HP o personagem renascerá. 0 é o padrão.
	["restart_sp_rate"] = 0;                   -- Configuração que define com quanto de SP o personagem renascerá. 0 é o padrão.
	["player_skillfree"] = false;              -- Configuração que define se um jogador normal pode ultrapassar a árvore de habilidades?
	["player_skillup_limit"] = true;           -- Configuração que configura a utilização dos pontos de primeira classe. Quando se utiliza "true", obrigará que os pontos de habilidades da primeira classe sejam utilizados, como aprendizes que precisam das habilidades básicas.
	["quest_skill_learn"] = false;             -- Configuração que define se as habilidades de quests podem ser aprendidas.
	["quest_skill_reset"] = false;             -- Configuração que define se quando as habilidades são resetadas, se as habilidades de quest também são.
	["basic_skill_check"] = true;              -- Configuração que define se você precisará das habilidades básicas para sentar, fazer uma negociação, formar um grupo ou criar um chat.
	["player_invincible_time"] = 5000;         -- Configuração que define se quando teleportado, ou renascido em um mapa, quanto tempo um monstro demorará pra ver você se você não se mexer.
	["natural_healhp_interval"] = 6000;        -- Configuração que define o tempo de intervalo para recuperação do HP.
	["natural_healsp_interval"] = 8000;        -- Configuração que define o tempo de intervalo para recuperação do SP.
	["natural_heal_skill_interval"] = 10000;   -- Configuração que define o tempo de intervalo das habilidades de auto-cura.
	["natural_heal_weight_rate"] = 50;         -- Configuração que define o peso máximo que um personagem pode carregar sem que seu HP pare de se recuperar normalmente.
	["max_aspd"] = 190;                        -- Configuração que define a velocidade de ataque máxima. (Padrão 190, Máxima 199)
	["max_third_aspd"] = 193;                  -- Configuração que define a velocidade de ataque máxima para 3rd classes. (Padrão 193, Máxima 199)
	["max_walk_speed"] = 300;                  -- Configuração que define a velocidade máxima ao andar (200 é o dobro da velocidade normal)
	["max_hp"] = 1000000;                      -- Configuração que define o HP máximo.
	["max_sp"] = 1000000;                      -- Configuração que define o SP máximo.
	["max_parameter"] = 99;                    -- Configuração que define o limite máximo para os atributos. (agilidade, força, etc.)
	["max_third_parameter"] = 130;             -- Configuração que define o limite máximo para os atributos para Terceiras Classes.
	["max_extended_parameter"] = 125;          -- Configuração que define o limite máximo para os atributos para classes expandidas (Ex. Super Novice, Kagero/Oboro, Rebellion).
	["max_baby_parameter"] = 80;               -- Configuração que define o limite máximo de atributos para classes bebês.
	["max_baby_third_parameter"] = 117;        -- Configuração que define o limite máximo de atributos para Terceiras Classes Bebês.
	["max_def"] = 99;                          -- Configuração que define a quantidade máxima de defesa fisíca. Se weapon_defense_type é diferente de zero, esta definição não se aplicará a defesa fisíca máxima.
	["max_mdef"] = 99;                         -- Configuração que define a quantidade máxima de defesa mágica. Se magic_defense_type é diferente de zero, esta definição não se aplicará a defesa mágica máxima.
	["over_def_bonus"] = 0;                    -- Configuração que define o bônus de conversão de Def para Def2. Se a def/defM da armadura exceder a defesa máxima, o restante é convertido em vit -> def/int -> mdef usando esse multiplicador.
	["max_cart_weight"] = 8000;                -- Configuração que define o peso máximo que os carrinhos suportam.
	["prevent_logout"] = 10000;                -- Configuração que define o tempo para prevenir que jogadores desloguem quando sofrerem algum tipo de ataque.
	["show_hp_sp_drain"] = false;              -- Configuração que define se deve mostrar o valor de hp/sp ganho ao se usar ataques normais? (Exemplo: Carta Mosca Caçadora)
	["show_hp_sp_gain"] = true;                -- Configuração que define se deve mostrar o valor de hp/sp ganho quando se mata um monstro? (Exemplo: Carta Exterminador)
	["friend_auto_add"] = true;                -- Configuração que define se amigos devem ser aceitos automaticamente.
	["invite_request_check"] = true;           -- Configuração que define se jogadores podem receber várias propostas (troca/grupo/clã) ao mesmo tempo.
	["bone_drop"] = 0;                         -- Configuração que define se os jogadores deixarão cair uma caveira quando morrerem? 0 = Desabilitado, 1 = Deixarão cair em mapas PvP, 2 = Deixarão cair em todas situações
	["character_size"] = 0;                    -- Configuração que define se os personagens em Montarias terão seu tamanho aumentado? 0 = Não, 1 = Somente as Classes Normais terão tamanho grande, 2 = Apenas as Classes bêbes terão o tamanho médio,  3 = Tanto as Classes normais terão tamanho grande
	["idle_no_autoloot"] = 0;                  -- Configuração que define se os personagens inativos (idle) podem receber autoloot? Necessário definir o tempo em segundos em que um personagem irá parar de receber items do autoloot.
	["min_npc_vendchat_distance"] = 3;         -- Configuração que define a distância mínima que um mercador e uma sala de chat deve ter de um NPC. 0 = desativado
	["snovice_call_type"] = false;             -- Configuração que define se a fúria de Super Aprendiz só pode ser usada com exp de 0%, caso seja false serão usados múltiplos de 10%, por exemplo 10.0%, 20.0%,...
	["idletime_criteria"] = 31;                -- Como o servidor deve medir o tempo ocioso do personagem? (Nota 8)
};

SKILL = {
	["casting_rate"] = 100;                    -- Configuração que define a taxa de tempo que leva para conjurar uma magia. (0 = instantânea)
	["delay_rate"] = 100;                      -- Configuração que define o tempo de atraso (delay) depois de conjurar.
	["delay_dependon_dex"] = false;            -- Configuração que define se o tempo de atraso da conjuração de habilidades depende da DES e/ou AGI do jogador.
	["delay_dependon_agi"] = false;
	["min_skill_delay_limit"] = 100;           -- Configuração que define o tempo de atraso mínimo para todas habilidades depois de conjuradas. (Nota 4)
	["default_walk_delay"] = 300;              -- Configuração que define o tempo de atraso mínimo de "não andar" para todas as habilidades.
	["no_skill_delay"] = 2;                    -- Configuração que define se deve desativar por completo o atraso das habilidades dos seguintes tipos. (Nota 3)
	["castrate_dex_scale"] = 150;              -- Configuração que define com quanto de DES o tempo de conjuração é nulo (Instant Cast/Conjuração Instantânea).
	["vcast_stat_scale"] = 530;                -- Configuração que define qual deve ser o resultado da fórmula: (2*Dex + Int) para que o cast variável seja nulo.
	["skill_amotion_leniency"] = 90;           -- Configuração que define qual o nível de suavidade o sistema de habilidades dará para habilidades quando fazer a contabilidade da (ASPD) para as habilidades de conjuração.
	["skill_delay_attack_enable"] = true;      -- Configuração que define se os ataques normais irão ignorar o atraso após o uso de uma habilidade.
	["skill_add_range"] = 0;                   -- Configuração para decidir o quanto o alvo pode andar quando uma habilidade tiver começado a ser conjurada antes de falhar.
	["skill_out_range_consume"] = false;       -- Configuração que define se o alvo sair do alcance enquanto uma magia é conjurada, se será usado itens e SP de quem conjurou a magia mesmo assim.
	["skillrange_by_distance"] = 14;           -- Configuração que define se a distância entre quem conjura uma magia e o alvo define se a habilidade é uma habilidade de alcance? (Nota 3)
	["skillrange_from_weapon"] = 0;            -- Configuração que define se os equipamentos de alcance devem sobrepor as habilidades de alcance definidas no skill_db para a maioria das habilidades baseadas em armas. Habilidades afetadas por esta opção são aquelas que cujo alcance (range) na skill_db são negativas. Lembre-se, a menos que monster_ai0x400 seja configurada, o alcance das habilidades de todos os monstros é 9.
	["skill_caster_check"] = true;             -- Configuração que define se deve haver uma checagem no status do conjurando enquanto carrega uma magia? Se definido como true, Chuva de Meteoros, Nevasca e qualquer outra magia de área não terá efeito enquanto o conjurador estiver indisponível para lutar. (Ex: atordoado).
	["clear_skills_on_death"] = 0;             -- Configuração que define se as magias de terreno desaparecem quando o conjurador morre. (Nota 3)
	["clear_skills_on_warp"] = 15;             -- Configuração que define se as magias de terreno devem desaparecer quando o conjurador mudar de mapa. (Nota 3)
	["defunit_not_enemy"] = false;             -- Configuração que define a sobreposição do modo de alvo das habilidades de terreno.
	["skill_min_damage"] = 6;                  -- Configuração que define se habilidades darão seu número total de ataques (hits) quando elas não falham/estão bloqueadas. Valor (somas): 1 para ataques baseados em armas, 2 para ataques mágicos, 4 para outros tipos de ataque.
	["combo_delay_rate"] = 100;                -- Configuração que define a taxa de atraso para o combo do Monge
	["auto_counter_type"] = 15;                -- Configuração que define se jogadores poderão usar um tipo alternativo da habilidade Contra-Ataque. (Nota 3)
	["skill_reiteration"] = 0;                 -- Configuração que define se as habilidades de terreno podem ser colocadas umas sobre as outras. (Nota 3)
	["skill_nofootset"] = 1;                   -- Configuração que define se as habilidades de chão não poderão ser colocadas debaixo/perto do jogador/monstro. (Nota 3)
	["gvg_traps_target_all"] = 1;              -- Configuração que define se as armadilhas como (armadilhas de Caçadores + Pântano dos Mortos) devem mudar o alvo para "todos" dentro das arenas pvp/gvg. (Nota 3)
	["traps_setting"] = false;                 -- Configuração que define se as armadilhas são invisíveis para aqueles que entrarem no alcance dela.
	["summon_flora_setting"] = 3;              -- Configuração que define as restrições para a Habilidade "Criar Flora" dos Alquimistas. 1 = Floras podem levar danos de jogadores fora de mapas PvP, 2 = Desativar quando se tem diferentes tipo fora ao mesmo tempo. 
	["song_timer_reset"] = false;              -- Quando as canções são canceladas, encerradas ou o personagem sai da área de efeito, há um efeito adicional que dura por 20 segundos, esse tempo deve ser redefinido para cada música?  
	["skill_wall_check"] = true;               -- Configuração que define se deve levar em consideração as paredes, como uma barreira de impedimento, ao usar habilidades de grande cobertura.
	["player_cloak_check_type"] = 1;           -- Configuração que define se quando estiver com Furtividade, deve-se checar se o jogador/monstro está perto de uma parede, ou não. 0 = não checar por paredes, 1 = checar por paredes, 2 = Furtividade não é cancelado quando o usuário atacar, 4 = Furtividade não é cancelado quando o usuário usar magias.
	["monster_cloak_check_type"] = 4;
	["land_skill_limit"] = 9;                  -- Configuração que define a possibilidade de usar habilidades ilimitadas de área? (Nota 3)
	["display_skill_fail"] = 0;                -- Configuração que determina que tipo de mensagem será enviada caso uma habilidade falhe. 0 = Ativado por padrão, 1 = Desativa todos os tipos de mensagem de falha, 2 = Desativa mensagem de falha devido a delay, 4 = Desativa mensagem de falha da habilidade Rapto, 8 = Desativa mensagem de falha da habilidade Envenenar.
	["chat_warpportal"] = false;               -- Configuração que define se um jogador dentro de uma sala de chat pode ser teletransportado por um portal.
	["sense_type"] = 1;                        -- Configuração que define se a habilidade "Sentido Sobrenatural" deve mostrar a defesa do monstro também. 0 = Não mostrará defesa, 1 = Defesa base [Renovação], 2 = Mostra DEF/MDEF, 3 = Ambas
	["finger_offensive_type"] = 0;             -- Configuração que define qual estilo de Disparo de Esferas será utilizado. 0 = Aegis style (único ataque com múltiplos golpes), 1 = Athena style (ataques múltiplos consecutivos)
	["gx_allhit"] = false;                     -- Configuração que define se o intervalo de golpes não será aumentado de acordo com a quantidade de monstros em uma mesma célula.
	["gx_disptype"] = true;                    -- Configuração que define a aparência do Crux Magnum deve ser Branco. Caso seja igual a false a cor será amarela
	["devotion_level_difference"] = 10;        -- Configuração que define a diferença máxima de nível para a habilidade Devoção.
	["player_skill_partner_check"] = true;     -- Configuração que define a possibilidade do uso de habilidades em grupo.
	["skill_removetrap_type"] = false;         -- Configuração que define se assim que acaba a armadilha todos os itens usados para remover a armadilha voltam ?
	["backstab_bow_penalty"] = true;           -- Configuração que define a penalidade no dano da habilidade "Apunhalar" ao usar um arco. Caso seja usado um arco na habilidade "Apunhalar", terá uma penalidade de 50% no dano? 
	["skill_steal_max_tries"] = 0;             -- Configuração que define quantas vezes são possíves tentar roubar um monstro. 0 = desativado.
	["copyskill_restrict"] = 2;                -- Configuração que define se arruaceiros podem plagiar habilidades de classes avançadas. 0 = sem restrições, 1 = somente Desordeiros poderão plagiar habilidades de classes avançadas, 2 = habilidades avançadas não podem ser plagiadas
	["berserk_cancels_buffs"] = false;         -- Configuração que define se Frenesi cancelará os buffs que já estiverem ativados.
	["max_heal"] = 9999;                       -- Configuração que define o nível e força de um "Curar" de MVP. Quando alguém conjurar um Curar deste nível ou acima, a fórmula para a quantidade é ignorada e o valor curado será o que você configurar aqui.
	["max_heal_lv"] = 11;
	["emergency_call"] = 11;                   -- Configurações da habilidade Chamado Urgente. 1 = Habilidade funciona fora das WoE, 2 = Habilidade funciona somente em WoE, 4 = Habilidade funciona fora de mapas GvG, 8 = Habilidade funciona somente mapas GvG, 16 = Habilidade não funciona em mapas com a mapflag "nowarpto"
	["guild_aura"] = 31;                       -- Configurações da Aura da Guilda. 1 = Habilidade funciona fora das WoE, 2 = Habilidade funciona somente em WoE, 4 = Habilidade funciona fora de mapas GvG, 8 = Habilidade funciona somente mapas GvG, 16 = Habilidade não afetará o Líder do Clã
	["skip_teleport_lv1_menu"] = false;        -- Configuração que permite que jogadores não vejam o menu quando usarem teleporte no nível 1.
	["allow_skill_without_day"] = false;       -- Configuração que define se o uso das habilidades de Mestre Taekwon serão permitidas sem ser de acordo com o tempo (Solar/Lunar/Estelar).
	["allow_es_magic_player"] = false;         -- Configuração que define se o uso de habilidades "ES-" é permitido em jogadores?
	["sg_miracle_skill_ratio"] = 2;            -- Configuração que define a taxa das habilidades Benção Solar, Lunar e Estelar (100% = 10000)
	["sg_miracle_skill_duration"] = 3600000;   -- Configuração que define a duração das habilidades Benção Solar, Lunar e Estelar
	["sg_angel_skill_ratio"] = 10;             -- Configuração que define a taxa das habilidades Fúria Solar, Lunar e Estelar (100% = 10000)
	["skill_add_heal_rate"] = 7;               -- Configuração que define quais habilidades que bHealPower tem efeito. 1 = Cura, 2 = Santuário, 4 = Arremessar Poção, 8 = Arremessar Poção Compacta, 16 = Maçãs de Idun.
	["eq_single_target_reflectable"] = true;   -- Configuração que define o dano da habilidade Terremoto com um único alvo na tela pode ser refletido? 
	["invincible_nodamage"] = false;           -- Configuração que define o dano refletido nos estados de invencibilidade.
	["dancing_weaponswitch_fix"] = true;       -- Configuração que define dançar durante a troca de arma.
	["skill_trap_type"] = false;               -- Configuração que define se armadilha em GvG faz jogador parar de se mover ao pisar sobre ela. Caso seja false armadilhas em GvG faz com que o jogador seja incapaz de se mover depois que seu caminho é completado, e ele ativa todas as outras armadilhas no caminho.
	["mob_max_skilllvl"] = 100;                -- Configuração que define o nível máximo das habilidades dos monstros.
	["bowling_bash_area"] = 0;                 -- Área de reação em cadeia da habilidade Impacto de Tyr. 0 = Usar sistema conforme servidores oficiais, 1 = Sistema Gutterline sem bug de linha, 2-20 = Área em torno do conjurador (2 = 5x5, 3 = 7x7, 4 = 9x9, ..., 20 = 41x41)
	["stormgust_knockback"] = true;            -- Em servidores oficiais, Nevasca consiste de 81 unidades que só causam dano de splash 3x3 "longe do centro". Devido a células do sudoeste serem processadas primeiro, isso geralmente leva a um knockback para o nordeste. A direção de Knockback também pode ser influenciada por Ganbantein e Proteger Terreno. Se você desativar essa configuração, a direção de knockback será completamente aleatória.
};

STATUS = {
	["status_cast_cancel"] = 0;                -- Configuração que define se a conjuração da habilidade será cancelada quando o jogador for aflingido por Maldição/Atordoamento/Sono/Silêncio/etc.
	["pc_status_def_rate"] = 100;              -- Configuração que define o ajuste da taxa natural de resistência à mudanças de estado. Se 50, defesa contra mudança de estado é reduzida pela metade, e você precisará de duas vezes mais atributos para bloqueá-los 
	["mob_status_def_rate"] = 100;
	["pc_max_status_def"] = 100;               -- Configuração que define a Resistência máxima a mudanças de estado. (100 = 100%)
	["mob_max_status_def"] = 100;
	["status_luk_influence"] = false;          -- Configuração que define se a SOR (LUK) deve influenciar a imunidade para certas mudanças de estado.
	["pc_luk_status_def"] = 300;               -- Configuração que define a SOR (LUK) requerida para ganhar imunidade a certas mudanças de estado. Só é aplicada caso a configuração status_luk_influence esteja com valor true.
	["mob_luk_status_def"] = 300;
};