(* This file was generated by Ocsigen-start.
   Feel free to use it, modify it, and redistribute it as you wish. *)

(** This module is used for i18n (internationalization). I18n allows to have an
    application in multiple languages.
    The rule [make i18n-update] uses this module to create the i18n file for
    translations (see [Makefile.options]).
 *)

(* ocsigen-i18n uses the type [language] client and server side so everything
 * must be defined in a shared section.
 *)

[%%shared.start]

(** [language_of_string lang_str] returns the equivalent language to [lang_str]
    as a {!%%%MODULE_NAME_i18n.language} type. If the language is not found, it
    raises a {!Not_found} exception.
 *)
val language_of_string : string -> %%%MODULE_NAME%%%_i18n.t

(** [string_of_language lang] returns the equivalent language to [lang] as a
    string.
 *)
val string_of_language : %%%MODULE_NAME%%%_i18n.t -> string

(** [get_language ()] returns the language for the current user.
    It retrieves the language from the file %%%PROJECT_NAME%%%_i18n, not from
    the database.
 *)
val get_language : unit -> %%%MODULE_NAME%%%_i18n.t

(** [set_language lang] updates the language for the current user with
    the value [language]. It doesn't update the value in the database.
 *)
val set_language : %%%MODULE_NAME%%%_i18n.t -> unit

[%%server.start]

(** [update_language language] updates the language (client and server side) for
    the current user with the value [language]. It also updates the value in the
    database if an user is connected.
 *)
val update_language : %%%MODULE_NAME%%%_i18n.t -> unit Lwt.t
