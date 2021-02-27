
/* Definición Léxica */
%lex

%options case-insensitive

%%


"("                 return 'PARIZQ';
")"                 return 'PARDER';


"+"                 return 'MAS';
"-"                 return 'MENOS';
"*"                 return 'POR';
"/"                 return 'DIVIDIDO';

/* Espacios en blanco */
[ \r\t]+            {}
\n                  {}

[0-9]+\b                return 'ENTERO';
([a-zA-Z])[a-zA-Z0-9_]* return 'IDENTIFICADOR';

<<EOF>>                 return 'EOF';

.                       { console.error('Error léxico: ' + yytext + ', Linea: ' + yylloc.first_line + ', Columna: ' + yylloc.first_column); }
/lex
%{
    //const instrucciones = require('./instrucciones');
    let num = 0;
    function newID(){
        num++
        return "var_"+num;
    }
%}

%start ini

%% /* Definición de la gramática */

ini
	: E EOF { console.log($1.c3d); }
;

E 
    : E MAS T           {   let id_mas = newID(); 
                            $$ = {
                                temp: id_mas, 
                                c3d: $1.c3d + $3.c3d + "\n" + id_mas + " = " + $1.temp + " + " + $3.temp
                            };    
                        }
    | E MENOS T      {
                            let id_menos = newID();
                            $$ = {
                                temp: id_menos,
                                c3d: $1.c3d + $3.c3d + "\n" + id_menos + " = " + $1.temp + " - " + $3.temp
                            };      
                        }
    | T                 {
                            $$ = {
                                temp: $1.temp,
                                c3d: $1.c3d
                            };
                        }
;

T 
    : T POR F           {   let id_por = newID(); 
                            $$ = {
                                temp: id_por, 
                                c3d: $1.c3d + $3.c3d + "\n" + id_por + " = " + $1.temp + " * " + $3.temp
                            };
                        }
    | T DIVIDIDO F      {
                            let id_div = newID();
                            $$ = {
                                temp: id_div,
                                c3d: $1.c3d + $3.c3d + "\n" + id_div + " = " + $1.temp + " / " + $3.temp
                            };      
                        }
    | F                 {
                            $$ = {
                                temp: $1.temp,
                                c3d: $1.c3d
                            };
                        }
;

F 
    : PARIZQ E PARDER   { $$ = {
                                temp: $2.temp, 
                                c3d: $2.c3d
                            };
                        }
    | IDENTIFICADOR     { $$ = {
                                temp: $1, 
                                c3d: ""
                            }; 
                        }
    | ENTERO            { $$ = {
                                temp: Number($1), 
                                c3d: ""
                            }; 
                        }
;
