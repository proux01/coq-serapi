(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016 MINES ParisTech                                       *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib

(* XXX: Think what to do with this  *)
type universe = [%import: Univ.Universe.t]

(* type _universe                = Ser_Universe of  [@@deriving sexp] *)
(* let _universe_put  universe   = Ser_Universe (Universe.to_string universe) *)
(* let _universe_get (Ser_Universe universe) = Universe.of_string universe *)

(* let universe_of_sexp sexp     = _universe_get (_universe_of_sexp sexp) *)
(* let sexp_of_universe universe = sexp_of__universe (_universe_put universe) *)

open Univ

let universe_of_sexp _sexp     = Universe.make (Level.prop)
let sexp_of_universe _universe = Sexp.Atom "UNIV"

type constraint_type =
  [%import: Univ.constraint_type]
  [@@deriving sexp]

