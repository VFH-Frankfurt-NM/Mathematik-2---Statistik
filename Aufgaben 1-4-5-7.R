## Lösungen für die Aufgabeb 1, 4, 5 und 7 aus Abschnitt 1 und 2
## aus Papula: "..." Band 3 Kapitel III
#
## Wir nutzen als Grundlage das Paket `mosaic`.
## Es muss ggf. vorab mittels:
# install.packages("mosaic")
## installiert werden!
library(mosaic)

# -----------------------------------------------------------------------------
# Aufgabe 1:
wuerfe <- c(2, 1, 4, 6, 3, 6, 4, 4, 3, 5)

# Stabdiagramm
gf_bar( ~ wuerfe)

# Häufigkeitstabelle (absolut)
tally( ~ wuerfe)

# Häufigkeitstabelle (relativ)
tally( ~ wuerfe, format="proportion")

# Ausgabe Mittelwert, Varianz und Standardabweichung
mean(wuerfe)
var(wuerfe)
sd(wuerfe)

# -----------------------------------------------------------------------------
# Aufgabe 4:
wuerfe <- c(rep(0, 20), rep(1, 82), rep(2, 73), rep(3, 25))

# Häufigkeitsverteilung (absolut)
tally(~ wuerfe)

# f(x):
tally(~ wuerfe, format="proportion")

# F(x):
cumsum(tally(~ wuerfe, format="proportion"))

# Stabdiagramm
gf_bar(~wuerfe)

# Treppenfunktion
gf_ecdf(~ wuerfe)

# -----------------------------------------------------------------------------
# Aufgabe 5:
