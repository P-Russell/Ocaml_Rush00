(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   test.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ckatz <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/06 09:44:45 by ckatz             #+#    #+#             *)
(*   Updated: 2018/10/07 09:47:23 by ckatz            ###   ########.fr       *)
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
    let x_y_list = [] in
        if ((String.length str) < 3)
        then
            x_y_list
        else if (String.contains str ' ')
        then
            begin
                let current_list = String.split_on_char ' ' str in
                if ((List.length current_list) != 2)
                then
                    x_y_list
                else
                    let x_str = (List.nth current_list 1) in
                    let y_str = (List.nth current_list 0) in
                    if ((check_string x_str) && (check_string y_str))
                    then
                        let x_num = int_of_string (List.nth current_list 1) in
                        let y_num = int_of_string (List.nth current_list 0) in
                        let x_y_list = (x_num :: x_y_list) in
                        let x_y_list = (y_num :: x_y_list) in
                        x_y_list
                    else
                        x_y_list
            end
        else
            x_y_list

let main () =

    (*print_endline (string_of_bool (check_string "23423525"));
    print_endline (string_of_bool (check_string "asd8a"));
    print_endline (string_of_bool (check_string "911"));
    print_endline (print_char (is_number 'a'));
    print_endline (string_of_bool (is_number '9'))*)
    print_int (List.nth (validate_input "9 81") 0);
    print_char ' ';
    print_int (List.nth (validate_input "9 81") 1);
    print_char '\n';
    print_int (List.nth (validate_input "5 1") 0);
    print_char ' ';
    print_int (List.nth (validate_input "5 1") 1);
    print_char '\n';
    print_int (List.nth (validate_input "123 1") 0);
    print_char ' ';
    print_int (List.nth (validate_input "123 1") 1);
    print_char '\n'

let () = main ()
