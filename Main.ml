(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:19:18 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 12:29:09 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
 * [ X - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 * [ X - - - - - - - - - ]
 * [ O - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 * [ X - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 *)

let () =
    let map = ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-']
    in
    Event.loop map 'O' 0 0
