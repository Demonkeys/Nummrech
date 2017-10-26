%Aufgabe 3.b und 3.d

%Aufgabe 3.b
%Erschaffe ein neues Fenster für den Graphen
figure('name','Aufgabe 3.b');
hold on;
movegui('northwest');

%Das x soll bestimmen, welche Werte man für die Funktion gebrauchen will.
%Wir haben Werte zwischen 0 und pi/8 und gehen in Schritten von pi/1000
x = 0:pi/1000:pi/8;

%Funktion g(x)
p0 = sin(8*x);

%Taylorpolynom vom ersten Grad
p1 = 1+0*x;

%Taylorpolynom vom zweiten Grad
p2 = 1-32*(x.^2-pi/8*x+pi.^2/16.^2);

%Plottet die drei Funktionen mit den Eingabewerten von x
plot(x,p0);
plot(x,p1);
plot(x,p2);


%Geben dem Graphen einen Namen und eine Legende
title('Taylorpolynom');
legend('sin(8x)','1','1-32*(x-pi/16)^2');
hold off;

%Aufgabe 3.d
%Das a soll bestimmen, welche Werte man für die Funktion gebrauchen will.
%Wir haben Werte zwischen pi/32 und 3*pi/32 und gehen in Schritten von pi/1000
a = pi/32:pi/1000:3*pi/32;

%Relative Konditionszahl
f0 = abs(a*8.*cot(8*a));

%Relativer Fehler der Ausgabe
f1 = abs(sin(8*a)-sin(8*(a+0.05))/sin(8*a));

%Wir öffnen nun ein weiters Fenster, welches sich diesmal auf der anderen
%Seite befindet, damit sich nicht beide Fesnter ueberlagern
figure('name','Aufgabe 3.d');
movegui('northeast');
hold on;

%Plotte beide Funktionen in den Graph
plot(a,f0);
plot(a,f1);
title('Fehler');
%Ja ich habe das vergessen zu machen also hast du nur die kaka version
%davon
legend('Relative Konditionszahl', 'Relativer Fehler der Ausgabe');
hold off;