# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prussell <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/06 08:38:53 by prussell          #+#    #+#              #
#    Updated: 2018/10/06 13:51:58 by prussell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES = Match.ml Print.ml User.ml Event.ml Main.ml 
RESULT  = tictac

all: byte-code

-include OCamlMakefile
