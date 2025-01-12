%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Consider the point $P(\frac{1}{2}, \frac{1}{4})$ on the coordinate
%% plane. When $Q({\alpha}, {\alpha}^2)$ and $R({\beta}, {\beta}^2)$ on
%% the parabola $y=x^2$ move so that the points $P$, $Q$, and $R$ form
%% an isosceles triangle taking $QR$ as the base, find the locus of the
%% centroid $G(X, Y)$ of $\triangle PQR$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (   8 equality;  24 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :   60 (   0   ~;   0   |;   7   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_G: '2d.Shape'] :
        ( V_G
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_Gp: '2d.Point'] :
            ? [V_alpha: $real,V_beta: $real,V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
              ( ( V_P
                = ( '2d.point/2' @ ( $quotient @ 1.0 @ 2.0 ) @ ( $quotient @ 1.0 @ 4.0 ) ) )
              & ( V_Q
                = ( '2d.point/2' @ V_alpha @ ( '^/2' @ V_alpha @ 2.0 ) ) )
              & ( V_R
                = ( '2d.point/2' @ V_beta @ ( '^/2' @ V_beta @ 2.0 ) ) )
              & ( '2d.is-triangle/3' @ V_P @ V_Q @ V_R )
              & ( ( '2d.distance/2' @ V_P @ V_Q )
                = ( '2d.distance/2' @ V_P @ V_R ) )
              & ( V_Gp
                = ( '2d.centroid-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_G_dot_0: '2d.Shape'] :
      ( V_G_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p: '2d.Point'] :
            ( ( ( '2d.y-coord/1' @ V_p )
              = ( $difference @ ( $quotient @ 1.0 @ ( $product @ 9.0 @ ( $difference @ ( '2d.x-coord/1' @ V_p ) @ ( $quotient @ 1.0 @ 6.0 ) ) ) ) @ ( $quotient @ 1.0 @ 12.0 ) ) )
            & ( $less @ ( $quotient @ 1.0 @ 6.0 ) @ ( '2d.x-coord/1' @ V_p ) )
            & ( $less @ ( '2d.x-coord/1' @ V_p ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) ),
    answer_to(p_question,[])).

