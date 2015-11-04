--    ________________________________________________________
--   /                                                        \
--   |       _           _   _   _                            |
--   |      | |__  _ __ / \ | |_| |__   ___ _ __   __ _       |
--   |      | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |      |
--   |      | |_) | | / ___ \ |_| | | |  __/ | | | (_| |      |
--   |      |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|      |
--   |                                                        |
--   |                    brAthena Script                     |
--   |--------------------------------------------------------|
--   | Nome da configuração: SecondpwConfig.lua               |
--   |--------------------------------------------------------|
--   | Criado por: Megasantos                                 |
--   |--------------------------------------------------------|
--   | Descrição: Configurações de código PIN.                |
--   |--------------------------------------------------------|
--   | Changelog:                                             |
--   | 1.0 Criação [Megasantos]                               |
--   |--------------------------------------------------------|
--   | - Anotações                                            |
--   | "Comentários" devem ser adicionados com -- no início   |
--   | da frase, ou você causará problemas na leitura,        |
--   | pois o texto será inválido conforme a source.          |
--   | Lembre-se que "NOTAS" dão recomendações importantes.   |
--   \________________________________________________________/



--------------------------------------------------------------------------------
-- Uma janela é aberta antes de selecionar seu personagem.
-- Você terá que digitar um código PIN utilizando apenas o mouse
-- NOTA: Requer o cliente 2011-03-09aRagexeRE ou mais recente
--------------------------------------------------------------------------------
SECOND_PASSWD = {

	USE_SECONDPW = true;            -- Habilita o uso de password secundário(Código PIN).

	SECOND_PASSWD_MAXTRY = 3;       -- Quantas vezes o usuário pode digitar a senha errada ?

	SECOND_PASSWD_CHANGETIME = 0;   -- Tempo em que o usuário tem que mudar seu código PIN

	SECOND_PASSWD_LOGIN = false;    -- Solicitar código PIN cada vez que selecionar o personagem?

};

--------------------------------------------------------------------------------
-- Senhas proibidas de se usar como código PIN
--------------------------------------------------------------------------------
--Ainda não implementado
SecondPWRestrictKeyTbl = 
{
	{ [[0000]] }, 
	{ [[1111]] }, 
	{ [[2222]] }, 
	{ [[3333]] }, 
	{ [[4444]] }, 
	{ [[5555]] }, 
	{ [[6666]] }, 
	{ [[7777]] }, 
	{ [[8888]] }, 
	{ [[9999]] }, 
	{ [[0123]] }, 
	{ [[1234]] }, 
	{ [[2345]] }, 
	{ [[3456]] }, 
	{ [[4567]] }, 
	{ [[5678]] }, 
	{ [[6789]] }, 
	{ [[7890]] }, 
};


--------------------------------------------------------------------------------
-- IP's em que não precisam usar código PIN
--------------------------------------------------------------------------------
-- Ainda não implementado
SecondPWNoCheckIP = 
{
	{ [[59.10.115.39]] },
	{ [[59.10.115.28]] },
	{ [[59.10.115.40]] },
};

function main()	
	
	result, msg = SetSECOND_PASSWD( USE_SECONDPW );
	if( not result ) then 
		return false, msg;
	end
	
	result, msg = SetSECOND_PASSWD( SECOND_PASSWD_MAXTRY );
	if( not result ) then 
		return false, msg;
	end
	
	result, msg = SetSECOND_PASSWD( SECOND_PASSWD_CHANGETIME );
	if( not result ) then 
		return false, msg;
	end
	
	result, msg = SetSECOND_PASSWD( SECOND_PASSWD_LOGIN );
	if( not result ) then 
		return false, msg;
	end
	
	for k, v in pairs( SecondPWRestrictKeyTbl ) do
		result, msg = SetRestrictSecondPW( v[1] );
		if( not result ) then
			return false, msg;
		end
	end
		
	for k, v in pairs( SecondPWNoCheckIP ) do
		result, msg = SetSecondPWNoCheckIP( v[1] );
		if( not result ) then
			return false, msg;
		end
	end
	
	return true, "good";
end
