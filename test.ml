(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   test.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ckatz <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 09:44:45 by ckatz             #+#    #+#             *)
(*   Updated: 2018/10/06 18:11:51 by ckatz            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_number c = match c with
        | '1' .. '9' -> true
        | _ -> false

let check_string str =
    let len = String.length str in
    let rec loop str index =
        let c = String.get str index in
        if ((is_number c) == false)
        then
            false
        else if (index == (len - 1))
        then
            true
        else
            loop str (index + 1)
    in loop str 0

let validate_input str =
    let get_x str x_y_list =
        if ((String.length str) < 3)
        then
            print_endline "Incorrect format"
        else if (String.contains str ' ')
        then
            begin
                let current_list = String.split_on_char ' ' str in
                if ((List.length current_list) != 2)
                then
                    print_endline "Incorrect format"
                else

                    let x = (List.nth current_list 1) in
                    let y = (List.nth current_list 0) in
                    let x_y_list = (x :: x_y_list) in
                    let x_y_list = (y :: x_y_list) in
                    print_endline (List.nth x_y_list 0);
                    print_endline (List.nth x_y_list 1)
            end
        else
            print_endline "Input not valid"
    in get_x str []


let main () =

    print_endline (string_of_bool (check_string "23423525"));
    print_endline (string_of_bool (check_string "asd8a"));
    print_endline (string_of_bool (check_string "911"))
    (*print_endline (print_char (is_number 'a'));
    print_endline (string_of_bool (is_number '9'))
    validate_input "9 81";
    validate_input "asdasfa";
    validate_input "a 5"*)

let () = main ()


 (* else if (String.contains str ' ')
        then
           (* x = int_of_string ((String.split_on_char ' ' str)[0]);*)
            print_int x*)

