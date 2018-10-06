(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Event.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:30:44 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 15:21:06 by prussell         ###   ########.fr       *)
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


let rec loop map player usr_x usr_y =
    Print.map map
(*    if (Match.three_by_three_win map) then
        if player = 'X' then
            Print.map (won_state 'O')
        else
            Print.map (won_state 'X')

    else
        begin
        Print.map_instructions map player; 
        let u_x = User.x () and u_y = User.y () in
        if player = 'X' then
            loop (update_map map [u_x; u_y] player) 'O' (u_x)(u_y)
        else
            loop (update_map map [u_x; u_y] player) 'X' (u_x)(u_y)
        end
*)
