(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Event.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:30:44 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 08:01:29 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
 * let rec loop map =
     * Print.map_and_instructions
     * let input = Input.get
     * update_map input
     * if (is_winning_move map input)
     * loop map
*)

let rec loop map = 
    Print.map map
