(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Event.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:30:44 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 12:12:56 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
 * let rec loop map =
     * Print.map_and_instructions
     * let input = Input.get
     * if (is_winning_move map input)
     * loop (update_map(map input)) player
*)

let update_map map usr_in player = match usr_in with
    | h::n::t -> List.mapi(fun i x -> if i = (h + n + 1) then player else x) map
    | _ -> []

let won_state player =
    if player = 'X' then
        [ '\\'; ' ' ; '/';
          ' '; 'X' ; ' ';
          '/'; ' ' ; '\\'; 'X']
    else
        [ '/'; '-' ; '\\';
          '|'; ' ' ; '|';
          '\\'; '_' ; '/'; 'O']

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

let rec loop map player usr_in =
    Print.map map
(*
    let () = print_char player in
    let () = print_string "'s turn to play" in
    let () = print_newline in  

    if player = 'X' then
        loop map 'O' user_input
    else
        loop map 'X' user_input
*)
