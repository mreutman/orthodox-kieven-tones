\version "2.18.2"

\header {
  title = "Lord I Call - Tone 1"
  composer = "arr. B. Ledkovsky"
}

melodyNotes = \relative {
  \key g \major
  \override Lyrics.LyricSpace.minimum-distance = #1.5
  \once \override Staff.TimeSignature #'stencil = ##f 
  \cadenzaOn
  % Lord I call
  a'2( b) a4 a a a fis g( fis) e1
  \bar "|"
  % Hear me
  g2 a4 a fis1
  \bar "|"
  % Lord I call
  a2 a4 a a a a g2 fis1
  \bar "|"
  % receive the voice
  g4 fis2 g a g4 g fis2
  \bar "|"
  % when I call
  a2( b) a4 a fis g( fis) e1
  \bar "|"
  % Hear me
  a2( g4 fis) g( a2) g4 fis2( e4 d e1)
  \bar "|"
  % Let my prayer
  a2( b) a4( fis) g fis e2
  \bar "|"
  % in Thy sight
  g4 g g fis g2( a) fis
  \bar "|"
  % and let the lifting
  a4 a2 a4 a a g2 g4 g fis2
  \bar "|"
  % be an evening
  g4 g fis2 g a g fis1
  \bar "|"
  % Hear me
  a2( g4 fis) g( a2) g4 fis2( e4 d e1)
  \bar "|."
}

harmonyNotes = \relative {
  \key g \major
  \once \override Staff.TimeSignature #'stencil = ##f 
  \cadenzaOn
  % Lord I call
  fis'2( g) fis4 fis fis fis d d2 b1
  \bar "|"
  % Hear me
  d2 d4 d d1
  \bar "|"
  % Lord I call
  fis2 fis4 fis fis fis fis d2 d1
  \bar "|"
  % receive the voice
  d4 d2 d d d4 d d2
  \bar "|"
  % when I call
  fis2( g) fis4 fis d d2 b1
  \bar "|"
  % Hear me
  d1 d2. d4 d2.( a4 cis1)
  \bar "|"
  % Let my prayer
  fis2( g) fis4( d) d d b2
  \bar "|"
  % in Thy sight
  d4 d d d d1 d2
  \bar "|"
  % and let the lifting
  fis4 fis2 fis4 fis fis d2 d4 d d2
  \bar "|"
  % be an evening
  d4 d d2 d d d d1
  \bar "|"
  % Hear me
  d1 d2. d4 d2.( a4 cis1)
  \bar "|."
}

bassNotes = \relative {
  \key g \major
  \once \override Staff.TimeSignature #'stencil = ##f 
  \cadenzaOn
  % Lord I call
  d2( g) d4 d d d d g( d) e1
  \bar "|"
  % Hear me
  g2 d4 d d1
  \bar "|"
  % Lord I call
  d2 d4 d d d d g2 d1
  \bar "|"
  % receive the voice
  g4 d2 g2 fis g4 g d2
  \bar "|"
  % when I call
  d2( g) d4 d d g( d) e1
  \bar "|"
  % Hear me
  d1 g4( fis2) g4 d1( a)
  \bar "|"
  % Let my prayer
  d2( g) d g4 d e2
  \bar "|"
  % in Thy sight
  g4 g g d g2( d) d
  \bar "|"
  % and let the lifting
  d4 d2 d4 d d g2 g4 g d2
  \bar "|"
  % be an evening
  g4 g d2 g fis g d1
  \bar "|"
  % Hear me
  d1 g4( fis2) g4 d1( a)
  \bar "|."
}

musicLyrics = \lyricmode {
  Lord I call up- on Thee, hear me.
  Hear me, O Lord!
  Lord I call up- on Thee, hear me;
  re- ceive the voice of my prayer
  when I call up- on Thee.
  Hear me, O Lord.
  Let my prayer a- rise
  in Thy sight as in- cense
  and let the lift- ing up of my hands
  be an eve- ning sac- ri- fice.
  Hear me, O Lord.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \override InstrumentName.self-alignment-X = #RIGHT
      instrumentName = \markup \right-column \fontsize #-4 {
        "Melody"
        "Harmony"
      }
    }
    <<
      \clef "treble"
      \new Voice = "one" {
        \slurUp
        \stemUp
        \melodyNotes
      }
      \new Voice = "two" {
        \slurDown
        \stemDown
        \harmonyNotes
      }
      \new Lyrics \lyricsto "one"  { \musicLyrics }
    >>
    \new Staff \with {
      \override InstrumentName.self-alignment-X = #RIGHT
      instrumentName = \markup \right-column \fontsize #-4 {
        "Bass"
      }
    } <<
      \clef "bass"
      \new Voice = "three" {
        \slurDown
        \stemDown
        \bassNotes
      }
    >>
  >>
}
