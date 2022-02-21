\version "2.22.1"
\include "english.ly"
\header { title = "Arch is the best!" }
\score
{
  <<
    \relative c' { c4 e g c \bar "||" }
    \addlyrics   { Arch is the best! }
  >>
}
