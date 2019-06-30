\version "2.18.2"

\header {
  mutopiatitle = "Prelude in C-sharp Minor"
  mutopiacomposer = "RachmaninovS"
  mutopiainstrument = "Piano"
  source = "Oliver Ditson (ca. 1915)"
  % IMSLP #39661
  maintainer = "Peter Cooley"
  title = "Prelude in C-sharp Minor"
  subtitle = "from Morceaux de Fantaisie, Op. 3"
  composer = "Sergei Rachmaninov"
 footer = "Mutopia-2014/05/04-0500"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "english.ly"

\paper {
  #(set-paper-size "letter")
  %annotate-spacing = ##t
  page-breaking = #ly:minimal-breaking
  bottom-margin = 0.5 \in
  left-margin = 0.75 \in
  right-margin = 0.75 \in
  top-margin = 0.5 \in
  #(layout-set-staff-size 17)
  ragged-last-bottom = ##f
}

%shortcuts for complex expressions
csu = {\change Staff = "up"}
csd = {\change Staff = "down"}
fingerUpLeft = {\set fingeringOrientations = #'(up left)}
fingerRight = {\set fingeringOrientations = #'(right)}
fingerLeft = {\set fingeringOrientations = #'(left)}
fingerUp = {\set fingeringOrientations = #'(up)}

%custom dynamic markings
ppEtRit = \markup { \left-align \line { \hspace #6.7 pp \normal-text \italic "et rit." } }
ppEtRitDynamic = #(make-dynamic-script ppEtRit)
fffConForza = \markup { \left-align \line { \hspace #6.7 fff \normal-text \italic "con forza" } }
fffConForzaDynamic = #(make-dynamic-script fffConForza)
sfff = \markup { \left-align \line { \hspace #6.7 sfff } }
sfffDynamic = #(make-dynamic-script sfff)

global = {
  \key cs \minor
  \accidentalStyle piano
}

\parallelMusic #'(voiceA voiceB voiceDynE voiceC voiceD) {

\tempo"Lento"

%bar 1
s4*2 s4*2 |
\stemUp s4*2 a,4->\finger "2-3" gs->\finger "2-3" |

s4*2 s4 \ff s4 |

s4*2 s4*2 |
\stemUp s4*2 <a a'>4-> <gs gs'>-> |

%bar 2
s4*4 |
cs,1->\finger "2-3" ~ |

s4*4 |

s4*4 |
<cs, cs'>1-> ~ |

%bar 3
\fingerUpLeft r8 <cs,-1 gs'-2 cs-5>-- <e-1 b'-3 e-5>-- <ds-1 as'-2 ds-5>-- r \fingerRight <d-1 a'-2 d-5>-- [ r <bs-1 fs'-2 bs-5>-- ] |
\stemDown cs2 a'4-2-. gs-2-. |

s8 s8 \pp s4 s4 s4 |

\stemDown r8 <e gs e'>-- \unaCorda <gs b gs'>-- <fss a fss'>-- r \stemUp <fs bs fs'>-- [ r <ds fs ds'>-- ] |
\stemNeutral <cs cs'>2 <a' a'>4-. <gs gs'>-. |

%bar 4
\fingerUpLeft r8 <cs-1 gs'-2 cs-5>-- <e-1 b'-3 e-5>-- <ds-1 as'-2 ds-5>-- r <d a' d>-- [ r <bs fs' bs>-- ] |
cs,2-2 a'4-2-. gs-2-. |

s4*4 |

\stemDown r8 <e gs e'>-- <gs b gs'>-- <fss a fss'>-- r \stemUp <fs bs fs'>-- [ r <ds fs ds'>-- ] |
<cs, cs'>2 <a' a'>4-. <gs gs'>-. |

%bar 5
r8 <cs gs' cs>-- <gs' cs gs'>-- <fs cs' fs>-- r <e a e'>-- [ r <ds a' ds>-- ] |
cs,2 c'4-2-. b-2-. |

s8 s8 \< s8 s8 \! s4 s4 |

\stemDown r8 <e gs e'>-- <b' cs b'>-- <a cs a'>-- r \stemUp <fs a fs'>-- [ r <fs a fs'>-- ] |
<cs, cs'>2 <c' c'>4-. <b b'>-. |

%bar 6
r8 <e b' e>-- <b' e b'>-- <a e' a>-- r <gs cs gs'>-- [ r <fss cs' fss>-- ] |
e,2 e'4-2-. ds-2-. |

s8 s8 \< s8 s8 \! s4 s4 |

\stemDown r8 <gs b gs'>-- <ds' e ds'>-- <cs e cs'>-- r \stemUp <as cs as'>-- [ r <as cs as'>-- ] |
<e, e'>2 <e' e'>4-. <ds ds'>-. |

%bar 7
\fingerLeft r8 <gs-1 ds'-2 gs-5>-- ( <a-1 e'-3 a-5>-- ) <fs-1 cs'-2 fs-5>-- ( <gs-1 ds'-3 gs-5>-- ) <e-1 b'-2 e-5>-- ( <fs-1 cs'-3 fs-5>-- ) <ds-1 a'-2 ds-5>-- ( |
gs,1-2 ~ |

s4 \mf s4*3 |

\stemDown r8 <b ds b'>-- ( <cs e cs'>-- ) <a cs a'>-- ( <b ds b'>-- ) <gs b gs'>-- ( <a cs a'>-- ) <fs a fs'>-- ( |
<gs, gs'>1 ~ |

%bar 8
<e b' e>8-- ) <e b' e>-- ( <fs cs' fs>-- ) <ds a' ds>-- ( <e b' e>-- ) <cs gs' cs>-- ( <ds a' ds>-- ) <bs fs' bs>-- ( |
gs8 r8 r4 r2 |

s4*4 |

<gs b gs'>8-- ) <gs b gs'>-- ( <a cs a'>-- ) <fs a fs'>-- ( <gs b gs'>-- ) <e gs e'>-- ( <fs a fs'>-- ) <ds fs ds'>-- ( |
\stemDown <gs gs'>8 r8 r4 r2 |

%bar 9
<cs gs' cs>8-- ) <cs gs' cs>-- [ <e b' e>-- <ds as' ds>-- ] r <d a' d>-- [ r <bs fs' bs>-- ] |
r2 a4-2-. gs-2-. |

s4 \p s4*3 |

<e gs e'>8-- ) <e gs e'>-- [ <gs b gs'>-- <fss as fss'>-- ] r \stemUp <fs bs fs'>-- [ r <ds fs ds'>-- ] |
\stemUp r2 <a a'>4-. <gs gs'>-. |

%bar 10
r8 <cs gs' cs>-- <gs' cs gs'>-- <fs cs' fs>-- r <e a e'>-- [ r <bs fs' bs>-- ] |
cs,2-2 a'4-. gs-. |

s4*4 |

\stemDown r8 <e gs e'>8-- <b' cs b'>-- <a cs a'>-- r \stemUp <fs bs fs'>-- [ r <ds fs ds'>-- ] |
<cs, cs'>2 <a' a'>4-. <gs gs'>-. |

%bar 11
r8 <cs gs' cs>-- ( <d a' d>-- ) <b fs' b>-- ( <cs gs' cs>-- ) <a e' a>-- ( <b fs' b>-- ) <gs ds' gs>-- ( |
cs,1 ~ |

s8 s8 \dim s8 s8 s8 s8 s8 s8 \! |

\stemDown r8 <e gs e'>-- ( <fs a fs'>-- ) <d fs d'>-- ( <e gs e'>-- ) <cs e cs'>-- ( <d fs d'>-- ) <b fs' b>-- ( |
<cs, cs'>1 ~ |

%bar 12
<a fs' a>8-- ) <a fs' a> [ <cs fs cs'>-- <b fs' b>-- ] r <a e' a>-- [ r <gs ds' gs>-- ] \clef bass |
cs8 r r4 fss-2-. gs-2-. |

s8*4 s8 \> s8*3 |

<cs fs cs'>8-- ) <cs fs cs'>-- [ <e fs e'>-- <d fs d'>-- ] r \stemUp <e cs'>-- [ r <ds fs bs>-- ] |
\stemDown <cs cs'>8 r r4 \stemNeutral <fss fss'>4-. <gs gs'>-. |

%bar 13
r8 <e-1 cs'-4>-- ( <gs-2 e'-5>-- <fss ds'-4>-- ) r <fs bs d>-- r <ds fs bs>-- |
cs,2-2 a'4-2 ( gs-3 ) |

s4 \ppEtRitDynamic s4*3 |

r8 gs,-- ( b-- as-- ) s2 |
<cs, cs'>2 <a' a'>4 ( <gs gs'> ) |

%bar 14
r8 <e cs'>-- ( <gs e'>-- <fss ds'>-- ) r <fs bs d>-- r <ds fs bs>-- \clef treble |
cs,2 a'4 ( gs ) |

s4*4 |

r8 gs-- ( b-- as-- ) s2 |
<cs, cs'>2 <a' a'>4 ( <gs gs'> ) |

