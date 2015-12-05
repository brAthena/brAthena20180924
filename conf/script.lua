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
--   | Nome da configuração: scripts.lua                                                                                      |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Criado por: Megasantos                                                                                                 |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Descrição: Configurações de script.                                                                                    |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Changelog:                                                                                                             |
--   | 1.0 Adição das Configurações de script [Megasantos]                                                                    |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | - Anotações                                                                                                            |
--   |                                                                                                                        |
--   | Nota 1: Valor optativo (true = Ativado, false = desativado).                                                           |
--   |                                                                                                                        |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Lembre-se que "NOTAS" dão recomendações importantes.                                                                   |
--   \________________________________________________________________________________________________________________________/

SCRIPT = {
	["warn_func_mismatch_paramnum"] = true;
	["check_cmdcount"] = 655360;
	["check_gotocount"] = 2048;
	["input_min_value"] = 0;                -- Valor 'min' do script de comando 'input'. Quando o valor 'min' não é usado, o valor padrão 0 é usado.
	["input_max_value"] = 10000000;         -- Valor  'max' do script de comando 'input'. Quando o valor 'max' não é usado (input_max_value: 0), o valor padrão INT_MAX é usado. INT_MAX = 2147483647
	["warn_func_mismatch_argtypes"] = true; -- Especifica se há um argumento de checagem para verificar se uma função está correta. Quando uma função recebe a resposta de um argumento diferente, um aviso será mostrado antes da função ser executada.
};