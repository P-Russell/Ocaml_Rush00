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

let print_line_first_three  = function
    | [] -> () 
    | v1::v2::v3::tl -> print_char v1;
                        print_char ' ';
                        print_char v2;
                        print_char ' ';
                        print_char v3;
                        print_char '|';
    | _ -> ()

let print_line_second_three  = function
    | [] -> () 
    | v1::v2::v3::v4::v5::v6::tl -> print_char v4;
                        	    print_char ' ';
                          	    print_char v5;
                                    print_char ' ';
                                    print_char v6;
                                    print_char '|';
    | _ -> ()

let print_line_last_three  = function
    | [] -> () 
    | v1::v2::v3::v4::v5::v6::v7::v8::v9::tl -> print_char v7;
                       				print_char ' ';
                       				print_char v8;
                       				print_char ' ';
                        			print_char v9;
                                    		print_char '|';
    | _ -> ()

let rec map = function
    | [] ->  print_endline "------------------";
    | h::n1::n2::tl ->   
			 print_endline "------------------";
			 print_line_first_three h;
    			 print_line_first_three n1;
    			 print_line_first_three n2;
                    	 print_char '\n';
			 print_line_second_three h;
			 print_line_second_three n1;
			 print_line_second_three n2;
                    	 print_char '\n';
			 print_line_last_three h;
			 print_line_last_three n1;
			 print_line_last_three n2;
                    	 print_char '\n';
                      	 map tl
    | _ -> ()

let instructions player = 
    print_char player;
    print_endline "'s turn to play"

let map_instructions m toPlay = 
    map m;
    instructions toPlay
