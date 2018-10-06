(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Print.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:19:41 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 08:30:51 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec map = function
    | [] -> print_char '\n'
    | h::n1::n2::tl -> print_char h; 
                       print_char ' '; 
                       print_char n1; 
                       print_char ' '; 
                       print_char n2;
                       print_char '\n'; 
                       map tl;
    | _ -> ()


let instructions player = 
    print_char player;
    print_endline "'s turn to play"


let mapAndInstructions m toPlay = 
    map m;
    instructions toPlay
