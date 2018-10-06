(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   test.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ckatz <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 09:44:45 by ckatz             #+#    #+#             *)
(*   Updated: 2018/10/06 10:58:23 by ckatz            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let validate_input str =
    let x = -1 in
    let y = -1 in
    let x_y_string = [] in
    let get_x str =
        if ((String.length str) < 3)
        then
            print_endline "Input too short"
        else if (String.contains str ' ')
        then
            begin
            (String.split_on_char ' ' str) :: x_y_string;
            print_endline "Split"
            end
        else
            print_endline "Input not valid"
    in get_x str

let main () =
    validate_input "1 3";
    validate_input "asdasfa";
    validate_input "a 5"

let () = main ()


 (* else if (String.contains str ' ')
        then
           (* x = int_of_string ((String.split_on_char ' ' str)[0]);*)
            print_int x*)

