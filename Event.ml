(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Event.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:30:44 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 10:05:12 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
 * let rec loop map =
     * Print.map_and_instructions
     * let input = Input.get
     * if (is_winning_move map input)
     * loop (update_map(map input)) player
*)

let update_map map inputX inputY player = 
    List.mapi(fun i x -> if i = (inputX + inputY + 2) then player else x) map

let is_winning_state map =
   match map with 
   | [ a; _; _; 
       b; _; _; 
       c; _; _; _ ] when a = b && b = c -> true
   | [ _; a; _; 
       _; b; _; 
       _; c; _; _ ] when a = b && b = c -> true
   | [ _; _; a; 
       _; _; b; 
       _; _; c; _ ] when a = b && b = c -> true
   | [ a; b; c; 
       _; _; _; 
       _; _; _; _ ] when a = b && b = c -> true
   | [ _; _; _; 
       a; b; c; 
       _; _; _; _ ] when a = b && b = c -> true
   | [ _; _; _; 
       _; _; _; 
       a; b; c; _ ] when a = b && b = c -> true
   | [ a; _; _; 
       _; b; _; 
       _; _; c; _ ] when a = b && b = c -> true
   | [ _; _; a; 
       _; b; _; 
       c; _; _; _ ] when a = b && b = c -> true
   | [ 'O' | 'X' ; 'O' | 'X'; 'O' | 'X'; 
       'O' | 'X' ; 'O' | 'X'; 'O' | 'X'; 
       'O' | 'X' ; 'O' | 'X'; 'O' | 'X'; _ ] -> true;
   | _ -> false


let rec loop map player= 
    Print.mapAndInstructions map player;

    Print.mapAndInstructions (update_map map 1 2 'X') 'X';
    Print.mapAndInstructions (update_map map 1 1 'X') 'X';
    Print.mapAndInstructions (update_map map 3 3 'X') 'X'
(*
    if player = 'X' then
        loop map 'O'
    else
        loop map 'X'

        *)
