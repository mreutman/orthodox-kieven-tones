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
  a'2( b) a4 a a a fis g( fis) e1
  \bar "|"
  g2 a a fis1
  \bar "|"
  a2 a4 a a a a g2 fis1
  \bar "|"
  g1 fis2 g a g4 g fis2
  \bar "|"
  a2( b) a4 a fis g( fis) e1
  \bar "|"
  a2( g4 fis) g( a2) g4 fis2( e4 d e1)
  \bar "|"
  a2( b) a4( fis) g fis e2
  \bar "|"
  g4 g g fis g2( a) fis
  \bar "|"
  a4 a2 a4 a a g2 g4 g fis2
  \bar "|"
  g4 g fis2 g a g fis1
  \bar "|"
  a2( g4 fis) g( a2) g4 fis2( e4 d e1)
  \bar "|."
}

harmonyNotes = \relative {
  \key g \major
  \once \override Staff.TimeSignature #'stencil = ##f 
  \cadenzaOn
  fis'2( g) fis4 fis fis fis d d2 b1
  \bar "|"
}

bassNotes = \relative {
  \key g \major
  \once \override Staff.TimeSignature #'stencil = ##f 
  \cadenzaOn
  d2( g) d4 d d d d g( d) e1
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
