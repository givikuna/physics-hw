make-legal-JS-name = (s) -->
    name = s.replace /\r?\n|\r/g, '' .trim!
    if /^[a-zA-Z0-9]+$/.test name then return name
    if name[0] is name[0].to-upper-case! then return lodash.camel-case(name)replace /\b\w/g (c) -> c.to-upper-case!
    lodash.camel-case name

export function defun name, func
    if global.has-own-property name then return null
    if not func
        global[make-legal-JS-name name] = null
        return global[make-legal-JS-name name]
    global[make-legal-JS-name name] = func
    func

export function define name, val
    if global.has-own-property name then do
        return global['name']
    if not val then do
        global[make-legal-JS-name name] = null
        return global[make-legal-JS-name name]
    global[make-legal-JS-name name] = val
    val

export function defconstant name, val
    if global.has-own-property name then do
        return global['name']
    if not val then do
        global[make-legal-JS-name name] = null
        return global[make-legal-JS-name name]
    Object.define-property do
        global
        make-legal-JS-name name
        {
            value: val
            writable: false
            configurable: false
        }
    val

export function defparameter name, val
    if global.has-own-property name then do
        return null
    defun name, val

export function defvar name
    if not global.has-own-property name then do
        global[name] = undefined
    return

export function defmacro name, func
    defun name, func

export function setq name, func
    defmacro name, func

export list-ref = (i, xs) --> xs[i]

export id = --> it
