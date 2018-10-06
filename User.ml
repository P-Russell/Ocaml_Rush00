(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   User.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 12:07:26 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 13:47:04 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let input result = 
    print_endline "waiting for input";
    List.map int_of_string (String.split_on_char ' ' (read_line()))

let x () = 
    print_string "x: ";
    int_of_string (read_line())

let y () = 
    print_string "y: "; 
    int_of_string (read_line())
