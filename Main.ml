(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:19:18 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 14:28:17 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - X ]
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - O ]
 * [ - - - - - - - - - - ]
 * [ - - - - - - - - - - ]
 *)

let () =
    let map = [
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-'] ; 
               ['-'; '-'; '-';
               '-'; '-'; '-';
               '-'; '-'; '-'; '-']]
    in
    Event.loop map 'O'
