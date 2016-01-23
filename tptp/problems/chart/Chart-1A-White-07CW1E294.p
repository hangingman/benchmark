%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E294
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  170 (  15 equality;  84 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :  134 (   0   ~;   0   |;  18   &; 113   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   18 (   0 sgn;  12   !;   0   ?;   6   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ! [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( ( '3d.is-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_A ) )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_B ) )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_C ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_A ) @ ( '3d.line/2' @ V_O @ V_B ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_B ) @ ( '3d.line/2' @ V_O @ V_C ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_C ) @ ( '3d.line/2' @ V_O @ V_A ) ) )
       => ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ! [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( ( '3d.is-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_A ) )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_B ) )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_C ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_A ) @ ( '3d.line/2' @ V_O @ V_B ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_B ) @ ( '3d.line/2' @ V_O @ V_C ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_C ) @ ( '3d.line/2' @ V_O @ V_A ) ) )
       => ( V_S
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_OH: 'R'] :
      ! [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( ( '3d.is-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_A ) )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_B ) )
          & ( 2
            = ( '3d.distance/2' @ V_O @ V_C ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_A ) @ ( '3d.line/2' @ V_O @ V_B ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_B ) @ ( '3d.line/2' @ V_O @ V_C ) )
          & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_C ) @ ( '3d.line/2' @ V_O @ V_A ) ) )
       => ( V_OH
          = ( '3d.distance/2' @ V_O @ ( '3d.foot-of-perpendicular-line-from-to/2' @ V_O @ ( '3d.plane1/3' @ V_A @ V_B @ V_C ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ 4 @ 3 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_OH_dot_0: 'R'] :
      ( V_OH_dot_0
      = ( '//2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ 3 ) ) ),
    answer_to(p3_question,[])).