\break

%bar 15
\tempo"Agitato"
e'4 ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e'8^5 gs,-\tweak Y-offset #-2 -1 cs-\tweak Y-offset #-1.5 -3 ds^4 fss,-\tweak Y-offset #-2 -1 cs'-\tweak Y-offset #-1.5 -3 d^5 fs,-\tweak Y-offset #-2 -1 bs-\tweak Y-offset #-1.5 -3 cs^4 e,-\tweak Y-offset #-2 -1 gs-\tweak Y-offset #-1.5 -2 } |

s4 \mf s4 \> s4 s4 \! |

\stemNeutral r4 as_2-- ( a_1-- gs-- ) |
<cs, cs'>1 |

%bar 16
e4-- ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e'8 gs, cs ds fss, cs' d fs, bs cs e, gs } |

s4 s4\> s4 s4\! |

\stemNeutral b4-- ( as-- a_1-- gs_2-- ) |
cs'1 |

%bar 17
gs'4 ( fs ) a ( gs ) |
\tuplet 3/2 4 { gs'8^5 gs,-\tweak Y-offset #-2 -1 cs-\tweak Y-offset #-1.5 -2 fs^4 a,-\tweak Y-offset #-2 -1 cs-\tweak Y-offset #-1.5 -2 a'^5 fs,-\tweak Y-offset #-2 -1 cs'-\tweak Y-offset #-1.5 -2 gs'^5 gs,-\tweak Y-offset #-2 -1 cs-\tweak Y-offset #-1.5 -2 } |

s4 s4 \cresc s4 s4 \! |

\slurNeutral e4 ( ds ) fs ( e ) |
s1 |

%bar 18
\override TupletBracket.positions = #'(2.0 . 2.0) 
\override TupletBracket.bracket-visibility = ##f \tuplet 3/2 { fs8 ( s e ) } fs4 \tuplet 3/2 { e8 ( s d8 ) } e4 |
\tuplet 3/2 4 { fs8^5 <fs, cs'> e'-\tweak Y-offset #1.5 -4 fs^5 fs, cs' e^5 <fs, bs> ds'-\tweak Y-offset #1.4 -4 e^5 e, cs' } |

s4 s4 \dim s4 \> s4 |

a4 ( ds, ) gs s |
s4 s s cs ~  |

%bar 19
e4-- ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e8 gs, cs ds fss, cs' d fs, bs cs e, gs } |

s4 \mf s4\> s4 s4\! |

\slurUp b4 (-- as_2-- a_1-- gs-- ) |
cs1 |

%bar 20
e4-- ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e'8 gs, cs ds fss, cs' d fs, bs cs e, gs } |

s4 s4 \> s4 s4 \! |

b4 (-- as-- a-- gs-- ) |
cs1 |

%bar 21
gs'4 ( fs ) a ( gs ) |
\tuplet 3/2 4 { gs'8^5 gs, cs fs^4 a, cs a'^5 fs, cs' gs'^5 gs, cs } |

s4*4 |

\slurNeutral e4 ( ds ) fs ( e ) |
s1 |

%bar 22
cs4 ( b ) d ( cs ) |
\tuplet 3/2 4 { cs'8^5 cs, a' b^4 d, a' d d, gs cs cs, a' } |

s4*4 |

\stemUp \slurUp e'4^1 ( fs^2 ) f^1 ( e^2 ) |
a'1 |

%bar 23
fs4 ( e ) d ( cs ) |
\tuplet 3/2 4 { fs'8^5 a, ds e^4 gs, cs d^5 es, b' cs^4 fs, a } |

s4*4 |

\fingerRight \stemDown <bs'-4 ds-2>4 ( <cs e> ) <gs-4 b-2> ( <a cs> ) |
s1 |

%bar 24
d4 ( cs ) b ( a ) |
\tuplet 3/2 4 { d8^5 es, b' cs^4 fs, a b^5 d, gs a^4 cs, fs } |

s4 s4 \dim s4 s4\! |

<gs-4 b-2>4 ( <a cs> ) <es-4 gs-2> ( <fs a> ) |
s1 |

%bar 25
a4 ( gs ) fs ( e ) |
\tuplet 3/2 4 { as8 bs, fs' gs cs, e fs^5 a, ds e gs, cs } |

s4 s4 \> s4 s4 \! |

\stemNeutral <ds-4 fs-2>4 ( <e gs> ) <bs-4 ds-2> ( <cs e> ) |
s1 |

%bar 26
d4->-\tweak Y-offset #1.5 -3 ( a' ) ds,->-\tweak Y-offset #1.5 -3 ( as' ) |
\tuplet 3/2 4 { d8 a cs a' a, cs ds as cs a' as, cs } |

s4 s4 \cresc s4 s4 \! |

\stemUp r4 d r ds |
\stemDown fs2-> fss-> |

%bar 27
e4-\tweak Y-offset #1.5 -3-> ( b' ) bs-> ( cs ) |
\tuplet 3/2 4 { e8 b ds b' b, ds bs' bs, fs' cs' cs, e } |

s4 s4 \< s4 s4 \! |

r4 e ( ds cs ) |
gs2. cs4 |

%bar 28
e4-> ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e'8^5 gs, cs ds^4 fss, cs' d^5 fs, bs cs^4 e, gs } |

s4 \ff s4*3 |

b'4--\arpeggio ( as^2-- a-- gs-- ) |
cs,1\arpeggio |

%bar 29
e4-> ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e'8 gs, cs ds fss, cs' d fs, bs cs e, gs } |

s4*4 |

b4--\arpeggio ( as^2-- a-- gs-- ) |
cs1\arpeggio |

\pageBreak

%bar 30
gs'4-5 ( fs-4 ) a-5 ( gs-4 ) |
\tuplet 3/2 4 { gs'8 gs, cs fs a, cs a' fs, cs' gs' gs, cs } |

s4*4 |

cs1 |
e'4 ( ds ) fs ( e ) |

%bar 31
\tuplet 3/2 { fs4-5 ( e8-4 ) } fs4-5 \tuplet 3/2 { e4-5 ( ds8-4 ) } e4-5 |
\tuplet 3/2 4 { fs8 <fs, cs'> e' fs fs, cs' e <fs, bs> ds' e e, cs' } |

s4 \dim s4 s4 s4 |

\stemNeutral a4 ( ds, ) gs ( cs, ) |
s1 |

%bar 32
e4-5-- ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e8 gs, cs ds fss, cs' d fs, bs cs e, gs } |

s4 \mf s4*3 |

\stemUp b'4--\arpeggio ( as-- a-- gs-- ) |
cs,1\arpeggio |

%bar 33
e4-> ( ds-- d-- cs-- ) |
\tuplet 3/2 4 { e'8 gs, cs ds fss, cs' d fs, bs cs e, gs } |

s4*4 |

\stemUp b4--\arpeggio ( as-- a-- gs-- ) |
cs1\arpeggio |

%bar 34
gs'4 ( fs ) a ( gs ) |
\tuplet 3/2 4 { gs'8 gs, cs fs a, cs a' fs, cs' gs' gs, cs } |

s4 \cresc s4*3 |

cs1 |
e'4 ( ds ) fs ( e ) \clef treble |

%bar 35
b4-> ( a ) d-> ( cs ) |
\tuplet 3/2 4 { b'8^5 d, gs a^4 cs, fs d'^5 es, b' cs^4 fs, a } |

s4 \f s4*3 |

<es-4 gs-2>4-> ( <fs a> ) <gs-4 b-2>-> ( <a cs> ) |
s1 |

%bar 36
fs4 ( e ) s2 |
\fingerRight \stemNeutral \tuplet 3/2 { fs'8 a, ds } \tuplet 3/2 {e gs, cs } \once \override TupletBracket.positions = #'(-0.7 . -0.7)  \tuplet 3/2 { <bs fs' a-5>^> \csd <ds,-4 fs-2> \csu <bs' fs' a> } \csd \once \override TupletBracket.positions = #'(6.5 . 6.5) \tuplet 3/2 { <e,-3 gs-1>_> \csu <cs' e gs-4> \csd <e, gs> } |

s4 \< s4 \! s4 \ff s4 |

<bs-4 ds-2>4-> ( <cs e> ) s2 |
s1 |

%bar 37
s1 |
\csu \once \override TupletBracket.positions = #'(-1.7 . -1.7) \tuplet 3/2 { <a ds fs-5>8^> \csd <bs,-4 ds-2> \csu <a' ds fs> } \csd \once \override TupletBracket.positions = #'(5.5 . 5.5) \tuplet 3/2 { <cs, e>_> \csu <gs' cs e-5> \csd <cs, e> } \csu \once \override TupletBracket.positions = #'(-2.7 . -2.7) \tuplet 3/2 { <es b' d>^> \csd <gs,-4 b-2> \csu <es' b' d> } \csd \once \override TupletBracket.positions = #'(4.5 . 4.5) \tuplet 3/2 { <a,-3 cs-1>_> \csu <fs' a cs-4> \csd <a, cs> } |

s4*4 |

s1 |
s1 |

%bar 38
s1 |
\csu \once \override TupletBracket.positions = #'(-3.5 . -3.5) \tuplet 3/2 { <d gs b-5>8^> \csd <es,-4 gs-2> \csu <d' gs b> } \csd \once \override TupletBracket.positions = #'(3.0 . 3.0) \tuplet 3/2 { <fs,-3 a-1>_> \csu <cs' fs a-4> \csd <fs, a> } \csu \once \override TupletBracket.positions = #'(-4.0 . -4.0) \tuplet 3/2 { <bs fs' a-5>^> \csd <ds,-4 fs-2> \csu <bs' fs' a> } \csd \once \override TupletBracket.positions = #'(3.0 . 3.0) \tuplet 3/2 { <e, gs>_> \csu <cs' e gs-4> \csd <e, gs> } \clef bass |

s4*4 |

s1 |
s1 |

%bar 39
s1|
\csu \once \override TupletBracket.positions = #'(-2.0 . -2.0) \tuplet 3/2 { <a ds fs-5>8^> \csd <bs,-4 ds-2> \csu <a' ds fs> } \csd \once \override TupletBracket.positions = #'(4.5 . 4.5) \tuplet 3/2 { <cs, e>^> \csu <gs' cs e-4> \csd <cs, e> } \csu \once \override TupletBracket.positions = #'(-3.2 . -3.2) \tuplet 3/2 { <es b' d-5>^> \csd <gs,-4 b-2> \csu <es' b' d> } \csd \once \override TupletBracket.positions = #'(3.9 . 3.9) \tuplet 3/2 {  <a, cs>^> \csu <fs' a cs-4> \csd <a, cs> } |

s4*4 |

s1 |
s1_\markup \italic {"poco et poco cresc."} |

%bar 40
s1 |
\csu \once \override TupletBracket.positions = #'(-4.0 . -4.0) \tuplet 3/2 { <d gs b-5>8^> \csd <es,-4 gs-2> \csu <d' gs bs> } \csd \once \override TupletBracket.positions = #'(2.8 . 2.8) \tuplet 3/2 { <fs, a>^> \csu <cs' fs a-5> \csd <fs, a> } \csu \once \override TupletBracket.positions = #'(-4.5 . -4.5) \tuplet 3/2 { <bs fs' a>^> \csd <ds,-4 fs-2> \csu <bs' fs' a> } \csd \once \override TupletBracket.positions = #'(2.4 . 2.4) \tuplet 3/2 { <e, gs>^> \csu <cs' e gs-4> \csd <e, gs> } |

s4*4 |

s1 |
s1 |

%bar 41
s1 |
\csu \once \override TupletBracket.positions = #'(-6 . -6) \tuplet 3/2 { <a ds fs-5>8^> \csd <bs,-4 ds-2> \csu <a' ds fs> } \csd \once \override TupletBracket.positions = #'(1.8 . 1.8) \tuplet 3/2 { <cs, e>^> \csu <gs' cs e-4> \csd <cs, e> } \csu \once \override TupletBracket.positions = #'(-5.2 . -5.2) \tuplet 3/2 { <bs' fs' a-5>^> \csd <ds,-4 fs-2> \csu <bs' fs' a> } \csd \once \override TupletBracket.positions = #'(3.1 . 3.1) \tuplet 3/2 { <e, gs>^> \csu <cs' e gs-4> \csd <e, gs> } |

s4*4 |

s1 |
s1 |

%bar 42
s1 |
\csu \once \override TupletBracket.positions = #'(-6.4 . -6.4) \tuplet 3/2 { <a ds fs-5>8^> \csd <bs,-4 ds-2> \csu <a' ds fs> } \csd \once \override TupletBracket.positions = #'(2.2 . 2.2) \tuplet 3/2 { <cs, e>^> \csu <gs' cs e-4> \csd <cs, e> } \csu \once \override TupletBracket.positions = #'(-6.4 . -6.4) \tuplet 3/2 { <a' ds fs>8^> \csd <bs, ds> \csu <a' ds fs> } \csd \once \override TupletBracket.positions = #'(2.2 . 2.2) \tuplet 3/2 { <cs, e>^> \csu <gs' cs e> \csd <cs, e> } |

s4*4 |

s1 |
s1 |

%bar 43
s1 |
\csu \once \override TupletBracket.positions = #'(-6.4 . -6.4) \tuplet 3/2 { <a' ds fs-5>8^> \csd <bs,-4 ds-2> \csu <a' ds fs> } \csd \once \override TupletBracket.positions = #'(2.2 . 2.2) \tuplet 3/2 { <cs, e>^> \csu <gs' cs e-4> \csd <cs, e> } \csu \once \override TupletBracket.positions = #'(-6.4 . -6.4) \tuplet 3/2 { <a' ds fs-5>8^> \csd <bs, ds> \csu <a' ds fs> } \csd \once \override TupletBracket.positions = #'(2.2 . 2.2) \tuplet 3/2 { <cs, e>^> \csu <gs' cs e-4> \csd <cs, e> } |

s4*4 |

s1 |
s1 |

%bar 44
 r2 <fs,, cs' fs>-> |
 \csu <a' a'>1 |
 
s4*4 |

 r2 <cs,, fs cs'>-> |
 <a,, a'>1 |

%bar 45
r2 <gs bs gs'>-> |
<gs gs'>1 |

s4*4 |

r2 <fs bs ds fs>-> |
<gs gs'>1 |

}

\parallelMusic #'(voiceAA voiceBB voiceDynEE voiceCC voiceDD) {

\tempo"Tempo I."
\set Score.currentBarNumber = #46
%bar 46
\stemNeutral r8 <cs e gs cs>-> <e gs b e>-> <ds fss as ds>-> r <d fs bs d>-> r <bs ds fs bs>-> |
\stemNeutral <cs, e gs cs>2-> <a' a'>4-> <gs gs'>-> |

s4 \fffConForzaDynamic s4*3 |

\stemNeutral r8 <e gs cs e>-> <gs b e gs>-> <fss a ds fss>-> r <fs bs ds fs>-> r <ds fs bs ds>-> |
\stemNeutral <cs, e gs cs>2-> <a' a'>4-> <gs gs'>-> |

%bar 47
r8 <cs e gs cs>-> <e gs b e>-> <ds fss as ds>-> r <d fs bs d>-> r <bs ds fs bs>-> |
<cs, e gs cs>2-> <a' a'>4-> <gs gs'>-> |

s4*4 |

r8 <e gs cs e>-> <gs b e gs>-> <fss a ds fss>-> r <fs bs ds fs>-> r <ds fs bs ds>-> |
<cs, e gs cs>2-> <a' a'>4-> <gs gs'>-> |

%bar 48
r8 <cs e gs cs>-> <gs' cs gs'>-> <fs cs' fs>-> r <e fs a e'>-> r <ds fs a ds>-> |
<cs, e gs cs>2-> <c' c'>4-> <b b'>-> |

s4*4 |

r8 <e gs cs e>-> <b' cs gs' b>-> <a cs fs a>-> r <fs a e' fs>-> r <fs a d fs>-> |
<cs, e gs cs>2-> <a' a'>4-> <gs gs'>-> |

\break

%bar 49
r8 <e gs b e>-> <b' e b'>-> <a e' a>-> r <gs as cs gs'>-> r <fss as cs fss>-> |
<e, gs b e>2-> <e' e'>4-> <ds ds'>-> |

s4*4 |

r8 <gs bs e gs>-> <ds' e b' ds>-> <cs e a cs>-> r <as cs gs' as>-> r <as cs fss as>-> |
<e gs b e>2-> <e' e'>4-> <ds ds'>-> |

%bar 50
r8 <gs b ds gs>-> <a cs e a>-> <fs a cs fs>-> <gs b ds gs>-> <e gs b e>-> <fs a cs fs>-> <ds fs a ds>-> |
\tieNeutral <gs, bs ds gs>1 ~ |

s4 \sfffDynamic s4*3 |

r8 <b ds gs b>-> <cs e a cs>-> <a cs fs a>-> <b ds gs b>-> <gs b e gs>-> <a cs fs a>-> <fs a ds fs>-> |
\tieNeutral <gs, bs ds gs>1 ~ |

%bar 51
<e gs b e>8-> <e gs b e>-> <fs a cs fs>-> <ds fs a ds>-> <e gs b e>-> <cs e gs cs>-> <ds fs a ds>-> <bs ds fs bs>-> |
<gs bs ds gs>8 r8 r4 r2 |

s4*4 |

<gs b e gs>8-> <gs b e gs>-> <a cs fs a>-> <fs a ds fs>-> <gs b e gs>-> <e gs cs e>-> <fs a ds fs>-> <ds fs bs ds>-> |
<gs bs ds gs>8 r8 r4 r2 |

\break

%bar 52
<cs e gs cs>8-> \arpeggio <cs e gs cs>-> <e gs b e>-> <ds fss as ds>-> r <d fs as d>-> r <bs ds fs bs>-> |
<cs, cs'>2-> \arpeggio <a' a'>4-> <gs gs'>-> |

s4*4 |

<e gs cs e>8-> \arpeggio <e gs cs e>-> <gs b e gs>-> <fss as ds fss>-> r <fs bs d fs>-> r <ds fs bs ds>-> |
<cs, cs'>2-> \arpeggio <a' a'>4-> <gs gs'>-> |

%bar 53
r8 <cs e gs cs>-> <gs' cs gs'>-> <fs cs' fs>-> r <e fs bs e>-> r <bs ds fs bs>-> |
<cs, e gs cs>2-> <a' a'>4-> <gs gs'>-> |

s4*4 |

r8 <e gs cs e>-> <b' cs gs' b>-> <a cs fs a>-> r <fs bs e fs>-> r <ds fs b ds>-> |
<cs, e gs cs>2-> <a' a'>4-> <gs gs'>-> |

%bar 54
<cs e gs cs>8-> \arpeggio <cs, gs' cs>-- [ <d a' d>-- <b fs' b>-- ] <cs gs' cs>-- <a e' a>-- <b fs' b>-- <gs ds' gs>-- |
<cs, cs'>2-> \arpeggio ~ <cs cs'>8 r r4 |

s8 s8 \dim s4*3 |

<e gs cs e>8-> \arpeggio <e gs e'>-- [ <fs a fs'>-- <d fs d'>-- ] <e gs e'>-- <cs e cs'>-- <d fs d'>-- <b fs' b>-- |
<cs, cs'>2-> \arpeggio ~ <cs cs'>8 r r4 |

%bar 55
<a fs' a>8-- <a fs' a>-- [ <cs fs cs'>-- <b fs' b>-- ] r <a e' a>-- r <gs fs' gs>-- |
r2 fss4-- gs-- |

s8 \f \> s8 s4*3 |

<cs fs cs'>8-- <cs fs cs'>-- [ <e fs e'>-- <d fs d'>-- ] r <e cs'>-- r <ds fs bs>-- |
r2 <fss fss'>4-- <gs gs'>-- |

\break

%bar 56
r4 <cs a' cs>2.-- |
cs,1-- |

s2 \mf s2 |

r4 <e a e'>2.-- |
<cs, cs'>1-- |

%bar 57
r4 <cs gs' cs>2.-- |
cs1-- |

s2 \dim s2 |

r4 <e as e'>2.-- |
<cs cs'>1-- |

%bar 58
r4 <cs a' cs>2.-- |
cs1-- |

s4*4 |

r4 <e g e'>2.-- |
<cs cs'>1-- |

%bar 59
r4 <cs fs as cs>2.-- |
cs1-- |

s2 s2 \> |

r4 <e fs as e'>2.-- |
<cs cs'>1-- |

%bar 60
r4 <cs fs a cs>2.-- |
cs1-- |

s4*4 |

r4 <ds fs a ds>2.-- |
<cs cs'>1-- |

%bar 61
r2 <cs e gs cs>4. ( <gs' cs e gs>8 ) |
cs1-- ~ |

s4*4 |

\slurUp r2 <gs, cs e gs>4. ( <e' gs cs e>8 ) |
<cs cs'>1-- ~ |

%bar 62
<gs cs e gs>1 \fermata |
cs1 \fermata |

s1 \ppp |

<e gs cs e>1 \fermata |
<cs cs'>1 \fermata |


}

\score 
{
 \context 
 {
 }
 \new PianoStaff
 <<
  \set PianoStaff.connectArpeggios = ##t
  \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  \new Staff = "up"
  {
   \global
   <<
    \relative c'' \voiceA
    \\
    \relative c'' \voiceB
   >>
  }
   
  \new Dynamics 
  {
   \voiceDynE
  }
    
  \new Staff = "down"
  {
   \global \clef bass
   <<
    \relative c \voiceC
    \\
    \relative c, \voiceD
   >>
  }
 >>
 <<
  \new PianoStaff 
  <<
   \set PianoStaff.instrumentName = #"R.H."
   \set PianoStaff.connectArpeggios = ##t
   \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
   \new Staff
   {
    \global
    \relative c'' \voiceAA
   }
   \new Dynamics
   {
    \voiceDynEE
   }
   \new Staff
   {
    \global
    \relative c' \voiceBB
   }
  >>
  \new PianoStaff 
  <<
   \set PianoStaff.instrumentName = #"L.H."
   \set PianoStaff.connectArpeggios = ##t
   \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
   \new Staff 
   {
    \global
    \clef bass
    \relative c \voiceCC
   }
   \new Dynamics
   {
    \voiceDynEE
   }
   \new Staff 
   {
    \global
    \clef bass
    \relative c, \voiceDD
   }
  >>
 >>
}