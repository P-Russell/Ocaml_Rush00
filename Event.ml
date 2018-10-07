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

let won_state player =
    if player = 'X' then
        [ '\\'; ' ' ; '/';
          ' '; 'X' ; ' ';
          '/'; ' ' ; '\\'; 'X']
    else
        [ '/'; '-' ; '\\';
          '|'; ' ' ; '|';
          '\\'; '_' ; '/'; 'O']

let update_map map usr_in player = match usr_in with
    | h::n::t -> List.mapi(fun i x -> if i = (n * 3 + h) then player else x) map
    | _ -> []

let update_small_board board square player = 
	let square = (List.mapi(fun i x -> if i = square then player else x) board) in
		if (Match.three_by_three_won (square)) then
			won_state player
		else
			square

let update map board_num square player =
	List.mapi(fun i x -> if i = board_num then update_small_board x square player else x) map


let rec loop map player =
    if (Match.big_map_won map) then
	    begin
	    Print.map map;
	    if player = 'X' then
		    print_endline "Player O won the game"
	    else
		    print_endline "Player X won the game"
	    end
    else
	    begin
    	    Print.map_instructions map player;
	    let board_n = User.board() and square_n = User.square() in
		    if player = 'X' then
			    loop(update map board_n square_n player) 'O'
		    else
			    loop(update map board_n square_n player) 'X'
	    end
