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

let empty v = 
	if v = '-' then true
	else
		false


let check_small_board board num =
	if (num < 1 || num >= List.length board) then
		false
	else if (List.nth board (num - 1)) = '-' then
		begin
		print_char (List.nth board (num - 1));
		print_char '\n';
		true
		end
	else
		false

let check_valid_board map num = 
	if (num < 1 || (num > List.length map)) then
		false
	else
		match (List.nth map (num -1)) with
		| v1::v2::v3::v4::v5::v6::v7::v8::v9::v10::tl -> if v10 = '-' then true else false
		| _ -> false

let rec board map = 
	print_string "board number: ";
	let x = int_of_string(read_line()) in
		if (check_valid_board map x) then
			x
		else
			begin
			print_endline "Invalid input";
			board map
			end

let rec square map board_n = 
	print_string "square number: ";
	let x  = int_of_string(read_line()) in
		if (check_small_board (List.nth map (board_n - 1)) x ) then
			x
		else
			begin
			print_endline "Invalid input";
			square map board_n
			end

