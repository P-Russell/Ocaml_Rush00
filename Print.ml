(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Print.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:19:41 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 12:11:29 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec map = function
    | [] -> ()
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

let usr_input u_in = match u_in with
    | h::n::t -> print_int h; print_char ' '; print_int n; print_char '\n'
    | _ -> print_endline "Nothing"

let mapAndInstructions m toPlay = 
    map m;
    instructions toPlay
