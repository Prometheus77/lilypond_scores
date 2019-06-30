\version "2.18.2"

\header {
  mutopiatitle = "La fille aux cheveux de lin"
  mutopiacomposer = "DebussyC"
  mutopiaopus = "L75"
  mutopiainstrument = "Piano"
  source = "E. Fromont (1905)"
  % Plate E. 1404 F.  IMSLP #02907
  style = "Modern"
  copyright = "Public Domain"
  maintainer = "Peter Cooley"
  title = "La fille aux cheveux de lin"
  subtitle = "(The girl with the flaxen hair)"
  subsubtitle = "From Préludes, Book I"
  composer = "Claude Debussy"
 footer = "Mutopia-2014/03/23-1778"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\pointAndClickOff
\paper {
  #(set-paper-size "letter")
  %annotate-spacing = ##t
  %ragged-bottom = ##t
  %bottom-margin =12
  #(layout-set-staff-size 16)
  %between-system-padding = 1
  %ragged-last-bottom = ##f
}
% Definitios to override page-breaking 
myExplicitBreak = {
  \break
}
myExplicitPageBreak = {
  \pageBreak
}

\include "english.ly"

% restrain the slope of the beams
oflat = {
  \once\override Beam #'damping = #3
}
% Change staff
cu = { \change Staff = "upper" }
cl = { \change Staff = "lower" }
% Suspend collision resolution so notes line up
lu = {\once \override NoteColumn #'ignore-collision = ##t }
% Simplified commands for stem, tie, slur changes
std = { \stemDown }
stu = { \stemUp }
stn = { \stemNeutral }
tid = { \tieDown }
tiu = { \tieUp }
tin = { \tieNeutral }
sld = { \slurDown }
slu = { \slurUp }
sln = { \slurNeutral }
psu = { \phrasingSlurUp }
psd = { \phrasingSlurDown }
psn = { \phrasingSlurNeutral }
% Custom dynamic markings
psansrigueur = \markup { \dynamic p \large \italic " sans rigueur" }


csBracket = \once \override PianoStaff.Arpeggio #'stencil = #ly:arpeggio::brew-chord-bracket


\parallelMusic #'(rhUpRed rhDownGreen rhDownBlack lhUpBlue lhDownGrey lhDownOrange)
{
  \tempo"Très calme et doucement expressif" 

%bar 1

  \slu \psu df'4 ~ \( df8 bf16 gf \stu ef8 gf16 bf |
  \std \tid s4_\psansrigueur s4*2  |
  \std \tid s4*3 |
  
  \dynamicUp \std s4 r2 |
  \dynamicUp \std s4*3 |
  \dynamicUp \std s4*3 |

%bar 2
 
 df8 bf16 gf ef8 gf16 bf gf8\) gf16^- \( ef |
 \psd s8*5 <gf' cf>8 \> \( |
 s8*5 s8 |
 
 r4 r r8 <cf ef>8 \( |
 s4*3 |
 s4*3 |

%bar 3
 
 \tiu gf8 f16 ef df2 ~ |
 <bf gf>2. \! ~ |
 s4*3 |
 
 <df gf,>2. ~ |
 s8*6 |
 s4*3 |
 
%bar 4

 df2 ef8 gf \) | 
 <bf gf>2 \) r4 | 
 s4*3 | 
 
 <df gf,>2 \) r4 | 
 s8*6 |
 s4*3 |
 
 \break
 
 %bar 5
  
 <df f af>4. \( <df f df'>8 <ef gf bf> <df gf>16 bf' |
 s8*6 |
 s4*3 |
 
 <df af'>4. \( <bf f' bf>8 <ef bf'> <gf bf> |
 s8*6 |
 s4*3 |
 
%bar 6 
 
 <df, f af>8 df' <d, f bf>4 <ef bf' ef> ~ |
 s4 s4\< s4 |
 s4*3 |

 <df af'>4 <bf f' bf> \stu <ef, bf' g' bf>_- ~ |
 s4*3 |
 s4*3 |

%bar 7

 <ef bf' ef>4 \) \std bf'4.^- \( c8 \) |
 s4\p s4*2 |
 s4*3 |

 <ef bf' g' bf>4 \) r4 r4 |
 s8*6 |
s4*3 |

%bar 8

 \stu df4 ~ \( df8 bf16 gf ef8 gf16 bf |
 df2 ef4 |
 s4*3 |

 \std <ff' gf bf>2 \( <gf af c>4 |
 s8*6 |
s4*3 |

%bar 9

 df8 bf16 gf ef8 gf16 bf gf8 \) gf16 ef |
 df4 ef <bf df>8 <af cf> |
 s4*3 |

 <ff gf bf>4 <gf af c> \) \stu \psu ef \( |
 s8*5 \psd df8 \( |
s4*3 |

\break

%bar 10

 gf8 f16_ \markup\italic"dim." ef df2 ~ |
 s4 \shape #'((0 . 0) (-2 . 2.5) (-4 . 1.5) (0 . 0)) PhrasingSlur df4 \( ~ df16 cf bf af |
 <gf' bf>2. |

 \tid df2. \) ~ |
 \tid gf2. ~  |
s4*3 |

%bar 11

 \override TextSpanner #'(bound-details left text) = #"Cédéz"
 \override TextSpanner #'(bound-details right text) = \markup { \musicglyph #"scripts.caesura.straight" }
 <df bf>2^ \startTextSpan r8 bf16 \( df \stopTextSpan |
 gf8 \cl \stu f16 ef \tiu df4 ~ df16 cf bf af \)  |
 s4*3 |
 
 \std df2. |
 gf2. \) |
 s4*3 |

