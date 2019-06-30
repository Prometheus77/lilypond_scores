global = {
  \key d \major
  \time 4/4
}

\parallelMusic #'(voiceA voiceB voiceC voiceD) {
  % Bar 1
  s1 |
  s2 s8 a d fis |
  
  s8 <a fis'> ( <d a'> <fis d'> <a fis'> d fis ) s |
  d,1 |

  % Bar 2
  s1 |
  s2 s8 a, d fis |
  
  s8 <a,, fis'> ( <d a'> <fis d'> <a fis'> d fis ) s |
  d1 |

  % Bar 3 
  fis2 ~ fis8 d \tuplet 3/2 { a8 d fis } |
  s2 s8 a, d fis |
  
  s8  <a,, fis'> ( <d a'> <fis d'> <a fis'> d fis ) s |
  d1 |

}

\score {
  \new PianoStaff <<
     \new Staff {
       \global
       <<
         \relative c'' \voiceA
         \\
         \relative c'  \voiceB
       >>
     }
     \new Staff {
       \global \clef bass
       <<
         \relative c \voiceC
         \\
         \relative c \voiceD
       >>
     }
  >>
}