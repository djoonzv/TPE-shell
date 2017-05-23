#!/bin/bash
	echo -e " \n	************************************************** \n"
	echo -e " 	*               DJOONZ KEMEYONG VICTORE          * \n"
	echo -e "	************************************************** \n"	

	echo -e "	*************Bienvenue sur mon projet Sys************* \n"
	echo -e "		------->Choisir l'option a executer<------ \n"

	echo -e "	a) Information des utilisateurs enregistres il y a 3 jours. \n"
	echo -e "	b) Acquisition, installation et lancement de XAMP. \n"
	echo -e "	c) Archivage des elements du repertoire personnel qui ont ete modifies par l'utilisateur sudoer il y a 2jours dans un peripherique externe. \n"
	echo -e "	d) Informations sur l'utilisation du disque dur, de la memoire, du processeur et de la swap. \n"
	echo -e "	q|Q) Quitter. \n"

	read -p "\n Entrer la lettre qui correspond, s'il vous plait : " choix
	

	case $choix in
		"a")
			echo -e "\n ______________________________________________ \n"
			echo -e "Les utilisateurs presents il y a 3 jours: \n"
			last --present -3days
			echo -e "\n *****MERCI ET AU REVOIR*****"
			echo -e "\n ______________________________________________ \n"
		;;
		"b")
			sudo apt-get update
			sudo apt-get install xamp
			sudo /opt/lampp/lampp start
			echo "\n \n L'environnement XAMP est lance, merci! \n"
			echo "*****MERCI ET AU REVOIR***** \n"
		;;
		"c")
			find /home/sudoer -newermt -2days > /media/sudoer/usb
			
		;;
		"d")	
			echo -e "\n ______________________________________________ \n"
			echo -e "Voici les informations sur le disque \n"
			vmstat -d | grep sd*
			
			echo -e "\n \n Voici les informations sur les memoires \n"
			vmstat -S M 1 5
			
			echo -e "\n \n Enfin les informations sur le processeur(CPU): \n"
			top -n1 -o %CPU
			echo -e "\n ______________________________________________ \n"
			echo -e "\n *****MERCI ET AU REVOIR*****"			
		;;
		"q")
			exit
		;;
		"Q")
			exit
		;;
	esac
		