%bar 12
 
 ef8^\markup "Mouvement" gf16 af \std cf8 df \<  ef gf ~ |
 s4^\p s4*2 |
 s4*3 |

 \stu <df af' cf df>2.\arpeggio |
 <gf, df' gf>2. ~ |
s4*3 |

%bar 13

 \stu gf8\p \> f16 ef df4 \! ~ df16 cf bf af \) |
 \cu \std <gf'' bf>2 r4 |
 s4*3 |

 <df gf bf df>2 r4 |
 gf2 gf4 |
s4*3 |

%bar 14

 gf16 \( af bf8 ~ bf16 af gf8 ~ gf16 f ef8 |
 ef8._  \markup { \bold\italic"più" \dynamic p } f16 ef8. df16 cf8. bf16 |
  s4*3 |

  \std <gf cf>8. \( <af df>16 <gf cf>8. <f bf>16 <ef af>8. <df gf>16 |
 s4*3 |
 s4*3 |
 
%bar 15
 
 ef 16 df cf8\< ~ cf16 df_ \markup\italic"(très peu)" ff-. af cf df ff af \) \! |
 af2. |
 s4*3 |
 
 \stu <cf ff>2. \) |
 r4 gf2_- |
 s4*3 |
 
%bar 16
 
 cf8^- \p \( bf16 \> af gf2 \) \! |
 <cf' ef>2. |
 s4*3 |
 
 \once \override Slur #'control-points = #'((0 . -0.5) (-0.5 . 2) (1 . 3.5) (2 . 4))
 \slu \appoggiatura cf,8 <gf'' cf ef gf>2. |
 \grace cf8 ~ cf2. |
 s4*3 |

\break

%bar 17
 
 bf8 \( af16 gf ef4 ~ ef8 \> df16 cf \) |
 cf4 f,2 |
 s4*3 |
 
 \std <af ef' gf>4 \p \( <df, af' cf>2 \) |
 s8*6 |
 s4*3 |
 
