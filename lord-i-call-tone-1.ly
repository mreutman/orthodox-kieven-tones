\version "2.18.2"

\relative {
  \key g \major
  \once \override Staff.TimeSignature #'stencil = ##f 
  \cadenzaOn
  a'2( b2) a4 a a a fis g( fis) e1
  \bar "|"
  g2 a a fis1
  \bar "|"
  a2 a a
}
