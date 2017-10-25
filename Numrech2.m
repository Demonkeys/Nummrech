%zweiter Punkt der Aufgabe
%Das x soll sagen, welche Daten wir gerne hätten
x = 0:pi/1000:pi/8;
%Funktion g(x)
p0 = sin(8*x);
%Erster Grad
p1 = 1+0*x;
%Zweiter Grad
p2 = 1+32*(x.^2-pi/8*x+pi.^2/16.^2);
%Plottet die drei Funktionen mit den Eingabewerten von x
plot(x,p0,x,p1,x,p2);
%Das verstehst du hoffentlich nigga
title('Taylorpolynom');
legend('sin(8x)','1','1+32*(x-pi/16)^2');

%Die letzte Aufgabe
a = pi/32:pi/1000:3*pi/32;
%Ich habe vergessen wie man diese Funktionen nennt, aber du verstehst das
%sicher xD
f0 = a*8.*tan(8*a);
f1 = abs(sin(8*a)-sin(8*(a+0.05))/sin(8*a));
%figure öffnet ein zweites Fenster, damit man einfach nur einen Code nutzen
%kann. Ich gucke mal später nach, ob man den Titel ändern kann des Fensters
%selber
figure;
%Man kann auch so zwei Funktionen in einem Graphen zeichnen. Damit kann ich
%noch leichter paar Sachen einstellen um es schöner zu machen. Aber das
%mache ich später
plot(a,f0);
hold on;
plot(a,f1);
title('Fehler');
%Ja ich habe das vergessen zu machen also hast du nur die kaka version
%davon
legend('Das Ding mit tan', 'Das Ding mit sin');