%bar 18
 
 bf8 \p \( af16 gf ef4 ~ ef8 \> \) ef16 \( c \! |
 \arpeggioBracket cf4 \cl \stu \once \override NoteColumn #'force-hshift = #0 \csBracket <f, af bf>2\arpeggio |
 \arpeggioBracket s4 \stu \once \override NoteColumn #'force-hshift = #0 \csBracket ef'2\arpeggio |
 
 s4 \once \override NoteColumn #'force-hshift = #1.5 bf8 r8 \stu bf4^- ~ |
 <af' ef' gf>4 \( bf,2 \) |
 s4*3 |
 
%bar 19
 
 <g bf ef>2^\markup"Un peu animé" \) <af c>8^- \( ef'16 c |
 s8*6 |
 s4*3 |
 
 bf8 bf16 \( c ef \cu \std f g! bf ~ \once \override NoteColumn #'force-hshift = #1.5 <f bf>4 \) |
 ef2. |
\std \tid s8 bf'8 ~ bf2 ~ |

%bar 20

\override DynamicLineSpanner.staff-padding = #6 <g bf ef>2 \< \) <af' c>8 \p \> \( ef'16 c \! |
 \cu \std r8 bf16 [ \set stemRightBeamCount = #1 c \set stemLeftBeamCount = #1 ef f g \tid bf ] ~ \once \override NoteColumn #'force-hshift = #1.5 <f bf>4 \p \> |
 s4*3 |
 
 s4*3 |
 ef2 \stu c''8 ef16 c |
 \stu bf8 [ bf16 \set stemRightBeamCount = #1 c \set stemLeftBeamCount = #1 ef f g bf ] ~ \std <ef, bf'>4 |
 
%bar 21
 
 ef8 \) \std bf16  \< \( [ \set stemRightBeamCount = #1 c \set stemLeftBeamCount = #1 ef f g bf ] \) \stu ef4^- ~ \mf \( |
 \std <g bf>2 <ef' gf cf>4 ~ |
 s4*3 |
 
 s4*3 |
 ef8 s8 s4 <cf ef gf cf>4_- ~ |
 <ef bf'>8 bf'16 \( [ \set stemRightBeamCount = #1 c \clef treble \set stemLeftBeamCount = #1 ef f g bf ] \) s4 |
 
%bar 22
 
 ef8 [ \tuplet 3/2 { df16 ef df } bf8 ] \) af8^- ~ \( af16 gf f ef \) |
 <ef gf cf>8 <f af> <ef gf> <af, c ef>4. |
 s4*3 |
 
 s4*3 |
 <cf ef gf cf>8 <df f af df> <ef gf bf> \clef bass <ef, af c ef>4.^- \> |
 s4 s8 r8 af,,4 |
 
 \break
 
%bar 23
 
 ef8 \( [ \tuplet 3/2 { df16 ef df ] } bf8 \) \startTextSpan <ef, af>4 \( gf16 <f af> \) \stopTextSpan |
 <ef gf cf>8 [ <f af> ] <ef gf> \cl <af, c>4 \( \cu cf8 \) |
 s4*3 |
 
 \cl <cf gf' cf>8 \( [ <df af' df> ] <ef bf'> \) s4 s8 |
 \stn \tin s4 \p s8 s16 s16 s8 df8 ~ |
 s4 s8 \once \override Hairpin.minimum-length = #5 s8 \> s8 \! s8 |
 
 
%bar 24
 
  \once \override DynamicText.extra-offset = #'(-2.5 . 0) <ef bf'>8.^"Mouvement (sans lourdeur)" \( \pp [ <df gf>16 ] <bf ef>8 <df gf> <ef bf'> <gf df'> |
  s4*3 |
  s4*3 |
  
  \stu \autoBeamOff \crossStaff { bf'8. gf16 ef8 gf bf df } |
  \std <gf, df'>8. \( <ef bf'>16 <df gf>8 <ef bf'> <gf df'> <bf ef> |
  \hideNotes \grace a s4*3 |
 
%bar 25
 
  <ef bf'>8 <df gf> \once \override Hairpin.extra-offset = #'(0.5 . 0) ef4 \< gf \! \) |
  s4*3 |
  s4*3 |
  
  \crossStaff { bf8 gf <ef bf'>4 <gf cf> } |
  <gf df'>8 <ef bf'> <cf gf'>4 <df af'> \) |
  \hideNotes \grace a s4*3 |
 
 %bar 26
  
  \once \override DynamicText.extra-offset = #'(-1.5 . 0) <ef bf'>8. \p \( <df gf>16 <ef bf'>8 <df gf df'> \< <ef bf' ef> <gf df' gf> \! |
  s4*3 |
  s4*3 |
  
  \crossStaff { bf8. gf16 bf8 } \autoBeamOn s8*3 |
  <gf df'>8. \( <bf ef>16 <df gf>8 <ef bf'> <gf df'> <bf ef> |
  \hideNotes \grace a s4*3 |
  
\break
 
%bar 27
 
  <bf ef bf'>8 <gf df' gf> \startTextSpan \) <cf, bf'>4-- ( \> <af df>-- ) \! \stopTextSpan |
  s4*3 |
  s4*3 |
  
  \stn s4 <af, ef' gf>4-- ( <df f>-- ) |
  <df gf>8 <bf ef> \) s4*2 |
  s4*3 |
 
%bar 28
 
  r4^"au Mouvement" \pp r4 df''^-~ \( |
  <gf cf ef gf>2.~ |
  s4*3 |
  
  s4*3 |
  \stu <cf,, gf' cf>2.~ |
  s4*3 |
 
%bar 29
 
  df4^\markup\italic"très doux" ~ df8 bf16 gf ef8 gf16 bf |
  <gf cf ef gf>2. |
  s4*3 |
  
  s4*3 |
  <cf gf' cf>2.~ |
  s4*3 |
 
%bar 30
 
  \once \override Hairpin.extra-offset = #'(0 . 3) df8 \< bf16 gf ef8 gf16 bf \! gf8 \) gf16 \( ef  |
  \cl \stu \psu gf'2 \( af4 |
  s4*3 |
  
  <gf cf ef>2. |
  \std cf2. |
  s4*3 |

\break

%bar 31

  gf4 f ef |
  \cu \std <gf bf>2. \) |
  s4*3 |
  
  <gf bf ef>2. |
  \shiftOn \once \override NoteColumn #'force-hshift = #0.2 <ef bf'>2. \( |
  s4*3 |
 
%bar 32
 
  df4. \> cf8 bf af \) |
  <df gf>2. |
  s4*3 |
  
  s4*3 |
  <gf df' bf'>2. \) |
  s4*3 |
  
 
%bar 33
  
  gf16^"Murmuré et en retenant peu à peu" \pp \( af bf8~ bf16 af gf8~ gf16 f ef8~ |
  ef8. f16 ef8. df16 cf8. bf16 |
  s4*3 |
  
  <gf cf>8. \( <af df>16 <gf cf>8. <f bf>16 <ef af>8. <df gf>16 |
  s4*3 |
  s4*3 |
  
%bar 34
  
  ef16 df ef8~ ef16 df ef8~ ef16 df ef8~ |
  af8. bf16 cf8. bf16 af8. bf16 |
  s4*3 |
  
  <cf f>8. <df gf>16 <ef af>8. <df gf>16 <cf f>8. <df gf>16 |
  s4*3 |
  s4*3 |
  
\break
  
%bar 35

  \set decrescendoText = \markup { \italic { perdendo } }
  \set decrescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'dotted-line
  ef16 \) \( <df gf>^. \> <ef af>^. <gf cf>^. <af df>^. <cf ef>^. <df gf>^. <ef af>^. \) \tuplet 3/2 { <gf cf>8^. \( <af df>^. <cf ef>^. \) } |
  cf2. |
  s4*3 |
  
  <ef af>2. \) \clef treble |
  s4*3 |
  s4*3 |
  
%bar 36
  
  \stn \tin <gf bf df gf>2.~ \pp |
  s4*3 |
  s4*3 |
  
  \stu \tiu <gf' bf df>2.\arpeggio ~ |
  <gf' df'>2.\arpeggio ~ |
  s4*3 |
  
%bar 37
  
  <gf bf df gf>2. ~ |
  s4*3 |
  \arpeggioNormal \cl \stu \shiftOn \once \override NoteColumn #'force-hshift = #2.7 <f f'>4^-\arpeggio b4\rest b4\rest |
  
  \once \override Dots #'extra-offset = #'(-3.6 . 0) <gf bf df>2. |
  \once \override Dots #'extra-offset = #'(-3.6 . 0) <gf df'>2. ~ |
  s4*2 \stu \tiu \hideNotes <gf'' bf df>4 ~ |
  
%bar 38
  
  <bf df>2. |
  \stu \shiftOn \once \override NoteColumn #'force-hshift = #2.7 \arpeggioNormal <gf'' gf'>4^-\arpeggio b4\rest b4\rest |
  \cu \stn \tin s4*2 \hideNotes <bf' df>4 ~ |
  
  s4*3 |
  <gf df'>2. ~ |
  \unHideNotes <gf bf df>2. ~ |
 
%bar 39
  
  s4*3 |
  s4*3 |
  \unHideNotes <bf df>4 r4 r4 |
  
  s4*3 |
  <gf df'>4 r4 r4 |
  <gf bf df>4 r r |
  
}
rhUp = \relative c' \rhUpRed 
rhDown = \relative c \rhDownGreen
rhDowner = \relative c \rhDownBlack
lhUp = \relative c \lhUpBlue
lhDown= \relative c, \lhDownGrey
lhDowner = \relative c, \lhDownOrange


