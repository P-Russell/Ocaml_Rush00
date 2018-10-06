(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Event.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:30:44 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 13:36:50 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let update_map map usr_in player = match usr_in with
    | h::n::t -> List.mapi(fun i x -> if i = (n * 3 + h) then player else x) map
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

let user_x () = 
    print_string "x: ";
    int_of_string (read_line())

let user_y () = 
    print_string "y: "; 
    int_of_string (read_line())

let is_winning_state map =
   match map with 
   | [ a; _; _; 
       b; _; _; 
       c; _; _; _ ] when a = b && b = c && a <> '-' -> true
   | [ _; a; _; 
       _; b; _; 
       _; c; _; _ ] when a = b && b = c && a <> '-' -> true
   | [ _; _; a; 
       _; _; b; 
       _; _; c; _ ] when a = b && b = c && a <> '-' -> true
   | [ a; b; c; 
       _; _; _; 
       _; _; _; _ ] when a = b && b = c && a <> '-' -> true
   | [ _; _; _; 
       a; b; c; 
       _; _; _; _ ] when a = b && b = c && a <> '-' -> true
   | [ _; _; _; 
       _; _; _; 
       a; b; c; _ ] when a = b && b = c && a <> '-' -> true
   | [ a; _; _; 
       _; b; _; 
       _; _; c; _ ] when a = b && b = c && a <> '-' -> true
   | [ _; _; a; 
       _; b; _; 
       c; _; _; _ ] when a =  b && b = c && a <> '-' -> true
   | [ 'O' | 'X' ; 'O' | 'X'; 'O' | 'X'; 
       'O' | 'X' ; 'O' | 'X'; 'O' | 'X'; 
       'O' | 'X' ; 'O' | 'X'; 'O' | 'X'; _ ] -> true;
   | _ -> false

let rec loop map player usr_x usr_y =
    if (is_winning_state map) then
        if player = 'X' then
            Print.map (won_state 'O')
        else
            Print.map (won_state 'X')

    else
        begin
        Print.map_instructions map player; 
        let u_x = user_x () and u_y = user_y () in
        if player = 'X' then
            loop (update_map map [u_x; u_y] player) 'O' (u_x)(u_y)
        else
            loop (update_map map [u_x; u_y] player) 'X' (u_x)(u_y)
        end
