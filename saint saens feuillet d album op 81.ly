\version "2.18.2"

\header {
  title = "Feuillet d‘Album"
  subtitle = "For piano four hands"
  instrument = "Seconda"
  opus = "Op. 81"
  composer = "Camille Saint-Saens"
}

global = {
  \key bes \major
  \time 4/4
}

csd = \change Staff = "down"
csu = \change Staff = "up"

\parallelMusic #'(voiceA voiceB voiceC voiceD) {
  % Bar 1
  s1 |
  \stemUp r4 <bes d f> r \crossStaff d |
  s s s \crossStaff <f bes> |
  bes4 r f r |
 
  % Bar 2
  s1 |
  r4 <bes d f> r \crossStaff d |
  s s s \crossStaff <f bes> |
  bes4 r f r |
   
  % Bar 3
  s1 |
  r4 <c ees f> r \crossStaff <c ees> |
  s s s \crossStaff f |
  c'4 r f, r |
   
  % Bar 4
  s1 |
  r4 <c ees f> r \crossStaff <c ees> |
  s s s \crossStaff f |
  c'4 r f, r |
  
  % Bar 5
  s1 |
  r4 \crossStaff d r <bes d f> |
  s \crossStaff <f bes> s s |
  d'4 r bes r |
  
  % Bar 6
  s1 |
  r4 <g ees'> r bes |
  s1 |
  ees4 r bes r |
  
  % Bar 7
  s1 |
  r4 \csd <ees, c'> \csu r \csd g \csu |
  s1 |
  c4 r g r |
  
  % Bar 8
  s1 |
  r4 \clef bass \stemDown \slurUp \tieUp g( ~ g8 d' c bes) |
  s1 |
  \stemUp c4( g) c,2 |
  
  % Bar 9
  s2 s4 ees, |
  \slurDown a( b c bes) |
  s1 |
  f1 |
  
  % Bar 10
  s2 s4 ees |
  a( b c bes) |
  s1 |
  f1 |
  
  % Bar 11
  s1 |
  a4 f \slurUp c'8( bes a4 ) |
  s1 |
  f4 r r2 |
}

\score {
  \new PianoStaff <<
     \new Staff = "up" {
       \global
       <<
         \relative c'' \voiceA
         \\
         \relative c'  \voiceB
       >>
     }
     \new Staff = "down" {
       \global \clef bass
       <<
         \relative c \voiceC
         \\
         \relative c \voiceD
       >>
     }
  >>
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    } 
  } 
}