\score { 
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \override Score.SpacingSpanner #'shortest-duration-space = #1.7
    % The 'piano' accidental style has extraNaturals false by default
    %\set PianoStaff.extraNatural = ##f
    #(set-accidental-style 'piano 'Score)
    \set PianoStaff.printKeyCancellation = ##f
    \override PianoStaff.DynamicLineSpanner #'staff-padding = #2
    \override PianoStaff.DynamicText #'self-alignment-X = #LEFT
    \new Staff = "upper" << 
      \key gf \major
      \time 3/4
      \override PianoStaff.PhrasingSlur #'height-limit = #5 
      \new Voice = "red" {
	%{colorize } \override NoteHead #'color = #red %}
	\rhUp
      }
      \new Voice = "green" {
	%{colorize } \override NoteHead #'color = #green %}
	\rhDown
      }
      \new Voice = "black" {
	%{colorize } \override NoteHead #'color = #black %}
	\rhDowner
      }
      
      \new Voice = "dynamics" {
      }
    >>
    \new Staff = "lower" << 
      \key gf \major
      \clef bass
      \time 3/4
      \new Voice = "blue" {
	%{colorize } \override NoteHead #'color = #blue %}
	\lhUp
      }
      \new Voice = "grey" {
	%{colorize } \override NoteHead #'color = #grey %}
	\lhDown
      }
      \new Voice = "orange" {
	%{colorize } \override NoteHead #'color = #orange %}
	\lhDowner
	\bar "|."
      }
      \new Voice = "pedal" {
	\set Staff.pedalSustainStyle = #'bracket
      }
    >>
  >>
  \layout {
    \context {
      \Score 
      \consists #Span_stem_engraver
    }
  }
  \midi {
    %% Remove the dynamics from the midi output
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}


