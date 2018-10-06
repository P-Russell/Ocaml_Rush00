# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prussell <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/06 08:38:53 by prussell          #+#    #+#              #
#    Updated: 2018/10/06 12:21:30 by prussell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES = Print.ml User.ml Event.ml Main.ml 
RESULT  = tictac

all: byte-code

-include OCamlMakefile
