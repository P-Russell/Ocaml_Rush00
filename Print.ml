(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Print.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 07:19:41 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/06 15:18:31 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let print_line  = function
    | [] -> () 
    | v1::v2::v3::tl -> print_char v1;
                        print_char ' ';
                        print_char v2;
                        print_char ' ';
                        print_char v3;
                        print_char '|';
    | _ -> ()

let rec print_line1  = function
    | [] -> () 
    | v1::v2::v3::tl -> print_line [v1; v2; v3];
                        print_line1 tl;
    | _ -> ()


let rec extract_from_three = function
    | [] -> print_endline "-------------------"
    | n1::n2::n3::tl -> print_line1 n1; 
                        print_line1 n2;
                        print_line1 n3;
                        print_char '\n';
                        extract_from_three tl;
    | _ -> () 

let rec map = function
    | [] -> ()
    | h::n1::n2::tl -> extract_from_three [h; n1; n2];
                       map tl;
    | _ -> ()

let instructions player = 
    print_char player;
    print_endline "'s turn to play"

let map_instructions m toPlay = 
    map m;
    instructions toPlay
