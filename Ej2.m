% An�lisis de Se�ales y Sistemas - TP Laboratorio N� 1
% Ejercicio 2 - Grupo 6
% Realizado por Huck Marcos A. y Castelluci Leandro E.
% Repositorio disponible en: https://github.com/marcoshuck/matlab-tp1-asys

% Borramos todas las variables del workspace
clear all;
% Borramos los outputs e inputs de la ventana de comandos
clc;

clf;

% << INICIO DEL EJERCICIO 2.2 >>
% Definimos las funciones imaginarias
syms z w;
% Definimos las variables reales
syms u v 'real';

disp('Ejercicio 2 - Grupo 6 - 2.2');

% Asignamos el valor de w.
w = u + j*v;
fprintf('w = %s\n', w);

% Definimos el objeto geom�trico
%x = -50:50;
%y = 2*x + 4;

fprintf('y = %s', '2*x+4\n');

% Graficamos el objeto geom�trico.
%plot(y);

% Encontramos z para el mapeo dado en la consigna.
z = solve(w == 3*z + 6, z);

% Definimos la parte real y la imaginaria de z
x = real(z);
y = imag(z);

% Utilizamos una variable auxiliar para mantener el resultado de
aux = solve(y == 2*x + 4, v);

% Graficamos la imagen del objeto
%ezplot(aux);

% << FIN DEL EJERCICIO 2.2 >>

% Borramos todas las variables del workspace
clear all;

% Realizamos un salto de l�nea por cuesti�n est�tica
fprintf('\n');

% << INICIO DEL EJERCICIO 2.3 >>
% Definimos las funciones imaginarias
syms z w;
% Definimos las variables reales
syms u v 'real';
syms x y 'real';

disp('Ejercicio 2 - Grupo 6 - 2.3');

% Estado de hold graph desactivado
hold off;

% Definimos el objeto geom�trico
fz = x^2+y^2-9;
% Graficamos el objeto geom�trico.
ezplot(fz);

% Estado de hold graph activado
hold on;

% Encontramos z para el mapeo dado en la consigna.
z = solve(w == (z-j)/(z+j), z);

% Definimos la parte real y la imaginaria de z
x = real(z);
y = imag(z);

fz = solve(fz);

% Graficamos la imagen del objeto geom�trico.
ezplot(fz);

% << FIN DEL EJERCICIO 2.2 >>