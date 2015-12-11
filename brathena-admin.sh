#!/bin/bash
# brAthena - Administração [Painel Linux]
# Criado por: Protimus 

comecar() {
	if [ ! -d $bradir ] ; then
		mkdir $bradir
	fi
	touch $bradir/$arquivoconf
	estado=0
	while [ $estado -eq 0 ] ; do
		echo -e "\n=============================================="
		echo "brAthena - Painel de Administração para Linux."
		echo "=============================================="
		echo
		echo "Digite o número da opção desejada."
		echo
		echo "1 - Instalar os pacotes para compilar o emulador."
		echo "2 - Instalar o emulador."
		echo "3 - Ligar & desligar o emulador."
		echo -e -n "0 - Sair.\n> "
		read escolher
		case $escolher in
			1) compilar
				estado=0 ;;
			2) instalar
				estado=0 ;;
			3) gerencia
				estado=0 ;;
			0) echo "Saindo."
				estado=-1 ;;
			*) echo "Operação inválida."
				estado=0 ;;
		esac
	done
}

compilar(){
	estado=0
	clear
	while [ $estado -eq 0 ] ; do
		echo "Selecione seu sistema operacional (OS)."
		echo
		echo "1 - CentOS, Fedora ou outros baseados em RHEL."
		echo -e -n "2 - Ubuntu ou outros baseados em Debian.\n> "
		read escolher
		case $escolher in
			1) rhel
				estado=1 ;;
			2) debian
				estado=2 ;;
			*) echo "Opção inválida."
				estado=0 ;;
		esac
	done
}
	
rhel(){	
	sudo yum update -y
	sudo yum groupinstall 'Development Tools' -y
	sudo yum install git -y
}

debian(){
	sudo apt-get update -y
	sudo apt-get install build-essential -y
	sudo apt-get install git -y
}

instalar() {
	clear
	estado=0
	diretorio=""
	while [ $estado -eq 0 ] ; do
		echo -e -n "Informe o diretório onde deseja instalar\n(caminho completo, não use / no final)\n> "
		read diretorio
		if [ -d $diretorio -a -w $diretorio ] ; then
			estado=1
			echo $diretorio > $bradir/$arquivoconf
		else
			estado=0
			echo "ATENÇÃO: Diretório inválido ou sem permissão de escrita."
		fi
	done
	
	estado=0
	while [ $estado -eq 0 ] ; do
		echo -e -n "Escreva o nome da branch do brAthena que você deseja baixar\n(NOMES: master ou brathena-lua)\n> "
		read branch
		if [ $branch = "master" -o $branch = "brathena-lua"] ; then
			echo "Conectando-se ao servidor..."
			git clone -b $branch https://github.com/brAthena/brAthena.git
			cd $diretorio/$branch/
			sh ./configure
			make
			estado=1
		else
			echo "Opção inválida."
			estado=0
		fi
	done
}

gerencia() {
	clear
	result=false
	diretorio=""
	if [ -f $arquivoconf -a -s $arquivoconf ] ; then
		diretorio=`head -2 $arquivo | tail -1`
		if [ -d $diretorio ] ; then
			temp=$diretorio/$bralauncher
			if [ -f $temp -a -s $temp -a -x $temp ] ; then
				echo "\nATENÇÃO: Problema com o lançador do aplicativo (Não existe ou não é executável)."
			else
				result=true
			fi
		else
			echo "\nATENÇÃO: O arquivo de configuração não possui uma entrada válida."
		fi
	else
		echo "\nATENÇÃO: Não foi possível detectar configurações prévias. Impossível achar diretório de instalação."	
	fi
	
	if $result ; then
		echo -e -n "Selecione a opção desejada (iniciar, desligar e reiniciar)\n> "
		read opcao
		case $opcao in
			"iniciar")
				cd $diretorio
				sh ./$bralauncher start ;;
			"desligar")
				sh ./$bralauncher stop ;;
			"reiniciar")
				sh ./$bralauncher restart ;;
		esac
	fi
}

# Deve ficar no final do arquivo, depois das declarações de funções
arquivoconf="brainstall.log"
bradir=~/.brathena
bralauncher="brathena-start"
comecar